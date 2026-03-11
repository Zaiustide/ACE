using System;
using System.Collections.Generic;

#nullable disable

namespace ACE.Database.Models.World
{
    public partial class DungeonInfo
    {
        public uint Id { get; set; }
        public string Landblock { get; set; }
        public string Name { get; set; }

        public string Coords { get; set; }
        public DateTime LastModified { get; set; }
    }
}
