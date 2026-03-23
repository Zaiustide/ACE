using System;
using System.Collections.Generic;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Managers;

namespace ACE.Server.WorldObjects
{
    partial class BountyContract : WorldObject
    {
        public static readonly uint BountyNPCWcid = 3000381; // Bounty NPC wcid
        public static readonly uint PKSkullWcid = 60000212; // Bounty Player Skull wcid
        public static readonly uint BountyPurchaseTokenWcid = 60000213; // Bounty Purchase Token wcid
        public static readonly uint BountyContractWcid = 60000214; // Bounty Purchase Token wcid

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

        public bool IsBountyExpired
        {
            get
            {
                if (!BountyCreationTimeStamp.HasValue)
                    return true;

                if (!IsBountyExpirationsEnabled)
                    return false;

                var bountyExpirationDuration = PropertyManager.GetLong("bounty_expiration_time").Item;
                return DateTime.UtcNow - Time.GetDateTimeFromTimestamp((double)BountyCreationTimeStamp) > TimeSpan.FromMinutes(bountyExpirationDuration);
            }
        }

        public bool CanAppraiseContractLocation
        {
            get
            {
                if (!IsBountySystemEnabled)
                    return false;

                if (!BountyLastAppraisedTimeStamp.HasValue)
                    return true;

                var bountyAppraisalLocationDuration = PropertyManager.GetDouble("bounty_appraisal_location_duration").Item;
                return DateTime.UtcNow - Time.GetDateTimeFromTimestamp((double)BountyLastAppraisedTimeStamp) > TimeSpan.FromSeconds(bountyAppraisalLocationDuration);
            }
        }

        public string BountyTimeRemainingString
        {
            get
            {
                if (!BountyCreationTimeStamp.HasValue)
                    return "expired";

                var creationTime = Time.GetDateTimeFromTimestamp((double)BountyCreationTimeStamp.Value);
                var expirationDurationMinutes = PropertyManager.GetLong("bounty_expiration_time").Item;
                var expirationTime = creationTime + TimeSpan.FromMinutes(expirationDurationMinutes);

                var remaining = expirationTime - DateTime.UtcNow;

                if (remaining <= TimeSpan.Zero)
                    return "expired";

                var parts = new List<string>();

                if (remaining.Days > 0)
                    parts.Add($"{remaining.Days} day{(remaining.Days > 1 ? "s" : "")}");

                if (remaining.Hours > 0)
                    parts.Add($"{remaining.Hours} hour{(remaining.Hours > 1 ? "s" : "")}");

                if (remaining.Minutes > 0)
                    parts.Add($"{remaining.Minutes} minute{(remaining.Minutes > 1 ? "s" : "")}");

                if (remaining.Seconds > 0 || parts.Count == 0)
                    parts.Add($"{remaining.Seconds} second{(remaining.Seconds != 1 ? "s" : "")}");

                return string.Join(", ", parts);
            }
        }

        public string BuildBountyContractLongDescription()
        {

            var longDesc = "";

            if (IsBountyExpired)
                return "The bounty contract has expired, please turn it into the Bounty Collector to possibly exchange this contract for some phials.";

            IPlayer bountyTarget = PlayerManager.GetOnlinePlayer(new ObjectGuid((uint)BountyTargetGuid));

            if (bountyTarget == null)
                bountyTarget = PlayerManager.GetOfflinePlayer(new ObjectGuid((uint)BountyTargetGuid));

            if (bountyTarget == null)
                return "The bounty contract has invalid target information. This likely means the target has deleted their character. Please contact an admin if you believe this is in error.";

            var name = bountyTarget.Name;
            var location = BountyLastKnownLocation;
            var isOffline = false;

            if (BountyCompleted)
            {
                longDesc += $"The bounty contract for {name} has been completed and is awaiting turn in. Please turn in the bounty contract to the bounty NPC to receive your rewards.\n";
                longDesc += $"\nTime Remaining: {BountyTimeRemainingString}\n";
                return longDesc;
            }

            if (CanAppraiseContractLocation)
            {
                if (bountyTarget is Player onlinePlayer)
                    location = Landblock.GetLocString(onlinePlayer.Location);
                else if (bountyTarget is OfflinePlayer offlinePlayer)
                {
                    isOffline = true;
                    if(offlinePlayer.Biota.PropertiesPosition.TryGetValue(ACE.Entity.Enum.Properties.PositionType.Location, out var value))
                    {
                        var loc = new Position(value.ObjCellId, value.PositionX, value.PositionY, value.PositionZ, value.RotationX, value.RotationY, value.RotationZ, value.RotationW);
                        location = Landblock.GetLocString(loc);
                    }
                }

                BountyLastKnownLocation = location;
            }

            BountyLastAppraisedTimeStamp = (int?)Time.GetUnixTime();

            var timeRemaining = BountyTimeRemainingString;
            longDesc += $"Bounty Target: {name}\n";
            longDesc += $"Last Known Location: {location} (updated periodically)\n";
            longDesc += $"Time Remaining: {timeRemaining}\n";
            if (isOffline)
                longDesc += $"\n{name} is currently logged out\n";
            return longDesc;
        }
    }
}
