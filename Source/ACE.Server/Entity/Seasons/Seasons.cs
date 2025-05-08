using ACE.Common;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.Seasons
{
    public static class Seasons
    {
        private static List<uint> _seasonsOutdoorLandblocks;
        public static List<uint> SeasonsOutdoorLandblocks
        {
            get
            {
                if (_seasonsOutdoorLandblocks == null)
                {
                    _seasonsOutdoorLandblocks = new List<uint>();

                    _seasonsOutdoorLandblocks.Add(0xE2CC);
                    _seasonsOutdoorLandblocks.Add(0xE2CD);
                    _seasonsOutdoorLandblocks.Add(0xE2CE);
                    _seasonsOutdoorLandblocks.Add(0xE2CF);
                    _seasonsOutdoorLandblocks.Add(0xE2D0);
                    _seasonsOutdoorLandblocks.Add(0xE2D1);
                    _seasonsOutdoorLandblocks.Add(0xE2D2);
                    _seasonsOutdoorLandblocks.Add(0xE2D3);
                    _seasonsOutdoorLandblocks.Add(0xE2D4);
                    _seasonsOutdoorLandblocks.Add(0xE2D5);
                    _seasonsOutdoorLandblocks.Add(0xE2D6);
                    _seasonsOutdoorLandblocks.Add(0xE3CC);
                    _seasonsOutdoorLandblocks.Add(0xE3CD);
                    _seasonsOutdoorLandblocks.Add(0xE3CE);
                    _seasonsOutdoorLandblocks.Add(0xE3CF);
                    _seasonsOutdoorLandblocks.Add(0xE3D0);
                    _seasonsOutdoorLandblocks.Add(0xE3D1);
                    _seasonsOutdoorLandblocks.Add(0xE3D2);
                    _seasonsOutdoorLandblocks.Add(0xE3D3);
                    _seasonsOutdoorLandblocks.Add(0xE3D4);
                    _seasonsOutdoorLandblocks.Add(0xE3D5);
                    _seasonsOutdoorLandblocks.Add(0xE3D6);
                    _seasonsOutdoorLandblocks.Add(0xE4CC);
                    _seasonsOutdoorLandblocks.Add(0xE4CD);
                    _seasonsOutdoorLandblocks.Add(0xE4CE);
                    _seasonsOutdoorLandblocks.Add(0xE4CF);
                    _seasonsOutdoorLandblocks.Add(0xE4D0);
                    _seasonsOutdoorLandblocks.Add(0xE4D1);
                    _seasonsOutdoorLandblocks.Add(0xE4D2);
                    _seasonsOutdoorLandblocks.Add(0xE4D3);
                    _seasonsOutdoorLandblocks.Add(0xE4D4);
                    _seasonsOutdoorLandblocks.Add(0xE4D5);
                    _seasonsOutdoorLandblocks.Add(0xE4D6);
                    _seasonsOutdoorLandblocks.Add(0xE5CC);
                    _seasonsOutdoorLandblocks.Add(0xE5CD);
                    _seasonsOutdoorLandblocks.Add(0xE5CE);
                    _seasonsOutdoorLandblocks.Add(0xE5CF);
                    _seasonsOutdoorLandblocks.Add(0xE5D0);
                    _seasonsOutdoorLandblocks.Add(0xE5D1);
                    _seasonsOutdoorLandblocks.Add(0xE5D2);
                    _seasonsOutdoorLandblocks.Add(0xE5D3);
                    _seasonsOutdoorLandblocks.Add(0xE5D4);
                    _seasonsOutdoorLandblocks.Add(0xE5D5);
                    _seasonsOutdoorLandblocks.Add(0xE5D6);
                    _seasonsOutdoorLandblocks.Add(0xE6CC);
                    _seasonsOutdoorLandblocks.Add(0xE6CD);
                    _seasonsOutdoorLandblocks.Add(0xE6CE);
                    _seasonsOutdoorLandblocks.Add(0xE6CF);
                    _seasonsOutdoorLandblocks.Add(0xE6D0);
                    _seasonsOutdoorLandblocks.Add(0xE6D1);
                    _seasonsOutdoorLandblocks.Add(0xE6D2);
                    _seasonsOutdoorLandblocks.Add(0xE6D3);
                    _seasonsOutdoorLandblocks.Add(0xE6D4);
                    _seasonsOutdoorLandblocks.Add(0xE6D5);
                    _seasonsOutdoorLandblocks.Add(0xE6D6);
                    _seasonsOutdoorLandblocks.Add(0xE7CC);
                    _seasonsOutdoorLandblocks.Add(0xE7CD);
                    _seasonsOutdoorLandblocks.Add(0xE7CE);
                    _seasonsOutdoorLandblocks.Add(0xE7CF);
                    _seasonsOutdoorLandblocks.Add(0xE7D0);
                    _seasonsOutdoorLandblocks.Add(0xE7D1);
                    _seasonsOutdoorLandblocks.Add(0xE7D2);
                    _seasonsOutdoorLandblocks.Add(0xE7D3);
                    _seasonsOutdoorLandblocks.Add(0xE7D4);
                    _seasonsOutdoorLandblocks.Add(0xE7D5);
                    _seasonsOutdoorLandblocks.Add(0xE7D6);
                    _seasonsOutdoorLandblocks.Add(0xE8CC);
                    _seasonsOutdoorLandblocks.Add(0xE8CD);
                    _seasonsOutdoorLandblocks.Add(0xE8CE);
                    _seasonsOutdoorLandblocks.Add(0xE8CF);
                    _seasonsOutdoorLandblocks.Add(0xE8D0);
                    _seasonsOutdoorLandblocks.Add(0xE8D1);
                    _seasonsOutdoorLandblocks.Add(0xE8D2);
                    _seasonsOutdoorLandblocks.Add(0xE8D3);
                    _seasonsOutdoorLandblocks.Add(0xE8D4);
                    _seasonsOutdoorLandblocks.Add(0xE8D5);
                    _seasonsOutdoorLandblocks.Add(0xE8D6);
                    _seasonsOutdoorLandblocks.Add(0xE9D0);
                    _seasonsOutdoorLandblocks.Add(0xE9D1);
                    _seasonsOutdoorLandblocks.Add(0xE9D2);
                    _seasonsOutdoorLandblocks.Add(0xE9D3);
                    _seasonsOutdoorLandblocks.Add(0xEACF);
                    _seasonsOutdoorLandblocks.Add(0xEAD0);
                }

                return _seasonsOutdoorLandblocks;
            }
        }


        private static Dictionary<uint, SeasonsDungeon> _seasonsDungeonMap;
        public static Dictionary<uint, SeasonsDungeon> SeasonsDungeonMap
        {
            get
            {
                if (_seasonsDungeonMap == null)
                {
                    _seasonsDungeonMap = new Dictionary<uint, SeasonsDungeon>();

                    _seasonsDungeonMap.Add(0x01CC, new SeasonsDungeon()
                    {
                        LandblockId = 0x01CC,
                        Name = "Halls of Helm"
                    }); //Halls of Helm

                    _seasonsDungeonMap.Add(0x0105, new SeasonsDungeon()
                    {
                        LandblockId = 0x0105,
                        Name = "Black Spawn Den"
                    }); //OP BSD
                }

                return _seasonsDungeonMap;
            }
        }

        public static bool IsSeasonsLandblock(uint landblockId)
        {
            if(SeasonsDungeonMap.ContainsKey(landblockId) || SeasonsOutdoorLandblocks.Contains(landblockId))
            {
                return true;
            }

            return false;
        }

        public static bool IsSeasonsDungeon(uint landblockId)
        {
            return SeasonsDungeonMap.ContainsKey(landblockId);
        }

        public static bool IsSeasonsOutdoorLandblock(uint landblockId)
        {
            return SeasonsOutdoorLandblocks.Contains(landblockId);
        }        
    }

    public class SeasonsDungeon
    {
        public uint LandblockId { get; set; }

        public string Name { get; set; }

        //Todo track whether nolog or force materialization here?
        //what other config do we want to track about each dungeon?
    }
}
