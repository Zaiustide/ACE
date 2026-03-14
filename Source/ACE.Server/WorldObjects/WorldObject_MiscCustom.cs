using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ACE.Common;
using ACE.DatLoader;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Managers;

namespace ACE.Server.WorldObjects
{
    partial class WorldObject
    {
        public static HashSet<CreatureType> SupportedGearCreatureTypes = new HashSet<CreatureType>()
        {
            ACE.Entity.Enum.CreatureType.Banderling,
            ACE.Entity.Enum.CreatureType.Drudge,
            ACE.Entity.Enum.CreatureType.Gromnie,
            ACE.Entity.Enum.CreatureType.Lugian,
            ACE.Entity.Enum.CreatureType.Grievver,
            ACE.Entity.Enum.CreatureType.Mattekar,
            ACE.Entity.Enum.CreatureType.GearKnight,
            ACE.Entity.Enum.CreatureType.Mosswart,
            ACE.Entity.Enum.CreatureType.Monouga,
            ACE.Entity.Enum.CreatureType.Olthoi,
            ACE.Entity.Enum.CreatureType.PhyntosWasp,
            ACE.Entity.Enum.CreatureType.Shadow,
            ACE.Entity.Enum.CreatureType.Shreth,
            ACE.Entity.Enum.CreatureType.Skeleton,
            ACE.Entity.Enum.CreatureType.Tumerok,
            ACE.Entity.Enum.CreatureType.Tusker,
            ACE.Entity.Enum.CreatureType.Virindi,
            ACE.Entity.Enum.CreatureType.Wisp,
            ACE.Entity.Enum.CreatureType.Zefir,
            ACE.Entity.Enum.CreatureType.Golem,
            ACE.Entity.Enum.CreatureType.Gurog,
            ACE.Entity.Enum.CreatureType.Burun,
            ACE.Entity.Enum.CreatureType.Remoran,
            ACE.Entity.Enum.CreatureType.Reedshark,
            ACE.Entity.Enum.CreatureType.Eater,
            ACE.Entity.Enum.CreatureType.Sclavus,
            ACE.Entity.Enum.CreatureType.Moarsman,
            ACE.Entity.Enum.CreatureType.GotrokLugian,
            ACE.Entity.Enum.CreatureType.Sleech,
            ACE.Entity.Enum.CreatureType.Rat,
            ACE.Entity.Enum.CreatureType.Moar,
            ACE.Entity.Enum.CreatureType.Niffis,
            ACE.Entity.Enum.CreatureType.Mite,
            ACE.Entity.Enum.CreatureType.Undead
        };        

        public CreatureType GetRandomCreatureType(CreatureType currentCreatureType = ACE.Entity.Enum.CreatureType.Invalid)
        {
            var filteredCreatureTypes = SupportedGearCreatureTypes.Where(x => !x.Equals(currentCreatureType));
            return filteredCreatureTypes.ElementAt(new Random().Next(0, filteredCreatureTypes.Count()));            
        }

        public void ApplyRandomSlayer(double slayerDamageBonus = 1.2f, CreatureType currentCreatureType = ACE.Entity.Enum.CreatureType.Invalid)
        {
            this.SlayerDamageBonus = slayerDamageBonus;
            this.SlayerCreatureType = GetRandomCreatureType(currentCreatureType);
        }
    }
}
