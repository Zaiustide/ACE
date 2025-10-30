using System.Collections.Generic;

using ACE.Common;
using ACE.Entity.Enum;
using ACE.Database.Models.World;
using ACE.Server.Factories.Entity;
using ACE.Server.WorldObjects;
using ACE.Server.Managers;

namespace ACE.Server.Factories.Tables
{
    public static class EquipmentSetChance
    {
        // t7 and t8 armor has a ~1/3 chance of having an equipment set
        private static readonly ChanceTable<bool> armorSetChance = new ChanceTable<bool>()
        {
            ( false, 0.66f ),
            ( true,  0.34f ),
        };

        private static readonly List<EquipmentSet> armorSets = new List<EquipmentSet>()
        {
            EquipmentSet.Soldiers,
            EquipmentSet.Adepts,
            EquipmentSet.Archers,
            EquipmentSet.Defenders,
            EquipmentSet.Tinkers,
            EquipmentSet.Crafters,
            EquipmentSet.Hearty,
            EquipmentSet.Dexterous,
            EquipmentSet.Wise,
            EquipmentSet.Swift,
            EquipmentSet.Hardened,
            EquipmentSet.Reinforced,
            EquipmentSet.Interlocking,
            EquipmentSet.Flameproof,
            EquipmentSet.Acidproof,
            EquipmentSet.Coldproof,
            EquipmentSet.Lightningproof,
        };

        public static EquipmentSet? Roll(WorldObject wo, TreasureDeath profile, TreasureRoll roll)
        {
            if (!PropertyManager.GetBool("equipmentsetid_enabled").Item || profile.DisableSets)
                return null;

            if (profile.Tier < 6)
                return null;
            if(!roll.HasArmorLevel(wo) && wo.ItemType != ItemType.Jewelry && !(wo.ValidLocations?.HasFlag(EquipMask.TrinketOne) ?? false) && wo.WeenieType != WeenieType.Clothing)
                return null;

            if(profile.DisableSets)
                return null;

            if ((wo.ClothingPriority == null || (wo.ClothingPriority & (CoverageMask)CoverageMaskHelper.Outerwear) == 0) && profile.Tier < 9)
                return null;

            if ((wo.ClothingPriority == null || (wo.ClothingPriority & (CoverageMask)CoverageMaskHelper.Outerwear) == 0) && wo.ItemType != ItemType.Jewelry && !(wo.ValidLocations?.HasFlag(EquipMask.TrinketOne) ?? false) && wo.WeenieType != WeenieType.Clothing)
                return null;

            // loot quality mod?
            if (!armorSetChance.Roll(profile.LootQualityMod))
                return null;

            // each armor set has an even chance of being selected
            var rng = ThreadSafeRandom.Next(0, armorSets.Count - 1);

            return armorSets[rng];
        }
    }
}
