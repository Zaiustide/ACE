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
        public int? BountyOwnerGuid
        {
            get => GetProperty(PropertyInt.BountyOwnerGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyOwnerGuid); else SetProperty(PropertyInt.BountyOwnerGuid, value.Value); }
        }

        public int? BountyTargetGuid
        {
            get => GetProperty(PropertyInt.BountyTargetGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyTargetGuid); else SetProperty(PropertyInt.BountyTargetGuid, value.Value); }
        }

        public double? BountyCreationTimestamp
        {
            get => GetProperty(PropertyFloat.BountyCreationTimestamp);
            set { if (!value.HasValue) RemoveProperty(PropertyFloat.BountyCreationTimestamp); else SetProperty(PropertyFloat.BountyCreationTimestamp, value.Value); }
        }

        public bool BountyCompleted
        {
            get => GetProperty(PropertyBool.BountyCompleted) ?? false;
            set { if (!value) RemoveProperty(PropertyBool.BountyCompleted); else SetProperty(PropertyBool.BountyCompleted, value); }
        }
        public double? BountyLastAppraisedTimestamp
        {
            get => GetProperty(PropertyFloat.BountyLastAppraisedTimestamp);
            set { if (!value.HasValue) RemoveProperty(PropertyFloat.BountyLastAppraisedTimestamp); else SetProperty(PropertyFloat.BountyLastAppraisedTimestamp, value.Value); }
        }

        public string BountyLastKnownLocation
        {
            get => GetProperty(PropertyString.BountyLastKnownLocation) ?? "Unknown";
            set { if (value == null) RemoveProperty(PropertyString.BountyLastKnownLocation); else SetProperty(PropertyString.BountyLastKnownLocation, value); }
        }
    }
}
