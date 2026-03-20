using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ACE.Entity.Enum.Properties;

namespace ACE.Server.WorldObjects
{
    partial class BountyContract
    {
        public int? BountyTrophyTargetGuid
        {
            get => GetProperty(PropertyInt.BountyTrophyTargetGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyTrophyTargetGuid); else SetProperty(PropertyInt.BountyTrophyTargetGuid, value.Value); }

        }
        public int? BountyTargetGuid
        {
            get => GetProperty(PropertyInt.BountyTargetGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyTargetGuid); else SetProperty(PropertyInt.BountyTargetGuid, value.Value); }
        }

        public int? BountyTrophyHunterGuid
        {
            get => GetProperty(PropertyInt.BountyTrophyHunterGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyTrophyHunterGuid); else SetProperty(PropertyInt.BountyTrophyHunterGuid, value.Value); }
        }

        public int? BountyCreationTimeStamp
        {
            get => GetProperty(PropertyInt.BountyCreationTimestamp);
            set { if (!value.HasValue) RemoveProperty(PropertyInt.BountyCreationTimestamp); else SetProperty(PropertyInt.BountyCreationTimestamp, value.Value); }
        }


        public int PlayerBountyTrackingCount
        {
            get => GetProperty(PropertyInt.PlayerBountyTrackingCount) ?? 0;
            set { if (value == 0) RemoveProperty(PropertyInt.PlayerBountyTrackingCount); else SetProperty(PropertyInt.PlayerBountyTrackingCount, value); }
        }

        public bool BountyCompleted
        {
            get => GetProperty(PropertyBool.BountyCompleted) ?? false;
            set { if (!value) RemoveProperty(PropertyBool.BountyCompleted); else SetProperty(PropertyBool.BountyCompleted, value); }
        }

        public int? BountySecret
        {
            get => GetProperty(PropertyInt.BountySecret);
            set { if (!value.HasValue) RemoveProperty(PropertyInt.BountySecret); else SetProperty(PropertyInt.BountySecret, value.Value); }
        }
        public int? BountyContractGuid
        {
            get => GetProperty(PropertyInt.BountyContractGuid);
            set { if (!value.HasValue) RemoveProperty(PropertyInt.BountyContractGuid); else SetProperty(PropertyInt.BountyContractGuid, value.Value); }
        }

    }
}
