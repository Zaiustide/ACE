DELETE FROM `weenie` WHERE `class_Id` = 600020;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600020, 'ace600020-prismaticshadowbracers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600020,   1,          2) /* ItemType - Armor */
     , (600020,   3,          9) /* PaletteTemplate - Grey */
     , (600020,   4,       8192) /* ClothingPriority - OuterwearLowerArms */
     , (600020,   5,        540) /* EncumbranceVal */
     , (600020,   9,       4096) /* ValidLocations - LowerArmArmor */
     , (600020,  16,          1) /* ItemUseable - No */
     , (600020,  19,       100) /* Value */
     , (600020,  28,        0) /* ArmorLevel */
     , (600020,  33,          -1) /* Bonded - Slipper */
     , (600020,  36,       9999) /* ResistMagic */
     , (600020,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600020, 106,        999) /* ItemSpellcraft */
     , (600020, 107,      10000) /* ItemCurMana */
     , (600020, 108,      10000) /* ItemMaxMana */
     , (600020, 158,          1) /* WieldRequirements - Skill */
     , (600020, 159,          18) /* WieldSkillType - Item Tinkering */
     , (600020, 160,        450) /* WieldDifficulty */
     , (600020, 265,        17) /* EquipmentSetId - TinkersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600020,  22, True ) /* Inscribable */
     , (600020,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600020,  13,     0.5) /* ArmorModVsSlash */
     , (600020,  14,     0.5) /* ArmorModVsPierce */
     , (600020,  15,     0.5) /* ArmorModVsBludgeon */
     , (600020,  16,       0.5) /* ArmorModVsCold */
     , (600020,  17,       0.5) /* ArmorModVsFire */
     , (600020,  18,       0.5) /* ArmorModVsAcid */
     , (600020,  19,       0.5) /* ArmorModVsElectric */
     , (600020, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600020,   1, 'Ancient Empyrean Crafters Bracers') /* Name */
	, (600020,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600020,   1, 0x020000D1) /* Setup */
     , (600020,   3, 0x20000014) /* SoundTable */
     , (600020,   7, 0x1000084C) /* ClothingBase */
     , (600020,   8, 0x06007466) /* Icon */
     , (600020,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600020,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600020,  5025,      2)  /* Prodigal Item Expertise */
     , (600020,  4566,      2)  /* Incantation of Item Tinkering Expertise Self*/
	 , (600020,  6057,      2)  /* Legendary Item Tinkering Expertise */
	 , (600020,  5657,      2)  /* Weave of Item Tinkering V */
     , (600020,  3886,      2)  /* Magic Disarmament */
	 , (600020,  2994,      2)  /* Plague */
     , (600020,  2421,      2)  /* Paralyzing Fear */
	 , (600020,  3916,      2)  /* Flayed Flesh */
     , (600020,  4197,      2)  /* Naked to the Elements */;