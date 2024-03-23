DELETE FROM `weenie` WHERE `class_Id` = 490293;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490293, 'ace490293-cloakofdestructionLight', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490293,   1,          4) /* ItemType - Clothing */
     , (490293,   3,          2) /* PaletteTemplate - Blue */
     , (490293,   4,     131072) /* ClothingPriority - 131072 */
     , (490293,   5,         75) /* EncumbranceVal */
     , (490293,   9,  134217728) /* ValidLocations - Cloak */
     , (490293,  16,          1) /* ItemUseable - No */
     , (490293,  18,          1) /* UiEffects - Magical */
     , (490293,  19,     5) /* Value */
     , (490293,  28,          0) /* ArmorLevel */
     , (490293,  36,       9999) /* ResistMagic */
     , (490293,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490293, 158,          7) /* WieldRequirements - Level */
     , (490293, 159,          1) /* WieldSkillType - Axe */
     , (490293, 160,        180) /* WieldDifficulty */
     , (490293, 169,         16) /* TsysMutationData */
     , (490293, 265,         19) /* EquipmentSetId - CloakMagicDefense */
     , (490293, 267,     604800) /* Lifespan */
     , (490293, 319,          5) /* ItemMaxLevel */
     , (490293, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (490293, 370,          3) /* GearDamage */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490293,   4, 31000000000) /* ItemTotalXp */
     , (490293,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490293,  22, True ) /* Inscribable */
     , (490293,  84, True ) /* IgnoreCloIcons */
     , (490293, 100, False) /* Dyable */
     , (490293, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490293,  13,     0.8) /* ArmorModVsSlash */
     , (490293,  14,     0.8) /* ArmorModVsPierce */
     , (490293,  15,       1) /* ArmorModVsBludgeon */
     , (490293,  16,     0.2) /* ArmorModVsCold */
     , (490293,  17,     0.2) /* ArmorModVsFire */
     , (490293,  18,     0.1) /* ArmorModVsAcid */
     , (490293,  19,     0.2) /* ArmorModVsElectric */
     , (490293, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490293,   1, 'Light Weapon Cloak of Destruction') /* Name */
     , (490293,  16, 'Light Weapon Cloak of Destruction') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490293,   1, 0x02001B2A) /* Setup */
     , (490293,   3, 0x20000014) /* SoundTable */
     , (490293,   6, 0x100007F2) /* PaletteBase */
     /*, (490293,   7, 0x100007EB) /* ClothingBase */
	 , (490293,   7, 0x1000085E) /* ClothingBase */
     , (490293,   8, 0x0600709C) /* Icon */
     , (490293,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490293,  36, 0x0E00001E) /* MutateFilter */
     , (490293,  50, 100691000) /* IconOverlay */
     , (490293,  55,       5753) /* ProcSpell */;
