DELETE FROM `weenie` WHERE `class_Id` = 490291;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490291, 'ace490291-cloakofdestructionheavy', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490291,   1,          4) /* ItemType - Clothing */
     , (490291,   3,          2) /* PaletteTemplate - Blue */
     , (490291,   4,     131072) /* ClothingPriority - 131072 */
     , (490291,   5,         75) /* EncumbranceVal */
     , (490291,   9,  134217728) /* ValidLocations - Cloak */
     , (490291,  16,          1) /* ItemUseable - No */
     , (490291,  18,          1) /* UiEffects - Magical */
     , (490291,  19,     5) /* Value */
     , (490291,  28,          0) /* ArmorLevel */
     , (490291,  36,       9999) /* ResistMagic */
     , (490291,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490291, 158,          7) /* WieldRequirements - Level */
     , (490291, 159,          1) /* WieldSkillType - Axe */
     , (490291, 160,        180) /* WieldDifficulty */
     , (490291, 169,         16) /* TsysMutationData */
     , (490291, 265,         19) /* EquipmentSetId - CloakMagicDefense */
     , (490291, 267,     604800) /* Lifespan */
     , (490291, 319,          5) /* ItemMaxLevel */
     , (490291, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (490291, 370,          3) /* GearDamage */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490291,   4, 31000000000) /* ItemTotalXp */
     , (490291,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490291,  22, True ) /* Inscribable */
     , (490291,  84, True ) /* IgnoreCloIcons */
     , (490291, 100, False) /* Dyable */
     , (490291, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490291,  13,     0.8) /* ArmorModVsSlash */
     , (490291,  14,     0.8) /* ArmorModVsPierce */
     , (490291,  15,       1) /* ArmorModVsBludgeon */
     , (490291,  16,     0.2) /* ArmorModVsCold */
     , (490291,  17,     0.2) /* ArmorModVsFire */
     , (490291,  18,     0.1) /* ArmorModVsAcid */
     , (490291,  19,     0.2) /* ArmorModVsElectric */
     , (490291, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490291,   1, 'Heavy Weapon Cloak of Destruction') /* Name */
     , (490291,  16, 'Heavy Weapon Cloak of Destruction') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490291,   1, 0x02001B2A) /* Setup */
     , (490291,   3, 0x20000014) /* SoundTable */
     , (490291,   6, 0x100007F2) /* PaletteBase */
     /*, (490291,   7, 0x100007EB) /* ClothingBase */
	 , (490291,   7, 0x1000085E) /* ClothingBase */
     , (490291,   8, 0x0600709C) /* Icon */
     , (490291,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490291,  36, 0x0E00001E) /* MutateFilter */
     , (490291,  50, 100691000) /* IconOverlay */
     , (490291,  55,       5753) /* ProcSpell */;
