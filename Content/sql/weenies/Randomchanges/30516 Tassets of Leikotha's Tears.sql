DELETE FROM `weenie` WHERE `class_Id` = 30516;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30516, 'tassetsrareleikotha', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30516,   1,          2) /* ItemType - Armor */
     , (30516,   3,          4) /* PaletteTemplate - Brown */
     , (30516,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (30516,   5,        500) /* EncumbranceVal */
     , (30516,   8,         90) /* Mass */
     , (30516,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (30516,  16,          1) /* ItemUseable - No */
     , (30516,  17,        221) /* RareId */
     , (30516,  19,      50000) /* Value */
     , (30516,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (30516,  27,          2) /* ArmorType - Leather */
     , (30516,  28,        525) /* ArmorLevel */
     , (30516,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30516, 106,        325) /* ItemSpellcraft */
     , (30516, 107,       5000) /* ItemCurMana */
     , (30516, 108,       5000) /* ItemMaxMana */
     , (30516, 109,          0) /* ItemDifficulty */
     , (30516, 110,          0) /* ItemAllegianceRankLimit */
     , (30516, 151,          2) /* HookType - Wall */
     , (30516, 169,  118162702) /* TsysMutationData */
     , (30516, 265,         40) /* EquipmentSetId - RareDamageResistance */
     , (30516, 319,         50) /* ItemMaxLevel */
     , (30516, 320,          1) /* ItemXpStyle - Fixed */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (30516,   4,          0) /* ItemTotalXp */
     , (30516,   5, 2000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30516,  11, True ) /* IgnoreCollisions */
     , (30516,  13, True ) /* Ethereal */
     , (30516,  14, True ) /* GravityStatus */
     , (30516,  19, True ) /* Attackable */
     , (30516,  22, True ) /* Inscribable */
     , (30516,  91, False) /* Retained */
     , (30516, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (30516,   5,  -0.033) /* ManaRate */
     , (30516,  12,    0.66) /* Shade */
     , (30516,  13,     1.3) /* ArmorModVsSlash */
     , (30516,  14,     1.1) /* ArmorModVsPierce */
     , (30516,  15,     1.1) /* ArmorModVsBludgeon */
     , (30516,  16,       1) /* ArmorModVsCold */
     , (30516,  17,     0.9) /* ArmorModVsFire */
     , (30516,  18,     0.9) /* ArmorModVsAcid */
     , (30516,  19,       1) /* ArmorModVsElectric */
     , (30516, 110,    1.67) /* BulkMod */
     , (30516, 111,       1) /* SizeMod */
     , (30516, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30516,   1, 'Tassets of Leikotha''s Tears') /* Name */
     , (30516,  16, 'Can the undead cry? It is said that after Leikotha, the great warrior of Haebrous, was made undead by the Sand King Nerash, she wept for thirty days and thirty nights. Each tear shed fell onto her armor, infusing Leikotha''s essence into each piece. Courage, honor, sorrow, wrath and... everlasting death.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30516,   1, 0x02001388) /* Setup */
     , (30516,   3, 0x20000014) /* SoundTable */
     , (30516,   6, 0x0400007E) /* PaletteBase */
     , (30516,   7, 0x100005EC) /* ClothingBase */
     , (30516,   8, 0x06005C1A) /* Icon */
     , (30516,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30516,  36, 0x0E000012) /* MutateFilter */
     , (30516,  46, 0x38000032) /* TsysMutationFilter */
     , (30516,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (30516,  4407,      2)  /* Incantation of Impenetrability */
     , (30516,  4681,      2)  /* Epic Mana Gain */
     , (30516,  4227,      2)  /* Epic Willpower */;
