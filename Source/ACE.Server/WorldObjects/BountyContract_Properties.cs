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

        public string BountyOwnerName
        {
            get => GetProperty(PropertyString.BountyOwnerName) ?? string.Empty;
            set { if (string.IsNullOrEmpty(value)) RemoveProperty(PropertyString.BountyOwnerName); else SetProperty(PropertyString.BountyOwnerName, value); }
        }

        public int? BountyTargetGuid
        {
            get => GetProperty(PropertyInt.BountyTargetGuid);
            set { if (value == null) RemoveProperty(PropertyInt.BountyTargetGuid); else SetProperty(PropertyInt.BountyTargetGuid, value.Value); }
        }
        public string BountyTargetName
        {
            get => GetProperty(PropertyString.BountyTargetName) ?? string.Empty;
            set { if (string.IsNullOrEmpty(value)) RemoveProperty(PropertyString.BountyTargetName); else SetProperty(PropertyString.BountyTargetName, value); }
        }

        public double? BountyCreationTimestamp
        {
            get => GetProperty(PropertyFloat.BountyCreationTimestamp);
            set { if (!value.HasValue) RemoveProperty(PropertyFloat.BountyCreationTimestamp); else SetProperty(PropertyFloat.BountyCreationTimestamp, value.Value); }
        }

        public bool IsBountyCompleted
        {
            get => GetProperty(PropertyBool.IsBountyCompleted) ?? false;
            set { if (!value) RemoveProperty(PropertyBool.IsBountyCompleted); else SetProperty(PropertyBool.IsBountyCompleted, value); }
        }
        public double? BountyContractLastLocationTimestamp
        {
            get => GetProperty(PropertyFloat.BountyContractLastLocationTimestamp);
            set { if (!value.HasValue) RemoveProperty(PropertyFloat.BountyContractLastLocationTimestamp); else SetProperty(PropertyFloat.BountyContractLastLocationTimestamp, value.Value); }
        }
    }
}
