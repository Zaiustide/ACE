using System;
using ACE.Common;
using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Entity.Bounties;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using log4net;

namespace ACE.Server.WorldObjects
{
    public partial class BountyContract : WorldObject
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static readonly uint BountyNPCWcid = 3000381; // Bounty NPC wcid
        public static readonly uint BountyPurchaseTokenWcid = 60000213; // Bounty Purchase Token wcid
        public static readonly uint BountyContractWcid = 60000214; // Bounty Contract wcid
        public static readonly uint WritOfPursuitWcid = 60000215; // Bounty Writ of Pursuit wcid
        public static uint BountyCurrencyWcid => (uint)PropertyManager.GetLong("bounty_currency_wcid").Item;
        public static uint BountyCurrencyReturnAmount => (uint)PropertyManager.GetLong("bounty_currency_return_amount").Item;
        public static Weenie BountyCurrencyWeenie => DatabaseManager.World.GetOrThrowCachedWeenie(BountyCurrencyWcid);
        public static uint BountyWopCurrencyWcid => (uint)PropertyManager.GetLong("bounty_wop_currency_wcid").Item;
        public static Weenie BountyWopCurrencyWeenie => DatabaseManager.World.GetOrThrowCachedWeenie(BountyWopCurrencyWcid);
        public static uint BountyLocationCurrencyWcid => (uint)PropertyManager.GetLong("bounty_location_currency_wcid").Item;
        public static Weenie BountyLocationCurrencyWeenie => DatabaseManager.World.GetOrThrowCachedWeenie(BountyLocationCurrencyWcid);

        public bool IsActiveState => ContractState == BountyContractState.Active;
        public bool IsCompletedState => ContractState == BountyContractState.Completed;
        public bool IsExpiredState => ContractState == BountyContractState.Expired;
        public bool IsPendingState => ContractState == BountyContractState.Pending;

        public bool IsInvalidContract => IsDestroyed || IsPendingState || !BountyTargetGuid.HasValue;

        public enum BountyContractState
        {
            Pending = 0,
            Active = 1,
            Completed = 2,
            Expired = 3
        }

        public BountyContractState ContractState
        {
            get => (BountyContractState)BountyContractStateRaw;
            set => BountyContractStateRaw = (int)value;
        }

        public void SetState(BountyContractState newState, Player owner = null)
        {
            if (ContractState == newState)
                return;

            if (IsExpiredState)
                return;

            if (!IsValidTransition(ContractState, newState))
            {
                var message = $"Invalid bounty state transition: {ContractState} → {newState} for contract {Name} ({Guid.Full})";
                var localServer = PropertyManager.GetBool("local_server").Item;
                if (localServer)
                    throw new InvalidOperationException(message);
                else
                    log.Error(message);
                return;
            }

            ContractState = newState;

            switch (newState)
            {
                case BountyContractState.Completed:
                    SetUiEffect(ACE.Entity.Enum.UiEffects.Frost, owner,
                        message: $"Your contract for {BountyTargetName} has been completed!");
                    break;

                case BountyContractState.Expired:
                    SetUiEffect(ACE.Entity.Enum.UiEffects.Undef, owner,
                        message: $"Your contract for {BountyTargetName} has expired.");
                    break;
            }
        }

        private bool IsValidTransition(BountyContractState from, BountyContractState to)
        {
            return (from, to) switch
            {
                (BountyContractState.Pending, BountyContractState.Active) => true,
                (BountyContractState.Active, BountyContractState.Completed) => true,
                (BountyContractState.Active, BountyContractState.Expired) => true,
                (BountyContractState.Completed, BountyContractState.Expired) => true,
                _ => false
            };
        }

        public IPlayer BountyTarget
        {
            get
            {
                if (!BountyTargetGuid.HasValue)
                    throw new InvalidOperationException("BountyTargetGuid is missing");

                return PlayerManager.FindByGuid(new ObjectGuid((uint)BountyTargetGuid.Value));
            }
        }

        public BountyContract(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
        {
            SetEphemeralValues();
        }

        public BountyContract(Biota biota) : base(biota)
        {
            SetEphemeralValues();
        }

        private void SetEphemeralValues() { }

        public static bool IsBountySystemEnabled => PropertyManager.GetBool("bounty_system_enabled").Item;
        public static bool IsWritOfPursuitEnabled => PropertyManager.GetBool("writ_of_pursuit_enabled").Item;
        public static bool IsBountyPkTimerActiveEnabled => PropertyManager.GetBool("bounty_pk_timer_active_enabled").Item;
        public static bool IsBountyExpirationsEnabled => PropertyManager.GetBool("bounty_expirations_enabled").Item;
        public static long MaxBountyContracts => PropertyManager.GetLong("bounty_max_contracts").Item;

        private bool CanFindLocation
        {
            get
            {
                if (!IsBountySystemEnabled)
                    return false;

                if (!BountyContractLastLocationTimestamp.HasValue)
                    return true;

                var bountyLastLocationDuration = PropertyManager.GetDouble("bounty_last_location_duration").Item;
                return DateTime.UtcNow - Time.GetDateTimeFromTimestamp(BountyContractLastLocationTimestamp.Value) > TimeSpan.FromSeconds(bountyLastLocationDuration);
            }
        }

        private static TimeSpan _bountyExpirationDuration => TimeSpan.FromMinutes(PropertyManager.GetLong("bounty_expiration_time").Item);

        public bool IsBountyExpired
        {
            get
            {
                if (!IsBountyExpirationsEnabled || !BountyCreationTimestamp.HasValue)
                    return false;

                if (IsExpiredState)
                    return true;

                var creationTime = Time.GetDateTimeFromTimestamp(BountyCreationTimestamp.Value);
                return DateTime.UtcNow > creationTime + _bountyExpirationDuration;
            }
        }

        public void UpdateUiEffects(Player owner = null, string message = null)
        {
            try
            {
                if (!BountyTargetGuid.HasValue)
                    return;

                if (IsBountyExpired)
                {
                    SetUiEffect(ACE.Entity.Enum.UiEffects.Undef, owner, message);
                    return;
                }

                if (IsCompletedState)
                {
                    SetUiEffect(ACE.Entity.Enum.UiEffects.Frost, owner, message);
                    return;
                }

                if (IsWritOfPursuitEnabled && BountyTargetGuid.HasValue)
                {
                    var target = PlayerManager.FindByGuid(new ObjectGuid((uint)BountyTargetGuid.Value));

                    if (target != null && target.IsHighPriorityTarget())
                    {
                        SetUiEffect(ACE.Entity.Enum.UiEffects.Magical, owner, message);
                        return;
                    }
                }

                SetUiEffect(ACE.Entity.Enum.UiEffects.Fire, owner, message);
                return;

            }
            catch (Exception ex)
            {
                log.Error($"Error in UpdateBountyContractUiEffects: {ex}");
                return;
            }
        }

        public void SetUiEffect(UiEffects effect, Player owner = null, string message = null)
        {
            if (UiEffects == effect)
                return;

            UiEffects = effect;

            if (owner != null)
            {
                var actionChain = new ActionChain();
                actionChain.AddDelayForOneTick();
                actionChain.AddAction(owner, () =>
                {
                    owner?.Session?.Network?.EnqueueSend(
                        new GameMessagePublicUpdatePropertyInt(this, PropertyInt.UiEffects, (int)effect));

                    if (!String.IsNullOrEmpty(message))
                        owner?.SendBountyMessage(message, delay: 0);
                });
                actionChain.EnqueueChain();
            }
        }

        public override void ActOnUse(WorldObject activator)
        {
            if (activator is not Player player)
                return;

            try
            {
                if (player.IsBusy || player.Teleporting || player.suicideInProgress)
                {
                    player.SendWeenieError(WeenieError.YoureTooBusy);
                    return;
                }

                if (!IsBountySystemEnabled)
                {
                    player.SendBountyMessage("The bounty system is currently disabled!");
                    return;
                }

                if (player.IsJumping)
                {
                    player.SendWeenieError(WeenieError.YouCantDoThatWhileInTheAir);
                    return;
                }

                if (IsInvalidContract)
                {
                    player.SendBountyMessage("This bounty contract is in an invalid state, it cannot be used, destroying it now!");
                    player.TryConsumeFromInventoryWithNetworking(this);
                    return;
                }

                if (IsBountyExpired)
                {
                    player.SendBountyMessage("This bounty contract has expired, please turn it in to the Bounty Collector to receive compensation!");
                    return;
                }

                if (IsCompletedState)
                {
                    player.SendBountyMessage($"This bounty contract has been completed, please turn it in to the Bounty Collector to receive rewards!");
                    return;
                }

                if (!CanFindLocation)
                {
                    player.SendBountyMessage($"You have used this contract's location finder too recently. You must wait {BountyLocationTimeRemaining}.");
                    return;
                }

                var bountyLocationWeenie = BountyLocationCurrencyWeenie;

                var locationCurrencyInventoryCount = player.GetNumInventoryItemsOfWCID(BountyLocationCurrencyWcid);
                var locationCurrencyAmountRequirement = PropertyManager.GetLong("bounty_location_price_amount").Item;
                var locationCurrencyStringAmount = bountyLocationWeenie.BuildAmountString(locationCurrencyAmountRequirement);

                if (locationCurrencyInventoryCount < locationCurrencyAmountRequirement)
                {
                    player.SendBountyMessage($"It costs {locationCurrencyStringAmount} to use the location finder. You currently only have {locationCurrencyInventoryCount} in your inventory.");
                    return;
                }

                if (!player.TryConsumeFromInventoryWithNetworking(BountyLocationCurrencyWcid, (int)locationCurrencyAmountRequirement))
                {
                    player.SendBountyMessage($"An error occurred while trying to consume {locationCurrencyStringAmount}. Please try again and contact an admin if this issue persists.");
                    return;
                }

                var action = () =>
                {
                    try
                    {
                        if (IsInvalidContract)
                        {
                            player.SendBountyMessage("The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.");
                            return;
                        }

                        IPlayer bountyTarget = BountyTarget;

                        var name = bountyTarget.Name;
                        var isOffline = false;
                        var location = "Unknown";
                        if (bountyTarget is Player onlinePlayer)
                            location = Landblock.GetLocString(onlinePlayer.Location);
                        else if (bountyTarget is OfflinePlayer offlinePlayer)
                        {
                            isOffline = true;
                            if (offlinePlayer.Biota.PropertiesPosition.TryGetValue(ACE.Entity.Enum.Properties.PositionType.Location, out var value))
                            {
                                var loc = new Position(value.ObjCellId, value.PositionX, value.PositionY, value.PositionZ, value.RotationX, value.RotationY, value.RotationZ, value.RotationW);
                                location = Landblock.GetLocString(loc);
                            }
                        }

                        if (isOffline)
                        {
                            player.SendBountyMessage($"{name} is currently offline. Last known location: {location}.");
                        }
                        else
                            player.SendBountyMessage($"{name} is currently online. Current location: {location}.");
                    }
                    catch (Exception ex)
                    {
                        log.Error($"Error in BountyContract ActOnUse: {ex}");
                        player.SendBountyMessage("An error occurred while trying to use the bounty contract. Please try again and contact an admin if this issue persists.");
                    }
                    finally
                    {
                        BountyContractLastLocationTimestamp = Time.GetUnixTime();
                    }
                };

                player.ApplyBountyContract(action);
            }
            catch (Exception ex)
            {
                log.Error($"Error in BountyContract ActOnUse: {ex}");
                player.SendBountyMessage("An error occurred while trying to use the bounty contract. Please try again and contact an admin if this issue persists.");
            }
        }

        private string BountyContractTimeRemainingString
        {
            get
            {
                if (!BountyCreationTimestamp.HasValue)
                    return "expired";

                var creationTime = Time.GetDateTimeFromTimestamp(BountyCreationTimestamp.Value);
                var expirationDurationMinutes = PropertyManager.GetLong("bounty_expiration_time").Item;

                return Time.GetTimeRemainingString(creationTime, TimeSpan.FromMinutes(expirationDurationMinutes));
            }
        }

        private string BountyLocationTimeRemaining
        {
            get
            {
                if (!BountyContractLastLocationTimestamp.HasValue)
                    return "expired";

                var lastTimestamp = Time.GetDateTimeFromTimestamp(BountyContractLastLocationTimestamp.Value);
                var bountyLastLocationDuration = PropertyManager.GetDouble("bounty_last_location_duration").Item;
                return Time.GetTimeRemainingString(lastTimestamp, TimeSpan.FromSeconds(bountyLastLocationDuration));
            }
        }

        public string BuildBountyContractLongDescription()
        {
            try
            {
                if (!IsBountySystemEnabled)
                    return "The bounty system is currently disabled!";

                if (IsBountyExpired)
                    return "The bounty contract has expired, please turn it in to the Bounty Collector and possibly be compensated.";

                if (IsInvalidContract)
                    return "The bounty contract has invalid target information. Please contact an admin if you believe this is in error.";

                var longDesc = "";

                var target = BountyTarget;

                if (target == null)
                    return "The bounty contract failed to retrieve information, try again later.";

                var targetName = target.Name;

                var bountyLocationCurrencyWeenie = BountyLocationCurrencyWeenie;

                if (target.IsHighPriorityTarget())
                {
                    var priorityOwnerName = target.GetPriorityOwnerName();
                    var priorityCurrency = target.GetPriorityCurrency();
                    var priorityRewardAmount = target.GetPriorityRewardAmount();
                    var priortyRewardStringAmount = DatabaseManager.World.GetOrThrowCachedWeenie((uint)priorityCurrency).BuildAmountString(priorityRewardAmount);
                    longDesc += $"This contract is a high priority target assigned by {priorityOwnerName}. They are rewarding {priortyRewardStringAmount} for completing this contract.\n\n";
                    longDesc += $"Multiple people may be competing for a reward on this contract, only the first person to complete a contract for this target is rewarded.\n\n";
                }

                var targetKillStreak = target.GetTargetKillStreak();
                var killStreakMinimum = PropertyManager.GetLong("bounty_kill_streak_minimum").Item;
                if (targetKillStreak > killStreakMinimum)
                {
                    longDesc += $"This target currently has a kill streak of {targetKillStreak}. This means they have killed {targetKillStreak} players without dying. Bounty targets with kill streaks are often more dangerous and may be worth more to hunt down.\n\n";
                }

                if (IsCompletedState)
                {
                    longDesc += $"The bounty contract for {targetName} has been completed and is awaiting turn in. Please turn in the bounty contract to the bounty NPC to receive your rewards.\n";
                    longDesc += $"\nContract Time Remaining: {BountyContractTimeRemainingString}\n";
                    return longDesc;
                }

                var locationAmountRequirement = PropertyManager.GetLong("bounty_location_price_amount").Item;
                longDesc += $"Use this Bounty Contract to reveal the location of the bounty target. Beware, it will cost you {bountyLocationCurrencyWeenie.BuildAmountString(locationAmountRequirement)}!\n\n";

                var timeRemaining = BountyContractTimeRemainingString;
                longDesc += $"Bounty Target Name: {targetName}\n";
                longDesc += $"\nContract Time Remaining: {timeRemaining}\n";
                return longDesc;
            }
            catch (Exception ex)
            {
                log.Error($"Error building bounty contract long description: {ex}");
                return "An error occurred while loading the bounty contract information. Please contact an admin if this issue persists.";
            }
        }

        public void OnDestroy()
        {
            if (BountyTargetGuid.HasValue && BountyOwnerGuid.HasValue)
            {
                var owner = PlayerManager.GetOnlinePlayer((uint)BountyOwnerGuid);
                owner?.TryRemoveBountyContract((uint)BountyTargetGuid.Value);
            }
        }
    }
}
