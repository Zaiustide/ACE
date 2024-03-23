DELETE FROM `weenie` WHERE `class_Id` = 490295;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490295, 'ace490295-cloakofdestructionFinesse', 2, '2022-04-19 17:09:43') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490295,   1,          4) /* ItemType - Clothing */
     , (490295,   3,          2) /* PaletteTemplate - Blue */
     , (490295,   4,     131072) /* ClothingPriority - 131072 */
     , (490295,   5,         75) /* EncumbranceVal */
     , (490295,   9,  134217728) /* ValidLocations - Cloak */
     , (490295,  16,          1) /* ItemUseable - No */
     , (490295,  18,          1) /* UiEffects - Magical */
     , (490295,  19,     5) /* Value */
     , (490295,  28,          0) /* ArmorLevel */
     , (490295,  36,       9999) /* ResistMagic */
     , (490295,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490295, 158,          7) /* WieldRequirements - Level */
     , (490295, 159,          1) /* WieldSkillType - Axe */
     , (490295, 160,        180) /* WieldDifficulty */
     , (490295, 169,         16) /* TsysMutationData */
     , (490295, 265,         19) /* EquipmentSetId - CloakMagicDefense */
     , (490295, 267,     604800) /* Lifespan */
     , (490295, 319,          5) /* ItemMaxLevel */
     , (490295, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (490295, 370,          3) /* GearDamage */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (490295,   4, 31000000000) /* ItemTotalXp */
     , (490295,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490295,  22, True ) /* Inscribable */
     , (490295,  84, True ) /* IgnoreCloIcons */
     , (490295, 100, False) /* Dyable */
     , (490295, 112, True ) /* ProcSpellSelfTargeted */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490295,  13,     0.8) /* ArmorModVsSlash */
     , (490295,  14,     0.8) /* ArmorModVsPierce */
     , (490295,  15,       1) /* ArmorModVsBludgeon */
     , (490295,  16,     0.2) /* ArmorModVsCold */
     , (490295,  17,     0.2) /* ArmorModVsFire */
     , (490295,  18,     0.1) /* ArmorModVsAcid */
     , (490295,  19,     0.2) /* ArmorModVsElectric */
     , (490295, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490295,   1, 'Finesse Weapon Cloak of Destruction') /* Name */
     , (490295,  16, 'Finesse Weapon Cloak of Destruction') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490295,   1, 0x02001B2A) /* Setup */
     , (490295,   3, 0x20000014) /* SoundTable */
     , (490295,   6, 0x100007F2) /* PaletteBase */
     /*, (490295,   7, 0x100007EB) /* ClothingBase */
	 , (490295,   7, 0x1000085E) /* ClothingBase */
     , (490295,   8, 0x0600709C) /* Icon */
     , (490295,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490295,  36, 0x0E00001E) /* MutateFilter */
     , (490295,  50, 100691000) /* IconOverlay */
     , (490295,  55,       5753) /* ProcSpell */;
