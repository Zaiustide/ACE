using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity
{
    public static class ZergControlLandblocks
    {

        private static Dictionary<uint, ZergControlArea> _zergControlLandblocksMap;

        public static Dictionary<uint, ZergControlArea> ZergControlLandblocksMap
        {
            get
            {
                if (_zergControlLandblocksMap == null)
                {
                    _zergControlLandblocksMap = new Dictionary<uint, ZergControlArea>();

                    //Zerg control Town Control landblocks to 9
                    var holtTC = new ZergControlArea();
                    holtTC.MaxPlayersPerAllegiance = 9;
                    holtTC.AreaLandblockIds = new uint[] { 0x4FF1 };
                    _zergControlLandblocksMap.Add(0x4FF1, holtTC);

                    var yaraqTC = new ZergControlArea();
                    yaraqTC.MaxPlayersPerAllegiance = 9;
                    yaraqTC.AreaLandblockIds = new uint[] { 0x00AB };
                    _zergControlLandblocksMap.Add(0x00AB, yaraqTC);

                    var shoushiTC1 = new ZergControlArea();
                    shoushiTC1.MaxPlayersPerAllegiance = 9;
                    shoushiTC1.AreaLandblockIds = new uint[] { 0xE9F0, 0xE9F1, 0xE8F1 };
                    _zergControlLandblocksMap.Add(0xE9F1, shoushiTC1);

                    var shoushiTC2 = new ZergControlArea();
                    shoushiTC2.MaxPlayersPerAllegiance = 9;
                    shoushiTC2.AreaLandblockIds = new uint[] { 0xE9F0, 0xE9F1, 0xE8F1 };
                    _zergControlLandblocksMap.Add(0xE9F0, shoushiTC2);

                    var shoushiTC3 = new ZergControlArea();
                    shoushiTC3.MaxPlayersPerAllegiance = 9;
                    shoushiTC3.AreaLandblockIds = new uint[] { 0xE9F0, 0xE9F1, 0xE8F1 };
                    _zergControlLandblocksMap.Add(0xE8F1, shoushiTC3);

                    //Zerg Control Custom Island dungeons to 9
                    var drudgeDungeon = new ZergControlArea();
                    drudgeDungeon.MaxPlayersPerAllegiance = 9;
                    drudgeDungeon.AreaLandblockIds = new uint[] { 0x0026 };
                    _zergControlLandblocksMap.Add(0x0026, drudgeDungeon);

                    var dragonCave = new ZergControlArea();
                    dragonCave.MaxPlayersPerAllegiance = 9;
                    dragonCave.AreaLandblockIds = new uint[] { 0x003F };
                    _zergControlLandblocksMap.Add(0x003F, dragonCave);

                    var ancientTemple = new ZergControlArea();
                    ancientTemple.MaxPlayersPerAllegiance = 9;
                    ancientTemple.AreaLandblockIds = new uint[] { 0x0174 };
                    _zergControlLandblocksMap.Add(0x0174, ancientTemple);

                    //Aerbax World Boss
                    var aerbax = new ZergControlArea();
                    aerbax.MaxPlayersPerAllegiance = 7;
                    aerbax.AreaLandblockIds = new uint[] { 0x6543 };
                    _zergControlLandblocksMap.Add(0x6543, aerbax);

                    //Tusker Queen World Boss
                    var tq = new ZergControlArea();
                    tq.MaxPlayersPerAllegiance = 5;
                    tq.AreaLandblockIds = new uint[] { 0x02C8 };
                    _zergControlLandblocksMap.Add(0x02C8, tq);
                }

                return _zergControlLandblocksMap;
            }
        }

        public static bool IsZergControlLandblock(uint landblockId)
        {
            return ZergControlLandblocksMap.ContainsKey(landblockId);
        }

        public static ZergControlArea GetLandblockZergControlArea(uint landblockId)
        {
            if (IsZergControlLandblock(landblockId))
            {
                return ZergControlLandblocksMap[landblockId];
            }

            return null;
        }
    }

    public class ZergControlArea
    {
        public uint[] AreaLandblockIds;
        public uint MaxPlayersPerAllegiance;
    }
}
