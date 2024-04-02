DELETE FROM `weenie` WHERE `class_Id` = 490292;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490292, 'ace490292-cloakofprotectionLight', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490292,   1,          4) /* ItemType - Clothing */
     , (490292,   3,          2) /* PaletteTemplate - Blue */
     , (490292,   4,     131072) /* ClothingPriority - 131072 */
     , (490292,   5,         75) /* EncumbranceVal */
     , (490292,   9,  134217728) /* ValidLocations - Cloak */
     , (490292,  16,          1) /* ItemUseable - No */
     , (490292,  18,          1) /* UiEffects - Magical */
     , (490292,  19,     5) /* Value */
     , (490292,  28,          0) /* ArmorLevel */
     , (490292,  36,       9999) /* ResistMagic */
     , (490292,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490292, 158,          7) /* WieldRequirements - Level */
     , (490292, 159,          1) /* WieldSkillType - Axe */
     , (490292, 160,        180) /* WieldDifficulty */
     , (490292, 169,         16) /* TsysMutationData */
     , (490292, 265,         53) /* EquipmentSetId - CloakMagicDefense */
     , (490292, 267,     604800) /* Lifespan */
     , (490292, 319,          5) /* ItemMaxLevel */
     , (490292, 320,          2) /* ItemXpStyle - ScalesWithLevel */
	 , (490292, 352,          2) /* CloakWeaveProc -200 dmg */
     , (490292, 371,          3) /* GearDamageResist */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490292,   4, 31000000000) /* ItemTotalXp */
     , (490292,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490292,  22, True ) /* Inscribable */
     , (490292,  84, True ) /* IgnoreCloIcons */
     , (490292, 100, False) /* Dyable */
     , (490292, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490292,  13,     0.8) /* ArmorModVsSlash */
     , (490292,  14,     0.8) /* ArmorModVsPierce */
     , (490292,  15,       1) /* ArmorModVsBludgeon */
     , (490292,  16,     0.2) /* ArmorModVsCold */
     , (490292,  17,     0.2) /* ArmorModVsFire */
     , (490292,  18,     0.1) /* ArmorModVsAcid */
     , (490292,  19,     0.2) /* ArmorModVsElectric */
     , (490292, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490292,   1, 'Light Weapon Cloak of Protection') /* Name */
     , (490292,  16, 'Light Weapon Cloak of Protection') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490292,   1, 0x02001B2A) /* Setup */
     , (490292,   3, 0x20000014) /* SoundTable */
     , (490292,   6, 0x100007F2) /* PaletteBase */
     /*, (490292,   7, 0x100007EB) /* ClothingBase */
	 , (490292,   7, 0x100007F6) /* ClothingBase */
     , (490292,   8, 0x0600709C) /* Icon */
     , (490292,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490292,  36, 0x0E00001E) /* MutateFilter */
     , (490292,  50, 100691000) /* IconOverlay */
     /*, (490292,  55,       5753)  ProcSpell */;
