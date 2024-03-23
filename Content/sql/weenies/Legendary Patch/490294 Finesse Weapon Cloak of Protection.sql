DELETE FROM `weenie` WHERE `class_Id` = 490294;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490294, 'ace490294-cloakofprotectionFinesse', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490294,   1,          4) /* ItemType - Clothing */
     , (490294,   3,          2) /* PaletteTemplate - Blue */
     , (490294,   4,     131072) /* ClothingPriority - 131072 */
     , (490294,   5,         75) /* EncumbranceVal */
     , (490294,   9,  134217728) /* ValidLocations - Cloak */
     , (490294,  16,          1) /* ItemUseable - No */
     , (490294,  18,          1) /* UiEffects - Magical */
     , (490294,  19,     5) /* Value */
     , (490294,  28,          0) /* ArmorLevel */
     , (490294,  36,       9999) /* ResistMagic */
     , (490294,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490294, 158,          7) /* WieldRequirements - Level */
     , (490294, 159,          1) /* WieldSkillType - Axe */
     , (490294, 160,        180) /* WieldDifficulty */
     , (490294, 169,         16) /* TsysMutationData */
     , (490294, 265,         19) /* EquipmentSetId - CloakMagicDefense */
     , (490294, 267,     604800) /* Lifespan */
     , (490294, 319,          5) /* ItemMaxLevel */
     , (490294, 320,          2) /* ItemXpStyle - ScalesWithLevel */
	 , (490294, 352,          2) /* CloakWeaveProc -200 dmg */
     , (490294, 371,          3) /* GearDamageResist */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490294,   4, 31000000000) /* ItemTotalXp */
     , (490294,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490294,  22, True ) /* Inscribable */
     , (490294,  84, True ) /* IgnoreCloIcons */
     , (490294, 100, False) /* Dyable */
     , (490294, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490294,  13,     0.8) /* ArmorModVsSlash */
     , (490294,  14,     0.8) /* ArmorModVsPierce */
     , (490294,  15,       1) /* ArmorModVsBludgeon */
     , (490294,  16,     0.2) /* ArmorModVsCold */
     , (490294,  17,     0.2) /* ArmorModVsFire */
     , (490294,  18,     0.1) /* ArmorModVsAcid */
     , (490294,  19,     0.2) /* ArmorModVsElectric */
     , (490294, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490294,   1, 'Finesse Weapon Cloak of Protection') /* Name */
     , (490294,  16, 'Finesse Weapon Cloak of Protection') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490294,   1, 0x02001B2A) /* Setup */
     , (490294,   3, 0x20000014) /* SoundTable */
     , (490294,   6, 0x100007F2) /* PaletteBase */
     /*, (490294,   7, 0x100007EB) /* ClothingBase */
	 , (490294,   7, 0x100007F6) /* ClothingBase */
     , (490294,   8, 0x0600709C) /* Icon */
     , (490294,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490294,  36, 0x0E00001E) /* MutateFilter */
     , (490294,  50, 100691000) /* IconOverlay */
     /*, (490294,  55,       5753)  ProcSpell */;
