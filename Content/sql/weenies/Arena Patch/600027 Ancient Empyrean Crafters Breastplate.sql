DELETE FROM `weenie` WHERE `class_Id` = 600027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600027, 'ace600027-prismaticshadowbreastplate', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600027,   1,          2) /* ItemType - Armor */
     , (600027,   3,          9) /* PaletteTemplate - Grey */
     , (600027,   4,       1024) /* ClothingPriority - OuterwearChest */
     , (600027,   5,       2200) /* EncumbranceVal */
     , (600027,   9,        512) /* ValidLocations - ChestArmor */
     , (600027,  16,          1) /* ItemUseable - No */
     , (600027,  19,       25) /* Value */
     , (600027,  28,        0) /* ArmorLevel */
     , (600027,  33,          -1) /* Bonded - Slipper */
     , (600027,  36,       9999) /* ResistMagic */
     , (600027,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600027, 106,        999) /* ItemSpellcraft */
     , (600027, 107,      10000) /* ItemCurMana */
     , (600027, 108,      10000) /* ItemMaxMana */
     , (600027, 158,          1) /* WieldRequirements - Skill */
     , (600027, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600027, 160,        450) /* WieldDifficulty */
     , (600027, 265,        18) /* EquipmentSetId - CraftersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600027,  22, True ) /* Inscribable */
     , (600027,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600027,  13,     0.5) /* ArmorModVsSlash */
     , (600027,  14,     0.5) /* ArmorModVsPierce */
     , (600027,  15,     0.5) /* ArmorModVsBludgeon */
     , (600027,  16,       0.5) /* ArmorModVsCold */
     , (600027,  17,       0.5) /* ArmorModVsFire */
     , (600027,  18,       0.5) /* ArmorModVsAcid */
     , (600027,  19,       0.5) /* ArmorModVsElectric */
     , (600027, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600027,   1, 'Ancient Empyrean Crafters Breastplate') /* Name */
	, (600027,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600027,   1, 0x020000D2) /* Setup */
     , (600027,   3, 0x20000014) /* SoundTable */
     , (600027,   7, 0x1000084D) /* ClothingBase */
     , (600027,   8, 0x06007467) /* Icon */
     , (600027,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600027,  52, 0x060065FC) /* IconUnderlay */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600027,  3683,      2)  /* Prodigal Armor Expertise */
     , (600027,  4512,      2)  /* Incantation of Armor Tinkering Expertise Self */
	 , (600027,  6042,      2)  /* Legendary Armor Tinkering Expertise */
	 , (600027,  5597,      2)  /* Weave of Armor Tinkering V */
     , (600027,  3886,      2)  /* Magic Disarmament */
	 , (600027,  2994,      2)  /* Plague */
	 , (600027,  4728,      2)  /* Poison */
     , (600027,  2421,      2)  /* Paralyzing Fear */
	 , (600027,  6036,      2)  /* No Escape */
	 , (600027,  3916,      2)  /* Flayed Flesh */
     , (600027,  4197,      2)  /* Naked to the Elements */;

