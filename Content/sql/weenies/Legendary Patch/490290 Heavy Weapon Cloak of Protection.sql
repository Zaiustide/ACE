DELETE FROM `weenie` WHERE `class_Id` = 490290;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490290, 'ace490290-cloakofprotectionheavy', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490290,   1,          4) /* ItemType - Clothing */
     , (490290,   3,          2) /* PaletteTemplate - Blue */
     , (490290,   4,     131072) /* ClothingPriority - 131072 */
     , (490290,   5,         75) /* EncumbranceVal */
     , (490290,   9,  134217728) /* ValidLocations - Cloak */
     , (490290,  16,          1) /* ItemUseable - No */
     , (490290,  18,          1) /* UiEffects - Magical */
     , (490290,  19,     5) /* Value */
     , (490290,  28,          0) /* ArmorLevel */
     , (490290,  36,       9999) /* ResistMagic */
     , (490290,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490290, 158,          7) /* WieldRequirements - Level */
     , (490290, 159,          1) /* WieldSkillType - Axe */
     , (490290, 160,        180) /* WieldDifficulty */
     , (490290, 169,         16) /* TsysMutationData */
     , (490290, 265,         76) /* EquipmentSetId - CloakMagicDefense */
     , (490290, 267,     604800) /* Lifespan */
     , (490290, 319,          5) /* ItemMaxLevel */
     , (490290, 320,          2) /* ItemXpStyle - ScalesWithLevel */
	 , (490290, 352,          2) /* CloakWeaveProc -200 dmg */
     , (490290, 371,          3) /* GearDamageResist */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490290,   4, 31000000000) /* ItemTotalXp */
     , (490290,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490290,  22, True ) /* Inscribable */
     , (490290,  84, True ) /* IgnoreCloIcons */
     , (490290, 100, False) /* Dyable */
     , (490290, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490290,  13,     0.8) /* ArmorModVsSlash */
     , (490290,  14,     0.8) /* ArmorModVsPierce */
     , (490290,  15,       1) /* ArmorModVsBludgeon */
     , (490290,  16,     0.2) /* ArmorModVsCold */
     , (490290,  17,     0.2) /* ArmorModVsFire */
     , (490290,  18,     0.1) /* ArmorModVsAcid */
     , (490290,  19,     0.2) /* ArmorModVsElectric */
     , (490290, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490290,   1, 'Heavy Weapon Cloak of Protection') /* Name */
     , (490290,  16, 'Heavy Weapon Cloak of Protection') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490290,   1, 0x02001B2A) /* Setup */
     , (490290,   3, 0x20000014) /* SoundTable */
     , (490290,   6, 0x100007F2) /* PaletteBase */
     /*, (490290,   7, 0x100007EB) /* ClothingBase */
	 , (490290,   7, 0x100007F6) /* ClothingBase */
     , (490290,   8, 0x0600709C) /* Icon */
     , (490290,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490290,  36, 0x0E00001E) /* MutateFilter */
     , (490290,  50, 100691000) /* IconOverlay */
     /*, (490290,  55,       5753)  ProcSpell */;
