using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace ACE.Database.Models.TownControl
{
    public partial class TownControlEvent
    {
        public uint EventId { get; set; }

        public uint TownId { get; set; }

        public DateTime? EventStartDateTime { get; set; }

        public DateTime? EventEndDateTime { get; set; }

        public uint AttackingClanId { get; set; }

        public uint? DefendingClanId { get; set; }

        public string AttackingClanName { get; set; }

        public string DefendingClanName { get; set; }

        public bool? IsAttackSuccess { get; set; }

        [NotMapped]
        public HashSet<string> IpAddresses { get; set; } = new HashSet<string>();

        [NotMapped]
        public Dictionary<uint, TownControlEventAllegiance> Allegiances { get; set; } = new Dictionary<uint, TownControlEventAllegiance>();
    }

    [NotMapped]
    public class TownControlEventAllegiance
    {
        public  required string ClanName { get; set; }
        public Dictionary<uint, TownControlEventPlayer> Players { get; set; } = new Dictionary<uint, TownControlEventPlayer>();
    }

    [NotMapped]
    public class TownControlEventPlayer
    {
        public required uint Guid { get; set; } 
        public required string Name { get; set; }
        public required string Ip { get; set; }
        public required uint MonarchId { get; set; }
    }
}
