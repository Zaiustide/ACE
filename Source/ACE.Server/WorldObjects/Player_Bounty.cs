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
        private Dictionary<uint, BountyContract> ActiveBounties = new Dictionary<uint, BountyContract>();

        public bool IsValidBountyTarget
        {
            get
            {
                var validLocation = (CurrentLandblock?.IsBountyLocation ?? false);
                var loggedOut = !IsLoggingOut;

                if (PropertyManager.GetBool("bounty_allow_all_locations").Item)
                    validLocation = true;
                if (PropertyManager.GetBool("bounty_allow_logged_out").Item)
                    loggedOut = true;

                var minimumPlayerLevel = PropertyManager.GetLong("bounty_minimum_player_level").Item;

                return
                    !IsAdmin &&
                    loggedOut &&
                    validLocation &&
                    Level >= minimumPlayerLevel &&
                    IsAllegianceWhitelisted &&
                    IsPK;
            }
        }

        public enum BountyResult
        {
            Success,
            Failure,
            Ignore
        }

        public void InitializeBounties()
        {
            var bountyContracts = GetInventoryItemsOfWCID(BountyContract.BountyContractWcid).OfType<BountyContract>();
            foreach (var contract in bountyContracts)
                if (!contract.BountyCompleted || !contract.IsBountyExpired)
                ActiveBounties.Add((uint)contract.BountyTargetGuid.Value, contract);
        } 

        public void BountyTick()
        {
            if (!BountyContract.IsBountySystemEnabled)
                return;

            foreach (var bounty in ActiveBounties.Values.ToList())
            {
                if (bounty.IsBountyExpired || bounty.BountyCompleted)
                {
                    RemoveActiveBounty((uint)bounty.BountyTargetGuid.Value);
                }
            }
        }

        // Return true to indicate the item should be deleted by the give action, false if not
        public bool CheckBountyContractTurnIns(WorldObject npc, WorldObject item)
        {
            try
            {
                if (npc.WeenieClassId == BountyContract.BountyNPCWcid && item is BountyContract contract)
                {
                    if (!BountyContract.IsBountySystemEnabled)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"Bounties are not enabled on this server.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    var bountyTarget = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid));

                    if (bountyTarget == null || bountyTarget.IsPendingDeletion || bountyTarget.IsDeleted)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"The bounty target for this contract no longer exists.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    if (contract.IsBountyExpired)
                    {
                        RemoveActiveBounty((uint)contract.BountyTargetGuid);
                        SendDelayedMessage($"{npc.Name} tells you, \"Your bounty contract has expired, take a phial as some compensation for your time.\"", ChatMessageType.Tell, action: () =>
                        {
                            GiveFromEmote(npc, 1000003);
                        });
                        return true;
                    }

                    if (!contract.BountyCompleted)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"Your bounty contract is not completed yet. Keep hunting!\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    var bountyName = bountyTarget.Name;
                    BountyEndTimeStamp = (int?)Time.GetUnixTime();
                    HandleBountyRewards(npc, bountyTarget);
                    RemoveActiveBounty((uint)contract.BountyTargetGuid);
                    SendDelayedMessage($"{npc.Name} tells you, \"You have successfully turned in your bounty for player \"{bountyName}\".\"", ChatMessageType.Tell);

                    return true;
                }

                return true;
            } catch (Exception ex)
            {
                log.Error("Error in CheckBountyTurnIns: ", ex);
                SendDelayedMessage($"An error occurred while trying to turn in a bounty. Please notify an admin.", ChatMessageType.System);
                return true;
            }
        }

        // Return true to indicate the item should be deleted by the give action, false if not
        public bool CheckBountyPurchase(WorldObject npc, WorldObject item)
        {
            try
            {
                if (npc.WeenieClassId == BountyContract.BountyNPCWcid && item.WeenieClassId == BountyContract.BountyPurchaseTokenWcid)
                {
                    if (!BountyContract.IsBountySystemEnabled)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"Bounties are not enabled on this server.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    if (!IsAllegianceWhitelisted)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"You must be in a whitelisted allegiance to purchase a bounty.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    var enemyPlayers = PlayerManager.GetAllOnline().Where(p =>
                         p != null &&
                         p.Guid.Full != Guid.Full &&
                         p.IsValidBountyTarget &&
                         !ActiveBounties.ContainsKey(p.Guid.Full) &&
                         !Player.IsSameAllegiance(p, this) &&
                         !Player.HasBountyCooldown(this, p)).ToList();

                    if (enemyPlayers.Count <= 0)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"There are currently no bounty players available at this time.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    var contracts = GetInventoryItemsOfWCID(BountyContract.BountyContractWcid).OfType<BountyContract>().ToList();

                    if (contracts.Count >= BountyContract.MaxBountyContracts)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"You have reached the maximum number of active bounty contracts ({BountyContract.MaxBountyContracts}). Please complete your current bounties before purchasing new ones.\"", ChatMessageType.Tell, action: () =>
                        {
                            TryCreateForGive(npc, item);
                        });
                        return false;
                    }

                    var roll = ThreadSafeRandom.Next(0, enemyPlayers.Count - 1);
                    var bountyTarget = enemyPlayers[roll];
                    var contract = WorldObjectFactory.CreateNewWorldObject(BountyContract.BountyContractWcid) as BountyContract;
                    contract.BountyOwnerGuid = (int?)Guid.Full;
                    contract.BountyTargetGuid = (int?)bountyTarget.Guid.Full;
                    contract.BountyCreationTimeStamp = (int)Time.GetUnixTime();
                    contract.BountyCompleted = false;
                    contract.Name = $"Bounty Contract: {bountyTarget.Name}";

                    ActiveBounties.Add((uint)bountyTarget.Guid.Full, contract);
                    SendDelayedMessage($"{npc.Name} tells you, \"A new bounty for player \"{bountyTarget.Name}\" has been assigned to you. A bounty contract has been added to your inventory.\"", ChatMessageType.Tell, action: () =>
                    {
                        if (!TryCreateForGive(npc, contract))
                        {
                            RemoveActiveBounty((uint)contract.BountyTargetGuid.Value);
                            contract.Destroy();
                        }
                    });

                    return true;
                }

                return true;
            }
            catch (Exception ex)
            {
                log.Error("Error in CheckBountyPurchase: ", ex);
                SendDelayedMessage($"An error occurred while trying to assign a bounty target. Please notify an admin.", ChatMessageType.System);
                return true;
            }
        }

        public void CompleteBounty(uint bountyTargetGuid)
        {
            var contract = GetInventoryItemsOfWCID(BountyContract.BountyContractWcid).OfType<BountyContract>().FirstOrDefault(c => c.BountyTargetGuid == bountyTargetGuid);
            if (contract != null)
            {
                var name = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid))?.Name ?? "Unknown";
                contract.BountyCompleted = true;
                RemoveActiveBounty(bountyTargetGuid);
                SendDelayedMessage($"You have completed your bounty contract for {name}!");
            }
        }

        public void CheckBounties()
        {
            var visiblePlayers = PhysicsObj.ObjMaint.GetVisibleObjectsValuesOfTypePlayer();

            foreach (var player in visiblePlayers)
            {
                if (player.Guid.Full == Guid.Full)
                    continue;

                if (player.ActiveBounties.ContainsKey(Guid.Full))
                    UpdatePKTimer();
            }
        }

        public void RemoveActiveBounty(uint targetGuid)
        {
            ActiveBounties.Remove(targetGuid);
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
