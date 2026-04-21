using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.Bounties
{
    public class BountyInformation
    {
        public Dictionary<uint, BountyTargetInfo> BountyTargets { get; set; } = new Dictionary<uint, BountyTargetInfo>();

        // Lifelong stats that never reset
        public uint TotalBountiesCompleted { get; set; } = 0;
        public uint TotalBountyExpirationsCount { get; set; } = 0;
        public uint TotalHighPriorityBountiesCompleted { get; set; } = 0;
        public uint TotalDamageDealtToBountyTargets { get; set; } = 0;
        public uint TotalDamageReceived { get; set; } = 0;

        public uint TotalKillStreakCompletions { get; set; } = 0;

        public uint HighestKillStreakBroken { get; set; } = 0;

        // Daily Quest Properties, these should reset every 24 hours 
        public DateTime LastBountyQuestResetDate { get; set; } = DateTime.MinValue;
        public HashSet<uint> UniqueBountyTargets { get; set; } = new HashSet<uint>(); 
        public Dictionary<uint, uint> RepeatKillCounts { get; set; } = new Dictionary<uint, uint>();
        public Dictionary<uint, uint> DailyTargetDamageDealt { get; set; } = new Dictionary<uint, uint>();
        public uint TotalDailyHighPriorityBountiesCompleted { get; set; } = 0;
        public uint TotalDailyDamageDealt { get; set; } = 0;
        public List<DateTime> BountyCompletionTimestamps { get; set; } = new List<DateTime>();   
    }
}
