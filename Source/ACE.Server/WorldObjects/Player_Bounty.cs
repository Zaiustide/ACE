using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using Newtonsoft.Json.Linq;

namespace ACE.Server.WorldObjects
{
    partial class Player
    {
        public HashSet<uint> ActiveBounties = new HashSet<uint>();

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

                return
                    !IsAdmin &&
                    loggedOut &&
                    validLocation &&
                    IsAllegianceWhitelisted &&
                    IsPK;
            }
        }

        /*public void BountyTick()
        {
            try
            {
                if (!BountyContract.IsBountySystemEnabled)
                    return;

                if (BountyTargetGuid == null)
                    return;

                if (BountyCompleted)
                    return;

                var bountyTarget = PlayerManager.GetOnlinePlayer(new ACE.Entity.ObjectGuid((uint)BountyTargetGuid));

                //if (bountyTarget?.IsValidBountyTarget == false)
                    //RefundBounty();
            }
            catch (Exception ex)
            {
                log.Error("Error in BountyTick: ", ex);
            }
        }*/

        public enum BountyResult
        {
            Success,
            Failure,
            Ignore
        }

        public BountyResult CheckBountyContractTurnIns(WorldObject npc, WorldObject item)
        {
            if (!BountyContract.IsBountySystemEnabled)
                return BountyResult.Failure;

            try
            {
                if (npc.WeenieClassId == BountyContract.BountyNPCWcid && item is BountyContract contract)
                {
                    var bountyTarget = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid));

                    if (bountyTarget == null)
                    {
                        SendDelayedMessage($"The bounty target for this contract no longer exists, terminating contract.");
                        return BountyResult.Ignore;
                    }

                    if (contract.IsBountyExpired)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"Your bounty contract has expired, take a phial as some compensation for your time.\"", ChatMessageType.Tell);
                        ActiveBounties.Remove((uint)contract.BountyTargetGuid);
                        // give player a phial
                        return BountyResult.Ignore;
                    }

                    if (!contract.BountyCompleted)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"Your bounty contract is not completed yet. Keep hunting!\"", ChatMessageType.Tell);
                        return BountyResult.Failure;
                    }

                    var bountyName = bountyTarget.Name;
                    BountyEndTimeStamp = (int?)Time.GetUnixTime();
                    HandleBountyRewards(bountyTarget);
                    ActiveBounties.Remove((uint)contract.BountyTargetGuid);
                    SendDelayedMessage($"{npc.Name} tells you, \"You have successfully turned in your bounty for player \"{bountyName}\".\"", ChatMessageType.Tell);

                    return BountyResult.Success;

                } else
                {
                    return BountyResult.Ignore;
                }
            } catch (Exception ex)
            {
                // Possibly cleanup rewards if they were given but an error occurred after that point?
                log.Error("Error in CheckBountyTurnIns: ", ex);
                SendDelayedMessage($"An error occurred while trying to turn in a bounty. Please notify an admin. The bounty will be refunded.", ChatMessageType.System);
                return BountyResult.Failure;
            }
        }

        public BountyResult CheckBountyPurchase(WorldObject npc, WorldObject item)
        {
            if (!BountyContract.IsBountySystemEnabled)
                return BountyResult.Failure;

            try
            {
                if (npc.WeenieClassId == BountyContract.BountyNPCWcid && item.WeenieClassId == BountyContract.BountyPurchaseTokenWcid)
                {
                    if (!IsAllegianceWhitelisted)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"You must be in a whitelisted allegiance to purchase a bounty.\"", ChatMessageType.Tell);
                        return BountyResult.Failure;
                    }


                    var enemyPlayers = PlayerManager.GetAllOnline().Where(p =>
                         p != null &&
                         p.Guid.Full != Guid.Full &&
                         p.IsValidBountyTarget &&
                         !ActiveBounties.Contains(p.Guid.Full) &&
                         !Player.IsSameAllegiance(p, this) &&
                         !Player.HasBountyCooldown(this, p)).ToList();

                    if (enemyPlayers.Count <= 0)
                    {
                        SendDelayedMessage($"{npc.Name} tells you, \"There are currently no bounty players available at this time.\"", ChatMessageType.Tell);
                        return BountyResult.Failure;
                    }

                    var roll = ThreadSafeRandom.Next(0, enemyPlayers.Count - 1);
                    var bountyTarget = enemyPlayers[roll];
                    var contract = WorldObjectFactory.CreateNewWorldObject(BountyContract.BountyContractWcid) as BountyContract;
                    contract.BountyTargetGuid = (int?)bountyTarget.Guid.Full;
                    contract.BountyCreationTimeStamp = (int)Time.GetUnixTime();
                    contract.BountyCompleted = false;
                    contract.Name = $"Bounty Contract: {bountyTarget.Name}";
                    if (!TryCreateInInventoryWithNetworking(contract))
                        throw new Exception("Failed to add bounty contract to inventory after purchase.");

                    ActiveBounties.Add((uint)bountyTarget.Guid.Full);
                    SendDelayedMessage($"{npc.Name} tells you, \"A new bounty for player \"{bountyTarget.Name}\" has been assigned to you. A bounty contract has been added to your inventory.\"", ChatMessageType.Tell);

                    return BountyResult.Success;
                } else
                {
                    return BountyResult.Ignore;
                }
            }
            catch (Exception ex)
            {
                log.Error("Error in CheckBountyPurchase: ", ex);
                SendDelayedMessage($"An error occurred while trying to assign a bounty target. Please notify an admin.", ChatMessageType.System);
                return BountyResult.Failure;
            }
        }

        public void SendDelayedMessage(string message, ChatMessageType type = ChatMessageType.System, double delaySeconds = 0.5)
        {
            var actionChain = new ActionChain();
            actionChain.AddDelaySeconds(delaySeconds);
            actionChain.AddAction(this, () =>
            {
                Session.Network.EnqueueSend(new GameMessageSystemChat(message, type));
            });
            actionChain.EnqueueChain();
        }

        private static bool HasBountyCooldown(Player bountyHunter, Player bountyTarget)
        {
            // TODO: implement cooldowns between turning in bounties on the same target, and between turning in multiple bounties in a row on different targets.
            return false;
        }

        private void HandleBountyRewards(IPlayer bountyTarget)
        {
            // TODO: implement configurable rewards for turning in bounties
            //TryCreateInInventoryWithNetworking(rewardItem, 1);
        }
    }
}
