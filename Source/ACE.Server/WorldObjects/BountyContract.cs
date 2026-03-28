using System;
using ACE.Common;
using ACE.DatLoader;
using ACE.DatLoader.FileTypes;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Managers;

namespace ACE.Server.WorldObjects
{
    public partial class BountyContract : WorldObject
    {
        public static readonly uint BountyNPCWcid = 3000381; // Bounty NPC wcid
        public static readonly uint BountyPurchaseTokenWcid = 60000213; // Bounty Purchase Token wcid
        public static readonly uint BountyContractWcid = 60000214; // Bounty Purchase Token wcid
        public static readonly uint WritOfPursuitWcid = 60000215; // Bounty Purchase Token wcid
        public static readonly uint BountyCurrencyWcid = 1000003; // phials
        public static readonly uint PKTrophyWcid = 1000002; // Pk Trophy

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

        public bool IsBountyExpired
        {
            get
            {
                if (!BountyCreationTimestamp.HasValue)
                    return true;

                if (!IsBountyExpirationsEnabled)
                    return false;

                var bountyExpirationDuration = PropertyManager.GetLong("bounty_expiration_time").Item;
                return DateTime.UtcNow - Time.GetDateTimeFromTimestamp(BountyCreationTimestamp.Value) > TimeSpan.FromMinutes(bountyExpirationDuration);
            }
        }

        public override void ActOnUse(WorldObject activator)
        {
            if (activator is not Player player)
                return;

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
                player.SendDelayedMessage("This bounty contract has expired. Please turn it into the Bounty Collector to possibly exchange this contract for some phials.", delaySeconds: 0);
                return;
            }

            if (IsBountyCompleted)
            {
                player.SendDelayedMessage($"This bounty contract has been completed, please turn it into the Bounty Collector to receive any rewards!", delaySeconds: 0);
                return;
            }

            if (!CanFindLocation)
            {
                var bountyLastLocationDuration = PropertyManager.GetDouble("bounty_last_location_duration").Item;
                player.SendDelayedMessage($"You have used this contract's location finder too recently. You must wait {BountyLocationTimeRemaining}.", delaySeconds: 0);
                return;
            }

            var pkTrophiesInventoryCount = player.GetNumInventoryItemsOfWCID(BountyContract.PKTrophyWcid);
            var pkTrophyAmountRequirement = PropertyManager.GetLong("bounty_location_price_amount").Item;

            if (pkTrophiesInventoryCount < pkTrophyAmountRequirement)
            {
                player.SendDelayedMessage($"It costs {pkTrophyAmountRequirement} pk trophies to use the location finder. You currently only have {pkTrophiesInventoryCount} pk trophies in your inventory.", delaySeconds: 0);
                return;
            }

            if (!player.TryConsumeFromInventoryWithNetworking(BountyContract.PKTrophyWcid, (int)pkTrophyAmountRequirement))
            {
                player.SendDelayedMessage("An error occurred while trying to consume your pk trophies. Please try again and contact an admin if this issue persists.", delaySeconds: 0);
            }

            var animTime = DatManager.PortalDat.ReadFromDat<MotionTable>(player.MotionTableId).GetAnimationLength(MotionCommand.ScanHorizon);

            var action = () =>
            {
                player.EnqueueBroadcastMotion(new Motion(player.CurrentMotionState.Stance));

                IPlayer bountyTarget = PlayerManager.GetOnlinePlayer(new ObjectGuid((uint)BountyTargetGuid));

                bountyTarget ??= PlayerManager.GetOfflinePlayer(new ObjectGuid((uint)BountyTargetGuid));

                if (bountyTarget == null)
                {
                    player.SendDelayedMessage("The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.", delaySeconds: 0);
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
                    player.SendDelayedMessage($"{name} is currently offline. Last known location: {location}.", delaySeconds: 0);
                }
                else
                    player.SendDelayedMessage($"{name} is currently online. Current location: {location}.", delaySeconds: 0);

                BountyContractLastLocationTimestamp = Time.GetUnixTime();
                return;
            };

            player.ApplyConsumable(MotionCommand.ScanHorizon, action, animTime);
        }

        private string BountyTimeRemainingString
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
            if (IsBountyExpired)
                return "The bounty contract has expired, please turn it into the Bounty Collector to possibly exchange this contract for some phials.";

            if (BountyTargetGuid == null)
                return "The bounty contract has invalid target information. Please contact an admin if you believe this is in error.";

            IPlayer bountyTarget = PlayerManager.GetOnlinePlayer(new ObjectGuid((uint)BountyTargetGuid));

            if (bountyTarget == null)
                bountyTarget = PlayerManager.GetOfflinePlayer(new ObjectGuid((uint)BountyTargetGuid));

            if (bountyTarget == null)
                return "The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.";


            var longDesc = "";
            var name = bountyTarget.Name;

            if (IsBountyCompleted)
            {
                longDesc += $"The bounty contract for {name} has been completed and is awaiting turn in. Please turn in the bounty contract to the bounty NPC to receive your rewards.\n";
                longDesc += $"\nContract Time Remaining: {BountyTimeRemainingString}\n";
                return longDesc;
            }

            var pkTrophyAmountRequirement = PropertyManager.GetLong("bounty_location_price_amount").Item;
            longDesc += $"Use this Bounty Contract to reveal the location of the bounty target. Beware, it will cost you {pkTrophyAmountRequirement} pk trophies!\n\n";

            var timeRemaining = BountyTimeRemainingString;
            longDesc += $"Bounty Target: {name}\n\n";
            longDesc += $"Time Remaining: {timeRemaining}\n";
            return longDesc;
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
