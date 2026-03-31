using System;
using ACE.Common;
using ACE.Database;
using ACE.DatLoader;
using ACE.DatLoader.FileTypes;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity;
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

        public BountyContract(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
        {
            SetEphemeralValues();
        }

        public BountyContract(Biota biota) : base(biota)
        {
            SetEphemeralValues();
        }

        private void SetEphemeralValues()
        {
        }

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

        private bool _isExpired = false;

        public bool IsBountyExpired
        {
            get
            {
                if (_isExpired)
                    return true;

                if (!BountyCreationTimestamp.HasValue)
                    return true;

                if (!IsBountyExpirationsEnabled)
                    return false;

                var bountyExpirationDuration = PropertyManager.GetLong("bounty_expiration_time").Item;
                _isExpired = DateTime.UtcNow - Time.GetDateTimeFromTimestamp(BountyCreationTimestamp.Value) > TimeSpan.FromMinutes(bountyExpirationDuration);

                return _isExpired;
            }
        }

        public void UpdateUiEffects(Player owner)
        {
            if (!BountyTargetGuid.HasValue)
                return;

            if (IsBountyExpired)
            {
                SetUiEffect(owner, ACE.Entity.Enum.UiEffects.Undef, $"{Name} has expired. Turn it in to a Bounty Collector and possibly receive some compensation.");
                return;
            }

            if (IsBountyCompleted)
            {
                SetUiEffect(owner, ACE.Entity.Enum.UiEffects.Frost);
                return;
            }

            if (IsWritOfPursuitEnabled)
            {
                var highPriorityTarget = BountyManager.IsHighPriorityTarget((uint)BountyTargetGuid);

                if (highPriorityTarget)
                {

                    SetUiEffect(owner, ACE.Entity.Enum.UiEffects.Magical);
                    return;
                }
            }

            if (UiEffects != ACE.Entity.Enum.UiEffects.Fire)
            {
                SetUiEffect(owner, ACE.Entity.Enum.UiEffects.Fire);
                return;
            }
        }

        private void SetUiEffect(Player owner, UiEffects effect, string message = "")
        {
            if (UiEffects == effect)
                return;

            UiEffects = effect;

            owner?.Session.Network.EnqueueSend(
                new GameMessagePublicUpdatePropertyInt(this, PropertyInt.UiEffects, (int)effect));

            if (!String.IsNullOrEmpty(message))
                owner?.SendBountyMessage(message);
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

                if (player.IsJumping)
                {
                    player.SendWeenieError(WeenieError.YouCantDoThatWhileInTheAir);
                    return;
                }

                if (IsBountyExpired)
                {
                    player.SendBountyMessage($"This bounty contract has expired. Please turn it in to the Bounty Collector to possibly receive some compensation.");
                    return;
                }

                if (IsBountyCompleted)
                {
                    player.SendBountyMessage($"This bounty contract has been completed, please turn it in to the Bounty Collector to receive rewards!");
                    return;
                }

                if (!CanFindLocation)
                {
                    var bountyLastLocationDuration = PropertyManager.GetDouble("bounty_last_location_duration").Item;
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

                if (!player.TryConsumeFromInventoryWithNetworking(BountyContract.BountyLocationCurrencyWcid, (int)locationCurrencyAmountRequirement))
                {
                    player.SendBountyMessage($"An error occurred while trying to consume {locationCurrencyStringAmount}. Please try again and contact an admin if this issue persists.");
                    return;
                }

                var animTime = DatManager.PortalDat.ReadFromDat<MotionTable>(player.MotionTableId).GetAnimationLength(MotionCommand.ScanHorizon);

                var action = () =>
                {
                    if (!BountyTargetGuid.HasValue)
                    {
                        player.SendBountyMessage("The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.");
                        return;
                    }

                    IPlayer bountyTarget = PlayerManager.GetOnlinePlayer(new ObjectGuid((uint)BountyTargetGuid));

                    bountyTarget ??= PlayerManager.GetOfflinePlayer(new ObjectGuid((uint)BountyTargetGuid));

                    if (bountyTarget == null)
                    {
                        player.SendBountyMessage("The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.");
                        return;
                    }

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

                    BountyContractLastLocationTimestamp = Time.GetUnixTime();
                    return;
                };

                player.ApplyConsumable(MotionCommand.ScanHorizon, action, animTime);
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
                if (IsBountyExpired)
                    return "The bounty contract has expired, please turn it in to the Bounty Collector and possibly be compensated.";

                if (BountyTargetGuid == null)
                    return "The bounty contract has invalid target information. Please contact an admin if you believe this is in error.";

                var longDesc = "";
                var name = BountyOwnerName;

                var bountyLocationCurrencyWeenie = BountyLocationCurrencyWeenie;

                if (BountyManager.TryGetHighPriorityTarget((uint)BountyTargetGuid, out var target))
                {
                    var priorityOwnerName = target.OwnerName;
                    var priorityCurrency = target.RewardCurrencyWcid;
                    var priorityRewardAmount = target.RewardAmount;
                    var priortyRewardStringAmount = DatabaseManager.World.GetOrThrowCachedWeenie((uint)priorityCurrency).BuildAmountString((long)priorityRewardAmount);
                    longDesc += $"This contract is a high priority target assigned by {priorityOwnerName}. They are rewarding {priortyRewardStringAmount} for completing this contract.\n\n";
                    longDesc += $"Multiple people may be competing for a reward on this contract, only the first person to complete a contract for this target is rewarded.\n\n";
                }

                if (IsBountyCompleted)
                {
                    longDesc += $"The bounty contract for {name} has been completed and is awaiting turn in. Please turn in the bounty contract to the bounty NPC to receive your rewards.\n";
                    longDesc += $"\nContract Time Remaining: {BountyContractTimeRemainingString}\n";
                    return longDesc;
                }

                var locationAmountRequirement = PropertyManager.GetLong("bounty_location_price_amount").Item;
                longDesc += $"Use this Bounty Contract to reveal the location of the bounty target. Beware, it will cost you {bountyLocationCurrencyWeenie.BuildAmountString(locationAmountRequirement)}!\n\n";

                var timeRemaining = BountyContractTimeRemainingString;
                longDesc += $"Bounty Target Name: {name}\n";
                longDesc += $"\nContract Time Remaining: {timeRemaining}\n";
                return longDesc;
            } catch (Exception ex)
            {
                log.Error($"Error building bounty contract long description: {ex}");
                return "An error occurred while loading the bounty contract information. Please contact an admin if this issue persists.";
            }
        }

        public void OnDestroy()
        {
            if (BountyOwnerGuid.HasValue && BountyTargetGuid.HasValue)
            {
                var owner = PlayerManager.GetOnlinePlayer((uint)BountyOwnerGuid);
                owner?.RemoveBountyContract((uint)BountyTargetGuid);
            }
        }
    }
}
