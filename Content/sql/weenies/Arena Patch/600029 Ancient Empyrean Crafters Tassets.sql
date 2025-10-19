DELETE FROM `weenie` WHERE `class_Id` = 600029;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600029, 'ace600029-prismaticshadowtassets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600029,   1,          2) /* ItemType - Armor */
     , (600029,   3,          9) /* PaletteTemplate - Grey */
     , (600029,   4,        256) /* ClothingPriority - OuterwearUpperLegs */
     , (600029,   5,        919) /* EncumbranceVal */
     , (600029,   9,       8192) /* ValidLocations - UpperLegArmor */
     , (600029,  16,          1) /* ItemUseable - No */
     , (600029,  19,       100) /* Value */
     , (600029,  28,        0) /* ArmorLevel */
     , (600029,  33,          -1) /* Bonded - Slippery */
     , (600029,  36,       9999) /* ResistMagic */
     , (600029,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600029, 106,        999) /* ItemSpellcraft */
     , (600029, 107,      10000) /* ItemCurMana */
     , (600029, 108,      10000) /* ItemMaxMana */
     , (600029, 158,          1) /* WieldRequirements - Skill */
     , (600029, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600029, 160,        450) /* WieldDifficulty */
     , (600029, 265,        18) /* EquipmentSetId - CraftersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600029,  22, True ) /* Inscribable */
     , (600029,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600029,  13,     1.4) /* ArmorModVsSlash */
     , (600029,  14,     1.4) /* ArmorModVsPierce */
     , (600029,  15,     1.4) /* ArmorModVsBludgeon */
     , (600029,  16,       2) /* ArmorModVsCold */
     , (600029,  17,       2) /* ArmorModVsFire */
     , (600029,  18,       2) /* ArmorModVsAcid */
     , (600029,  19,       2) /* ArmorModVsElectric */
     , (600029,  39,    1.33) /* DefaultScale */
     , (600029, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600029,   1, 'Ancient Empyrean Crafters Tassets') /* Name */
	 , (600029,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600029,   1, 0x020000E0) /* Setup */
     , (600029,   3, 0x20000014) /* SoundTable */
     , (600029,   7, 0x1000084B) /* ClothingBase */
     , (600029,   8, 0x06007465) /* Icon */
     , (600029,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600029,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600029,  3693,      2)  /* Prodigal Cooking Mastery */
     , (600029,  4526,      2)  /* Incantation of Cooking Mastery Self */
	 , (600029,  5617,      2)  /* Weave of the Cooking V */
	 , (600029,  6045,      2)  /* Legendary Cooking Prowess */
	 , (600029,  3681,      2)  /* Prodigal Alchemy Mastery */
	 , (600029,  4506,      2)  /* Incantation of Alchemy Mastery Self */
	 , (600029,  4986,      2)  /* Assassin's Alchemy Kit */
	 , (600029,  6040,      2)  /* Legendary Alchemical Prowess */
	 , (600029,  5587,      2)  /* Weave of Alchemy V */
	 , (600029,  3704,      2)  /* Prodigal Fletching Mastery */
	 , (600029,  6052,      2)  /* Legendary Fletching Prowess */
	 , (600029,  5642,      2)  /* Weave of the Fletching V */
	 , (600029,  4552,      2)  /* Incantation of Fletching Mastery Self */
     , (600029,  3886,      2)  /* Magic Disarmament */
	 , (600029,  2994,      2)  /* Plague */
	 , (600029,  4728,      2)  /* Poison */
     , (600029,  2421,      2)  /* Paralyzing Fear */
	 , (600029,  6036,      2)  /* No Escape */
	 , (600029,  3916,      2)  /* Flayed Flesh */
     , (600029,  4197,      2)  /* Naked to the Elements */;
