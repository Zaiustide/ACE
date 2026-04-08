using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.Bounties
{
    /// <summary>
    /// Stores information about a bounty target.
    /// </summary>
    public class BountyTargetInfo
    {
        public uint TargetGuid { get; set; }
        public uint TotalCompletions { get; set; } = 0;        
        public uint TotalExpirations { get; set; } = 0;
        public uint TotalHighPriorityCompletions { get; set; } = 0;
        public uint TotalDamageReceived = 0;
        public uint TotalKillStreakCompletions = 0;
        public uint HighestKillStreakBroken = 0;
        public double LastCompletedTimestamp { get; set; } = -1;
    }
}
