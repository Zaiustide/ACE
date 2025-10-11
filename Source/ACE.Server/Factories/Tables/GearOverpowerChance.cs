using log4net;

using ACE.Database.Models.World;
using ACE.Server.Factories.Entity;
using ACE.Server.WorldObjects;
using ACE.Server.Managers;
using System;

namespace ACE.Server.Factories.Tables
{
    public static class GearOverpowerChance
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        private static ChanceTable<bool> OverpowerChance = new ChanceTable<bool>()
        {
            ( false, 0.95f ),
            ( true,  0.05f ),
        };

        private static ChanceTable<int> WeaponOverpowerRating = new ChanceTable<int>()
        {
            ( 1, 0.35f ),
            ( 2, 0.3f ),
            ( 3, 0.15f ),
            ( 4, 0.09f ),
            ( 5, 0.05f ),
            ( 6, 0.05f ),
            ( 7, 0.025f ),
            ( 8, 0.025f ),
            ( 9, 0.008f ),
            ( 10, 0.002f ),
        };

        private static ChanceTable<int> ArmorOverpowerRating = new ChanceTable<int>()
        {
            ( 1, 0.85f ),
            ( 2, 0.15f ),
        };

        public static int Roll(WorldObject wo, TreasureDeath profile, TreasureRoll roll)
        {
            if (profile.DisableRatings)
            {
                return 0;
            }

            if (profile.Tier < 9)
            {
                return 0;
            }

            var rating_drop_rate = (float)Math.Max(0.0f, PropertyManager.GetDouble("rating_drop_rate").Item);
            if (rating_drop_rate > 1.0f)
            {
                rating_drop_rate = 1.0f;
            }

            if (rating_drop_rate < 0.0f)
            {
                rating_drop_rate = 0.0f;
            }

            // initial roll for rating chance
            if (!OverpowerChance.Roll(profile.LootQualityMod))
                return 0;

            // roll for the actual rating
            ChanceTable<int> rating = null;



            if (roll.HasArmorLevel(wo))
            {
                rating = ArmorOverpowerRating;
            }            
            else if (roll.IsWeapon)
            {
                rating = WeaponOverpowerRating;
            }
            else
            {
                log.Error($"GearOverpowerChance.Roll({wo.Name}, {profile.TreasureType}, {roll.ItemType}): unknown item type");
                return 0;
            }

            return rating.Roll(profile.LootQualityMod);
        }
    }
}
