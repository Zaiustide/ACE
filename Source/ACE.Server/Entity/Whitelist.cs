using ACE.Server.Physics.Animation.Internal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity
{
    public static class Whitelist
    {
        private static List<uint> _epicWhitelistedLandblocks;
        private static List<uint> EpicWhitelistedLandblocks
        {
            get
            {
                if (_epicWhitelistedLandblocks == null)
                {
                    _epicWhitelistedLandblocks = new List<uint>() { 0x0031 }; //Example adds Creepy Canyons landblock to the whitelist
                }

                return _epicWhitelistedLandblocks;
            }
        }

        public static bool IsEpicWhitelistedLandblock(uint landblockId)
        {
            return EpicWhitelistedLandblocks.Contains(landblockId);
        }


        private static List<uint> _legendaryWhitelistedLandblocks;
        private static List<uint> LegendaryWhitelistedLandblocks
        {
            get
            {
                if (_legendaryWhitelistedLandblocks == null)
                {
                    _legendaryWhitelistedLandblocks = new List<uint>() { };
                }

                return _legendaryWhitelistedLandblocks;
            }
        }

        public static bool IsLegendaryWhitelistedLandblock(uint landblockId)
        {
            return LegendaryWhitelistedLandblocks.Contains(landblockId);
        }

        private static List<uint> _ratingsWhitelistedLandblocks;
        private static List<uint> RatingsWhitelistedLandblocks
        {
            get
            {
                if (_ratingsWhitelistedLandblocks == null)
                {
                    _ratingsWhitelistedLandblocks = new List<uint>()
                    {
                        0x0174, //Ancient Temple
                        0x003F, //Dragon's Den
                        0x0026, //Drudge Stronghold
                        0x00AE, //Swarm Hive
                        0x00C8, //Shreth Caverns
                        0x00E1, //Mite Hole
                        0x7E04, //Rat Nest
                        //Island landblocks
                        0xF56A,
                        0xF56B,
                        0xF56C,
                        0xF562,
                        0xF563,
                        0xF567,
                        0xF568,
                        0xF569,
                        0xF662,
                        0xF663,
                        0xF664,
                        0xF665,
                        0xF667,
                        0xF668,
                        0xF669,
                        0xF76A,
                        0xF76B,
                        0xF76C,
                        0xF762,
                        0xF763,
                        0xF764,
                        0xF765,
                        0xF766,
                        0xF767,
                        0xF768,
                        0xF769,
                        0xF86A,
                        0xF86B,
                        0xF862,
                        0xF863,
                        0xF864,
                        0xF865,
                        0xF866,
                        0xF867,
                        0xF868,
                        0xF869,
                        0xF96A,
                        0xF962,
                        0xF963,
                        0xF964,
                        0xF965,
                        0xF966,
                        0xF967,
                        0xF968,
                        0xF969
                    };
                }

                return _ratingsWhitelistedLandblocks;
            }
        }

        public static bool IsRatingsWhitelistedLandblock(uint landblockId)
        {
            return RatingsWhitelistedLandblocks.Contains(landblockId);
        }

        public static void AddLandblockToRatingsWhitelist(uint landblockId)
        {
            if (!RatingsWhitelistedLandblocks.Contains(landblockId))
            {
                RatingsWhitelistedLandblocks.Add(landblockId);
            }
        }

        public static void RemoveLandblockFromRatingsWhitelist(uint landblockId)
        {
            if (RatingsWhitelistedLandblocks.Contains(landblockId))
            {
                RatingsWhitelistedLandblocks.Remove(landblockId);
            }
        }

        private static List<uint> _ratingsWhitelistedChestWeenies;
        private static List<uint> RatingsWhitelistedChestWeenies
        {
            get
            {
                if (_ratingsWhitelistedChestWeenies == null)
                {
                    _ratingsWhitelistedChestWeenies = new List<uint>()
                    {
                        480607,
                        38490,
                        38491,
                        38492,
                        38493,
                        38494,
                        38495,
                        38496,
                        38497,
                        38498,
                        38499,
                        38500,
                        38501,
                        38502,
                        38503,
                        38504,
                        38505,
                        38506,
                        48507,
                        38508,
                        38510,
                        38511,
                        38512,
                        38513,
                        38514,
                        38515,
                        48743,
                        48742,
                        48741,
                        48744,
                        490356
                    };
                }

                return _ratingsWhitelistedChestWeenies;
            }
        }

        public static bool IsRatingsWhitelistedChestWeenie(uint weenieId)
        {
            return RatingsWhitelistedChestWeenies.Contains(weenieId);
        }        

        private static List<uint> _equipmentSetWhitelistedLandblocks;
        private static List<uint> EquipmentSetWhitelistedLandblocks
        {
            get
            {
                if (_equipmentSetWhitelistedLandblocks == null)
                {
                    _equipmentSetWhitelistedLandblocks = new List<uint>()
                    {
                        0x002D, //DD
                        //0x00E1, //PotB East
                        0x002A, //PotB Mid
                        //0x004B, //PotB West
                        //0x0064, //EO East
                        0x002B, //EO Mid
                        //0x00C8, //EO West
                        0x6146, //Baishi Hive

                        //150 has these diagonal stripes of landblocks across it
                        0xCBEB, //150 Island
                        0xCBEC, //150 Island
                        0xCBED, //150 Island
                        0xCAEF, //150 Island
                        0xCAEE, //150 Island
                        0xCAED, //150 Island
                        0xCAEC, //150 Island
                        0xCAEB, //150 Island
                        0xCAEA, //150 Island
                        0xCAE9, //150 Island                       
                        0xC9F0, //150 Island
                        0xC9EF, //150 Island
                        0xC9EE, //150 Island
                        0xC9ED, //150 Island
                        0xC9EC, //150 Island
                        0xC9EB, //150 Island
                        0xC9EA, //150 Island
                        0xC9E9, //150 Island
                        0xC8F1, //150 Island
                        0xC8F0, //150 Island
                        0xC8EF, //150 Island
                        0xC8EE, //150 Island
                        0xC8ED, //150 Island
                        0xC8EC, //150 Island
                        0xC8EB, //150 Island
                        0xC8EA, //150 Island
                        0xC8E9, //150 Island
                        0xC8E8, //150 Island
                        0xC7F3, //150 Island
                        0xC7F2, //150 Island
                        0xC7F1, //150 Island
                        0xC7F0, //150 Island
                        0xC7EF, //150 Island
                        0xC7EE, //150 Island
                        0xC7ED, //150 Island
                        0xC7EC, //150 Island
                        0xC7EB, //150 Island
                        0xC7EA, //150 Island
                        0xC7E9, //150 Island
                        0xC6F5, //150 Island
                        0xC6F4, //150 Island
                        0xC6F3, //150 Island
                        0xC6F2, //150 Island
                        0xC6F1, //150 Island
                        0xC6F0, //150 Island
                        0xC6EF, //150 Island
                        0xC6EE, //150 Island
                        0xC6ED, //150 Island
                        0xC6EC, //150 Island
                        0xC6EB, //150 Island
                        0xC6EA, //150 Island
                        0xC5F6, //150 Island
                        0xC5F5, //150 Island
                        0xC5F4, //150 Island
                        0xC5F3, //150 Island
                        0xC5F2, //150 Island
                        0xC5F1, //150 Island
                        0xC5F0, //150 Island
                        0xC5EF, //150 Island
                        0xC5EE, //150 Island
                        0xC5ED, //150 Island
                        0xC5EC, //150 Island
                        0xC5EB, //150 Island
                        0xC4F7, //150 Island
                        0xC4F6, //150 Island
                        0xC4F5, //150 Island
                        0xC4F4, //150 Island
                        0xC4F3, //150 Island
                        0xC4F2, //150 Island
                        0xC4F1, //150 Island
                        0xC4F0, //150 Island
                        0xC4EF, //150 Island
                        0xC4EE, //150 Island
                        0xC4ED, //150 Island
                        0xC4EC, //150 Island
                        0xC4EB, //150 Island
                        0xC3F8, //150 Island
                        0xC3F7, //150 Island
                        0xC3F6, //150 Island
                        0xC3F5, //150 Island
                        0xC3F4, //150 Island
                        0xC3F3, //150 Island
                        0xC3F2, //150 Island
                        0xC3F1, //150 Island
                        0xC3F0, //150 Island
                        0xC3EE, //150 Island
                        0xC3ED, //150 Island
                        0xC3EC, //150 Island
                        0xC3EB, //150 Island
                        0xC2F7, //150 Island
                        0xC2F6, //150 Island
                        0xC2F5, //150 Island
                        0xC2F4, //150 Island
                        0xC2F3, //150 Island
                        0xC1F7, //150 Island
                        0xC1F6, //150 Island
                        0xC1F5, //150 Island                                                                        
                    }; 
                }

                return _equipmentSetWhitelistedLandblocks;
            }
        }        

        public static bool IsEquipmentSetWhitelistedLandblock(uint landblockId)
        {
            return EquipmentSetWhitelistedLandblocks.Contains(landblockId);
        }

        private static List<uint> _aetheriaWhitelistedLandblocks;
        private static List<uint> AetheriaWhitelistedLandblocks
        {
            get
            {
                if (_aetheriaWhitelistedLandblocks == null)
                {
                    _aetheriaWhitelistedLandblocks = new List<uint>()
                    {                        
                        //150 has these diagonal stripes of landblocks across it
                        0xCBEB, //150 Island
                        0xCBEC, //150 Island
                        0xCBED, //150 Island
                        0xCAEF, //150 Island
                        0xCAEE, //150 Island
                        0xCAED, //150 Island
                        0xCAEC, //150 Island
                        0xCAEB, //150 Island
                        0xCAEA, //150 Island
                        0xCAE9, //150 Island                       
                        0xC9F0, //150 Island
                        0xC9EF, //150 Island
                        0xC9EE, //150 Island
                        0xC9ED, //150 Island
                        0xC9EC, //150 Island
                        0xC9EB, //150 Island
                        0xC9EA, //150 Island
                        0xC9E9, //150 Island
                        0xC8F1, //150 Island
                        0xC8F0, //150 Island
                        0xC8EF, //150 Island
                        0xC8EE, //150 Island
                        0xC8ED, //150 Island
                        0xC8EC, //150 Island
                        0xC8EB, //150 Island
                        0xC8EA, //150 Island
                        0xC8E9, //150 Island
                        0xC8E8, //150 Island
                        0xC7F3, //150 Island
                        0xC7F2, //150 Island
                        0xC7F1, //150 Island
                        0xC7F0, //150 Island
                        0xC7EF, //150 Island
                        0xC7EE, //150 Island
                        0xC7ED, //150 Island
                        0xC7EC, //150 Island
                        0xC7EB, //150 Island
                        0xC7EA, //150 Island
                        0xC7E9, //150 Island
                        0xC6F5, //150 Island
                        0xC6F4, //150 Island
                        0xC6F3, //150 Island
                        0xC6F2, //150 Island
                        0xC6F1, //150 Island
                        0xC6F0, //150 Island
                        0xC6EF, //150 Island
                        0xC6EE, //150 Island
                        0xC6ED, //150 Island
                        0xC6EC, //150 Island
                        0xC6EB, //150 Island
                        0xC6EA, //150 Island
                        0xC5F6, //150 Island
                        0xC5F5, //150 Island
                        0xC5F4, //150 Island
                        0xC5F3, //150 Island
                        0xC5F2, //150 Island
                        0xC5F1, //150 Island
                        0xC5F0, //150 Island
                        0xC5EF, //150 Island
                        0xC5EE, //150 Island
                        0xC5ED, //150 Island
                        0xC5EC, //150 Island
                        0xC5EB, //150 Island
                        0xC4F7, //150 Island
                        0xC4F6, //150 Island
                        0xC4F5, //150 Island
                        0xC4F4, //150 Island
                        0xC4F3, //150 Island
                        0xC4F2, //150 Island
                        0xC4F1, //150 Island
                        0xC4F0, //150 Island
                        0xC4EF, //150 Island
                        0xC4EE, //150 Island
                        0xC4ED, //150 Island
                        0xC4EC, //150 Island
                        0xC4EB, //150 Island
                        0xC3F8, //150 Island
                        0xC3F7, //150 Island
                        0xC3F6, //150 Island
                        0xC3F5, //150 Island
                        0xC3F4, //150 Island
                        0xC3F3, //150 Island
                        0xC3F2, //150 Island
                        0xC3F1, //150 Island
                        0xC3F0, //150 Island
                        0xC3EE, //150 Island
                        0xC3ED, //150 Island
                        0xC3EC, //150 Island
                        0xC3EB, //150 Island
                        0xC2F7, //150 Island
                        0xC2F6, //150 Island
                        0xC2F5, //150 Island
                        0xC2F4, //150 Island
                        0xC2F3, //150 Island
                        0xC1F7, //150 Island
                        0xC1F6, //150 Island
                        0xC1F5, //150 Island                                                                        
                    };
                }

                return _aetheriaWhitelistedLandblocks;
            }
        }

        public static bool IsAetheriaWhitelistedLandblock(uint landblockId)
        {
            return AetheriaWhitelistedLandblocks.Contains(landblockId);
        }
    }
}
