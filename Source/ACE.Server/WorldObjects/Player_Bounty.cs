using System;
using System.Collections.Generic;
using System.Linq;
using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;

namespace ACE.Server.WorldObjects
{
    partial class Player
    {
        private Dictionary<uint, BountyContract> BountyContracts = new Dictionary<uint, BountyContract>();

        private bool IsValidBountyTarget
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

        private void InitializeBounties()
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

        private void BountyTick()
        {
            if (!BountyContract.IsBountySystemEnabled)
                return;

            foreach (var contract in BountyContracts.Values)
            {
                contract.UpdateUiEffects(this);
            }
        }

        private bool TryGetBountyContract(uint targetGuid, out BountyContract contract)
        {
            return BountyContracts.TryGetValue(targetGuid, out contract);
        }

        public bool RemoveBountyContract(uint targetGuid)
        {
            return BountyContracts.Remove(targetGuid);
        }

        private bool AddBountyContract(uint targetGuid, BountyContract contract)
        {
            return contract != null && BountyContracts.TryAdd(targetGuid, contract);
        }

        /// <summary>
        /// Called when the player tries to give a bounty contract to the bounty NPC.
        /// Returns true if the contract should be destroyed, false if it should be given back to the player.
        /// </summary>
        private bool CheckBountyContractTurnIns(WorldObject npc, WorldObject item)
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
                    SendDelayedNpcResponse(npc, "This contract is invalid and cannot be turned in. Destroying the contract now.");
                    return true;
                }

                if (contract.IsBountyExpired)
                {
                    var bountyCurrencyWeenie = BountyContract.BountyCurrencyWeenie;
                    var bountyCurrencyReturnAmount = BountyContract.BountyCurrencyReturnAmount;
                    RemoveBountyContract((uint)contract.BountyTargetGuid);
                    SaveBountyExpiration((uint)contract.BountyTargetGuid);
                    SendDelayedNpcResponse(npc, $"Your bounty contract has expired, you will be compensated {bountyCurrencyWeenie.BuildAmountString(bountyCurrencyReturnAmount)} for your time.",
                        () => GiveFromEmote(npc, BountyContract.BountyCurrencyWcid, amount: (int)bountyCurrencyReturnAmount));
                    return true;
                }

                if (!contract.IsBountyCompleted)
                {
                    SendDelayedNpcResponse(npc, "Your bounty contract is not completed yet. Keep hunting!", () => TryCreateForGive(npc, item));
                    return false;
                }

                var bountyTarget = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid));
                if (bountyTarget == null || bountyTarget.IsPendingDeletion || bountyTarget.IsDeleted)
                {
                    SendDelayedNpcResponse(npc, "The bounty target for this contract no longer exists.", () => TryCreateForGive(npc, item));
                    return false;
                }

                var result = UpdateCompletedBountyInformation(bountyTarget, contract);
                HandleBountyQuests(result);
                SaveBountyInformation();

                var rewardAmount = bountyTarget.GetProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityTargetRewardAmount);
                var rewardCurrencyWcid = bountyTarget.GetProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityCurrency);

                // Clear bounty target properties in case they were a high priority target, so they don't get rewarded multiple times and also so they can be selected again as a normal target in the future if they are still eligible.
                bountyTarget.RemoveProperty(ACE.Entity.Enum.Properties.PropertyBool.IsBountyHighPriorityTarget);
                bountyTarget.RemoveProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityTargetRewardAmount);
                bountyTarget.RemoveProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityCurrency);
                bountyTarget.RemoveProperty(ACE.Entity.Enum.Properties.PropertyString.BountyPriorityOwnerName);

                RemoveBountyContract((uint)contract.BountyTargetGuid);
                BountyManager.RemoveHighPriorityTarget((uint)contract.BountyTargetGuid);
                BountyEndTimestamp = Time.GetUnixTime();

                SendDelayedNpcResponse(npc, $"You have successfully turned in your bounty for player \"{bountyTarget.Name}\".");

                if (result.IsHighPriorityTarget && rewardAmount.HasValue && rewardCurrencyWcid.HasValue)
                {
                    var wopCurrencyWeenie = DatabaseManager.World.GetOrThrowCachedWeenie((uint)rewardCurrencyWcid.Value);
                    var rewardedAmountString = wopCurrencyWeenie.BuildAmountString(rewardAmount.Value);
                    SendDelayedNpcResponse(npc, $"This bounty was a high priority target, you have been rewarded {rewardedAmountString}.",
                        () => GiveFromEmote(npc, (uint)rewardCurrencyWcid.Value, amount: rewardAmount.Value));

                    PlayerManager.BroadcastToAll(new GameMessageSystemChat($"{Name} has completed a bounty contract for high priority target {bountyTarget.Name} and received {rewardedAmountString}!", ChatMessageType.WorldBroadcast));
                }

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
        /// Called when the player tries to give a Writ of Pursuit to the bounty NPC.
        /// Returns true if the writ should be destroyed, false if it should be given back to the player.
        /// </summary>
        /// <param name="npc"></param>
        /// <param name="item"></param>
        /// <returns></returns>
        private bool CheckWritOfPursuit(WorldObject npc, WorldObject item)
        {
            if (npc.WeenieClassId != BountyContract.BountyNPCWcid ||
                item.WeenieClassId != BountyContract.WritOfPursuitWcid)
                return true;

            try
            {
                if (!BountyContract.IsBountySystemEnabled)
                {
                    SendDelayedNpcResponse(npc, "Bounties are not enabled on this server.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (!BountyContract.IsWritOfPursuitEnabled)
                {
                    SendDelayedNpcResponse(npc, "Writs of Pursuit are not enabled on this server.");
                    return false;
                }

                if (!IsAllegianceWhitelisted)
                {
                    SendDelayedNpcResponse(npc, "You must be in a whitelisted allegiance to purchase a bounty.", () => TryCreateForGive(npc, item));
                    return false;
                }

                var wopCurrencyWeenie = BountyContract.BountyWopCurrencyWeenie;

                if (!TryParseBountyWrit(item.Inscription, out var targetName, out var rewardAmount))
                {
                    SendDelayedNpcResponse(npc, "Unable to parse your Writ of Refuge, please inscribe it with the player's name and reward amount in this format <Name>:<Amount>.", () => TryCreateForGive(npc, item));
                    SendDelayedNpcResponse(npc, $"The reward amount must be between 1-{wopCurrencyWeenie.GetMaxStackSize()}.");
                    return false;
                }

                var player = PlayerManager.FindByName(targetName);

                if (player == null)
                {
                    SendDelayedNpcResponse(npc, $"You Writ of Pursuit does not contain a valid player name, please inscribe your Writ of Pursuit with a valid name.", () => TryCreateForGive(npc, item));
                    return false;
                }

                if (player.GetProperty(ACE.Entity.Enum.Properties.PropertyBool.IsBountyHighPriorityTarget) == true)
                {
                    var ownerName = player.GetProperty(ACE.Entity.Enum.Properties.PropertyString.BountyPriorityOwnerName);
                    SendDelayedNpcResponse(npc, $"The player \"{targetName}\" is already a high priority target for {ownerName}, you must wait until someone completes a bounty for them.", () => TryCreateForGive(npc, item));
                    return false;
                }

                var wopRewardsInventoryCount = GetNumInventoryItemsOfWCID(BountyContract.BountyWopCurrencyWcid);
                var wopRewardsString = wopCurrencyWeenie.BuildAmountString(rewardAmount);

                if (wopRewardsInventoryCount < rewardAmount)
                {
                    SendDelayedNpcResponse(npc,
                        $"You do not have enough {wopCurrencyWeenie.GetPluralName()} to turn in your Writ of Pursuit. You have {wopRewardsInventoryCount} in your inventory but your Writ of Pursuit requires {rewardAmount}.",
                        () => TryCreateForGive(npc, item));
                    return false;
                }

                if (!TryConsumeFromInventoryWithNetworking(BountyContract.BountyWopCurrencyWcid, rewardAmount))
                {
                    throw new Exception($"Failed to {wopCurrencyWeenie.GetPluralName()} for Writ of Pursuit for player {Name} with Guid: {Guid.Full} with inventory that contains {wopCurrencyWeenie.BuildAmountString(wopRewardsInventoryCount)}.");
                }

                player.SetProperty(ACE.Entity.Enum.Properties.PropertyBool.IsBountyHighPriorityTarget, true);
                player.SetProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityTargetRewardAmount, rewardAmount);
                player.SetProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityCurrency, (int)BountyContract.BountyWopCurrencyWcid);
                player.SetProperty(ACE.Entity.Enum.Properties.PropertyString.BountyPriorityOwnerName, Name);
                BountyManager.AddHighPriorityTarget(player.Guid.Full, rewardAmount, BountyContract.BountyWopCurrencyWcid, player.Name, Name);

                SendDelayedNpcResponse(npc, $"You have successfully turned in your Writ of Pursuit for player \"{player.Name}\" with a reward amount of {wopRewardsString}.");
                return true;
            }
            catch (Exception ex)
            {
                log.Error($"Error in CheckWritOfPursuit for player {Name} (Guid: {Guid.Full}): ", ex);
                SendDelayedMessage("An error occurred while trying to turn in a Writ of Pursuit. Please notify an admin.", ChatMessageType.System);
                return false;        
            }
        }

        private bool TryParseBountyWrit(string inscription, out string playerName, out int reward)
        {
            playerName = null;
            reward = 0;
            var wopCurrencyWeenie = BountyContract.BountyWopCurrencyWeenie;

            if (string.IsNullOrWhiteSpace(inscription))
                return false;

            var parts = inscription.Split(':');

            if (parts.Length != 2)
                return false;

            playerName = parts[0].Trim();

            if (string.IsNullOrWhiteSpace(playerName))
                return false;

            if (!int.TryParse(parts[1].Trim(), out reward))
                return false;

            if (reward <= 0)
                return false;

            if (reward > wopCurrencyWeenie.GetMaxStackSize()) // cap it
                return false;

            if (playerName.Length > 32)
                return false;

            return true;
        }

        /// <summary>
        /// Handles purchasing a new bounty contract using a token.
        /// Returns true if the token should be destroyed, false if it should be given back to the player.
        /// </summary>
        private bool CheckBountyPurchase(WorldObject npc, WorldObject item)
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
                    !IsSameAllegiance(p) &&
                    IsDifferentIPAddress(p) &&
                    !IsOnHardCooldown(p)).ToList();

                if (eligibleTargets.Count == 0)
                {
                    SendDelayedNpcResponse(npc, "There are currently no bounty players available at this time.", () => TryCreateForGive(npc, item));
                    return false;
                }

                var bountyTarget = SelectRandomWeightedTarget(eligibleTargets);
                var contract = WorldObjectFactory.CreateNewWorldObject(BountyContract.BountyContractWcid) as BountyContract;

                contract.BountyOwnerGuid = (int?)Guid.Full;
                contract.BountyOwnerName = Name;
                contract.BountyTargetGuid = (int?)bountyTarget.Guid.Full;
                contract.BountyTargetName = bountyTarget.Name;
                contract.BountyCreationTimestamp = Time.GetUnixTime();
                contract.IsBountyCompleted = false;
                contract.Name = $"Bounty Contract: {bountyTarget.Name}";
                contract.UpdateUiEffects(this);

                SendDelayedNpcResponse(npc, $"A new bounty for player \"{bountyTarget.Name}\" has been assigned to you. A bounty contract has been added to your inventory.",
                    action: () =>
                    {
                        AddBountyContract(bountyTarget.Guid.Full, contract);

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

        private Player SelectRandomWeightedTarget(List<Player> players)
        {
            var weightedPlayers = new List<(Player player, double weight)>();
            double totalWeight = 0;

            foreach (var p in players)
            {
                var w = GetBountyWeight(p);
                totalWeight += w;
                weightedPlayers.Add((p, w));
            }

            if (totalWeight <= 0)
                return players[ThreadSafeRandom.Next(0, players.Count - 1)];

            double roll = ThreadSafeRandom.Next(0f, (float)totalWeight);

            double cumulative = 0;

            foreach (var entry in weightedPlayers)
            {
                cumulative += entry.weight;

                if (roll <= cumulative)
                    return entry.player;
            }

            return weightedPlayers.Last().player;
        }

        private double GetBountyWeight(Player p)
        {
            double weight = 1;

            if (p.IsBountyHighPriorityTarget)
            {
                weight *= 2; 
            }

            if (p.BountyPriorityTargetRewardAmount.HasValue)
            {
                var bountyWeightExponent = PropertyManager.GetDouble("bounty_weight_exponent").Item;
                var bountyWeightMultiplier = PropertyManager.GetDouble("bounty_weight_multiplier").Item;
                bountyWeightMultiplier = Math.Max(0, bountyWeightMultiplier);

                var wopCurrencyWeenie = BountyContract.BountyWopCurrencyWeenie;
                var rewardAmount = p.BountyPriorityTargetRewardAmount.Value;
                var maxStack = wopCurrencyWeenie.GetMaxStackSize();
                if (maxStack <= 0)
                    maxStack = 1;
                var normalized = rewardAmount / (double)maxStack;
                normalized = Math.Min(normalized, 1.0);

                if (bountyWeightExponent <= 0)
                    bountyWeightExponent = 0.75;

                bountyWeightExponent = Math.Clamp(bountyWeightExponent, 0.25, 1.0);
                weight += Math.Pow(normalized, bountyWeightExponent) * bountyWeightMultiplier;
            }

            return weight;
        }

        /// <summary>
        /// Called when a player is killed to check if they are a bounty target and mark the corresponding contract as completed if so.
        /// </summary>
        /// <param name="bountyTargetGuid"></param>
        /// <returns></returns>
        private bool TryMarkBountyComplete(uint bountyTargetGuid)
        {
            if (!BountyContracts.TryGetValue(bountyTargetGuid, out var contract))
                return false;

            if (!contract.BountyTargetGuid.HasValue)
                return false;

            if (contract.IsBountyExpired)
                return false;

            if (contract.IsBountyCompleted)
                return false;

            var player = PlayerManager.FindByGuid(new ObjectGuid((uint)contract.BountyTargetGuid));

            if (player == null)
                return false;

            contract.IsBountyCompleted = true;
            contract.UpdateUiEffects(this);
            SendBountyMessage($"You have completed your bounty contract for {player.Name}! Turn in the contract to the Bounty Collector for your rewards!");
            return true;
        }

        private void CheckVisibleBounties()
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

        public void SendBountyMessage(string message, Action action = null)
        {
            SendDelayedMessage($"[BOUNTY] {message}", ChatMessageType.System, 0, action);
        }

        private bool HasCooldownPenaltyExpiredForHunter()
        {
            if (!BountyEndTimestamp.HasValue)
                return true;

            var bountyCooldownExpirationDuration = PropertyManager.GetLong("bounty_cooldown_expiration_time").Item;
            return DateTime.UtcNow - Time.GetDateTimeFromTimestamp(BountyEndTimestamp.Value) > TimeSpan.FromMinutes(bountyCooldownExpirationDuration);
        }

        private bool IsOnHardCooldown(Player p)
        {
            if (!HasCooldownPenaltyExpiredForHunter())
                return true;

            var cooldown = GetBountyCooldown(p.Guid.Full);

            if (cooldown == -1)
                return false;

            var durationMinutes = PropertyManager.GetLong("bounty_cooldown_target_expiration_time").Item;

            var hardCooldownMinutes = durationMinutes * 0.2; // 20%

            var elapsed = DateTime.UtcNow - Time.GetDateTimeFromTimestamp(cooldown);

            return elapsed.TotalMinutes < hardCooldownMinutes;
        }

        private void HandleBountyQuests(BountyCompletionResult result)
        {
            // any bounty
            CompletePkQuestTask("BOUNTY_ANY_1", 1);
            CompletePkQuestTask("BOUNTY_ANY_5", 1);
            CompletePkQuestTask("BOUNTY_ANY_10", 1);

            // unique targets
            if (result.IsNewUniqueTarget)
            {
                CompletePkQuestTask("BOUNTY_UNIQUE_3", 1);
                CompletePkQuestTask("BOUNTY_UNIQUE_5", 1);
            }

            // repeat kills (same player)
            if (result.RepeatCount == 3)
                CompletePkQuestTask("BOUNTY_REPEAT_3", 1);

            if (result.RepeatCount == 5)
                CompletePkQuestTask("BOUNTY_REPEAT_5", 1);

            // speed-based
            if (result.CountLast30Min >= 2) CompletePkQuestTask("BOUNTY_FAST_2", 1);
            if (result.CountLast30Min >= 3) CompletePkQuestTask("BOUNTY_FAST_3", 1);
            if (result.CountLast60Min >= 8) CompletePkQuestTask("BOUNTY_FAST_8", 1);
            if (result.CountLast90Min >= 12) CompletePkQuestTask("BOUNTY_FAST_12", 1);

            // high priority target
            if (result.IsHighPriorityTarget)
            {
                CompletePkQuestTask("BOUNTY_PRIORITY_1", 1);
                CompletePkQuestTask("BOUNTY_PRIORITY_3", 1);
            }
        }
    }
}
