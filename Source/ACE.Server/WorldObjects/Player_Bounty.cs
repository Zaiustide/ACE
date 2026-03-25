using System;
using System.Collections.Generic;
using System.Linq;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;

namespace ACE.Server.WorldObjects
{
    partial class Player
    {
        private Dictionary<uint, BountyContract> BountyContracts = new Dictionary<uint, BountyContract>();

        public bool IsValidBountyTarget
        {
            get
            {
                var validLocation = (CurrentLandblock?.IsBountyLocation ?? false);
                var validLogout = !IsLoggingOut;

                if (PropertyManager.GetBool("bounty_allow_all_locations").Item)
                    validLocation = true;
                if (PropertyManager.GetBool("bounty_allow_logged_out").Item)
                    validLogout = true;

                var minimumPlayerLevel = PropertyManager.GetLong("bounty_minimum_player_level").Item;

                return
                    !IsAdmin &&
                    validLogout &&
                    validLocation &&
                    Level >= minimumPlayerLevel &&
                    IsAllegianceWhitelisted &&
                    IsPK;
            }
        }

        public void InitializeBounties()
        {
            BountyContracts.Clear();

            if (!BountyContract.IsBountySystemEnabled)
                return;

            var bountyContracts = GetInventoryItemsOfWCID(BountyContract.BountyContractWcid)
                .OfType<BountyContract>();

            foreach (var contract in bountyContracts)
            {
                if (contract.BountyTargetGuid.HasValue)
                {
                    AddBountyContract((uint)contract.BountyTargetGuid.Value, contract);
                }
            }
        }

        /// <summary>
        /// Called when the player tries to give a bounty contract to the bounty NPC.
        /// Returns true if the contract should be destroyed, false if it should be given back to the player.
        /// </summary>
        public bool CheckBountyContractTurnIns(WorldObject npc, WorldObject item)
        {
            if (npc.WeenieClassId != BountyContract.BountyNPCWcid || item is not BountyContract contract)
                return true;

            try
            {
                if (!BountyContract.IsBountySystemEnabled)
                {
                    SendDelayedNpcResponse(npc, "Bounties are not enabled on this server.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (!contract.BountyTargetGuid.HasValue)
                {
                    SendDelayedNpcResponse(npc, "This contract is invalid and cannot be turned in. Destroying the contract now.", () => TryCreateForGive(npc, item));
                    return true;
                }

                var bountyTarget = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid));
                if (bountyTarget == null || bountyTarget.IsPendingDeletion || bountyTarget.IsDeleted)
                {
                    SendDelayedNpcResponse(npc, "The bounty target for this contract no longer exists.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (contract.IsBountyExpired)
                {
                    RemoveBountyContract((uint)contract.BountyTargetGuid);
                    SendDelayedNpcResponse(npc, "Your bounty contract has expired, take a phial as some compensation for your time.",
                        () => GiveFromEmote(npc, 1000003));
                    return true;
                }

                if (!contract.BountyCompleted)
                {
                    SendDelayedNpcResponse(npc, "Your bounty contract is not completed yet. Keep hunting!", () => TryCreateForGive(npc, item));
                    return false;
                }

                var bountyName = bountyTarget.Name;
                BountyEndTimeStamp = (int?)Time.GetUnixTime();

                HandleBountyRewards(npc, bountyTarget);
                RemoveBountyContract((uint)contract.BountyTargetGuid);

                SendDelayedMessage($"{npc.Name} tells you, \"You have successfully turned in your bounty for player \"{bountyName}\".\"", ChatMessageType.Tell);

                return true;
            }
            catch (Exception ex)
            {
                log.Error($"Error in CheckBountyContractTurnIns for player {Name} (Guid: {Guid.Full}): ", ex);
                SendDelayedMessage("An error occurred while processing the bounty turn-in. Please notify an admin.", ChatMessageType.System);
                return true;        // Destroy the contract just in case
            }
        }

        /// <summary>
        /// Handles purchasing a new bounty contract using a token.
        /// Returns true if the token should be destroyed, false if it should be given back to the player.
        /// </summary>
        public bool CheckBountyPurchase(WorldObject npc, WorldObject item)
        {
            if (npc.WeenieClassId != BountyContract.BountyNPCWcid ||
                item.WeenieClassId != BountyContract.BountyPurchaseTokenWcid)
                return true;

            try
            {
                if (!BountyContract.IsBountySystemEnabled)
                {
                    SendDelayedNpcResponse(npc, "Bounties are not enabled on this server.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (!IsAllegianceWhitelisted)
                {
                    SendDelayedNpcResponse(npc, "You must be in a whitelisted allegiance to purchase a bounty.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (BountyContracts.Count >= BountyContract.MaxBountyContracts)
                {
                    SendDelayedNpcResponse(npc,
                        $"You have reached the maximum number of active bounty contracts ({BountyContract.MaxBountyContracts}). " +
                        "Please complete your current bounties before purchasing new ones.",
                        () => TryCreateForGive(npc, item));
                    return false;
                }

                var eligibleTargets = PlayerManager.GetAllOnline().Where(p =>
                    p != null &&
                    p.Guid.Full != Guid.Full &&
                    p.IsValidBountyTarget &&
                    !TryGetBountyContract(p.Guid.Full, out _) &&
                    !IsSameAllegiance(p, this) &&
                    !HasBountyCooldown(this, p)).ToList();

                if (eligibleTargets.Count == 0)
                {
                    SendDelayedNpcResponse(npc, "There are currently no bounty players available at this time.", () => TryCreateForGive(npc, item));
                    return false;
                }

                var targetIndex = ThreadSafeRandom.Next(0, eligibleTargets.Count - 1);
                var bountyTarget = eligibleTargets[targetIndex];
                var contract = WorldObjectFactory.CreateNewWorldObject(BountyContract.BountyContractWcid) as BountyContract;

                contract.BountyOwnerGuid = (int?)Guid.Full;
                contract.BountyTargetGuid = (int?)bountyTarget.Guid.Full;
                contract.BountyCreationTimeStamp = (int?)Time.GetUnixTime();
                contract.BountyCompleted = false;
                contract.Name = $"Bounty Contract: {bountyTarget.Name}";

                AddBountyContract(bountyTarget.Guid.Full, contract);

                SendDelayedNpcResponse(npc, $"A new bounty for player \"{bountyTarget.Name}\" has been assigned to you. A bounty contract has been added to your inventory.",
                    action: () =>
                    {
                        if (!TryCreateForGive(npc, contract))
                        {
                            RemoveBountyContract((uint)contract.BountyTargetGuid.Value);
                            contract.Destroy();
                        }
                    });

                return true;        
            }
            catch (Exception ex)
            {
                log.Error($"Error in CheckBountyPurchase for player {Name} (Guid: {Guid.Full}): ", ex);
                SendDelayedMessage("An error occurred while trying to purchase a bounty. Please notify an admin.", ChatMessageType.System);
                return true;        // Destroy the token just in case, so no player ends up with a contract and also a free token
            }
        }

        public bool TryCompleteBounty(uint bountyTargetGuid)
        {
            if (!BountyContracts.TryGetValue(bountyTargetGuid, out var contract))
                return false;

            if (!contract.BountyTargetGuid.HasValue)
                return false;

            var name = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid))?.Name ?? "Unknown";

            contract.BountyCompleted = true;
            SendDelayedMessage($"You have completed your bounty contract for {name}! Turn in the contract to the Bounty Collector for your rewards!");
            return true;
        }

        public void CheckBounties()
        {
            var visiblePlayers = PhysicsObj.ObjMaint.GetVisibleObjectsValuesOfTypePlayer();

            foreach (var player in visiblePlayers)
            {
                if (player.Guid.Full == Guid.Full)
                    continue;

                if (player.TryGetBountyContract(Guid.Full, out _))
                    UpdatePKTimer();
            }
        }
        public bool TryGetBountyContract(uint targetGuid, out BountyContract contract)
        {
            return BountyContracts.TryGetValue(targetGuid, out contract);
        }

        public bool RemoveBountyContract(uint targetGuid) => BountyContracts.Remove(targetGuid);

        private bool AddBountyContract(uint targetGuid, BountyContract contract)
            => contract != null && BountyContracts.TryAdd(targetGuid, contract);

        private void SendDelayedNpcResponse(WorldObject npc, string message, Action action = null)
        {
            SendDelayedMessage($"{npc.Name} tells you, \"{message}\"", ChatMessageType.Tell, action: action);
        }

        public void SendDelayedMessage(string message, ChatMessageType type = ChatMessageType.System, double delaySeconds = 0.5, Action action = null)
        {
            var actionChain = new ActionChain();
            actionChain.AddDelaySeconds(delaySeconds);
            actionChain.AddAction(this, () =>
            {
                Session.Network.EnqueueSend(new GameMessageSystemChat(message, type));
                action?.Invoke();
            });
            actionChain.EnqueueChain();
        }

        private static bool HasBountyCooldown(Player bountyHunter, Player bountyTarget)
        {
            // TODO: implement cooldowns between turning in bounties on the same target, and between turning in multiple bounties in a row on different targets.
            return false;
        }

        private void HandleBountyRewards(WorldObject npc, IPlayer bountyTarget)
        {
            // TODO: implement configurable rewards for turning in bounties
            //TryCreateInInventoryWithNetworking(rewardItem, 1);
        }
    }
}
