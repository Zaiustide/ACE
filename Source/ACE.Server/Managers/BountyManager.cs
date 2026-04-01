using System.Collections.Concurrent;

using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using log4net;

namespace ACE.Server.Managers
{
    public static class BountyManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static readonly ConcurrentDictionary<uint, HighPriorityData> _highPriorityTargets = new ConcurrentDictionary<uint, HighPriorityData>();
        public readonly struct HighPriorityData
        {
            public readonly long RewardAmount;
            public readonly uint RewardCurrencyWcid;
            public readonly string OwnerName;
            public readonly string TargetName;

            public HighPriorityData(long rewardAmount, uint currencyId, string targetName, string ownerName)
            {
                RewardAmount = rewardAmount;
                RewardCurrencyWcid = currencyId;
                OwnerName = ownerName ?? "Unknown";
                TargetName = targetName ?? "Unknown";
            }
        }

        public static void Initialize()
        {
            var allPlayers = PlayerManager.GetAllPlayers();

            foreach (var player in allPlayers)
            {
                if (player.GetProperty(PropertyBool.IsBountyHighPriorityTarget) == true)
                {
                    var reward = player.GetProperty(PropertyInt.BountyPriorityTargetRewardAmount) ?? 0;
                    var currencyWcid = player.GetProperty(PropertyInt.BountyPriorityCurrency) ?? 0;
                    var ownerName = player.GetProperty(PropertyString.BountyPriorityOwnerName) ?? "Unknown";
                    var targetName = player.Name;

                    AddHighPriorityTarget(player.Guid.Full, reward, (uint)currencyWcid, targetName, ownerName);
                }
            }

            log.Info($"BountyManager initialized with {_highPriorityTargets.Count} high priority targets.");
        }

        public static bool AddHighPriorityTarget(uint targetGuid, long rewardAmount, uint currencyWcid, string targetName, string ownerName)
        {
            var data = new HighPriorityData(rewardAmount, currencyWcid, targetName, ownerName);
            return _highPriorityTargets.TryAdd(targetGuid, data);
        }

        public static bool RemoveHighPriorityTarget(uint targetGuid)
        {
            return _highPriorityTargets.TryRemove(targetGuid, out _);
        }

        public static bool IsHighPriorityTarget(uint targetGuid)
        {
            return _highPriorityTargets.ContainsKey(targetGuid);
        }

        public static bool IsHighPriorityTarget(IPlayer player)
        {
            return player != null && _highPriorityTargets.ContainsKey(player.Guid.Full);
        }

        public static bool TryGetHighPriorityTarget(uint targetGuid, out HighPriorityData target)
        {
            return _highPriorityTargets.TryGetValue(targetGuid, out target);
        }
    }
}
