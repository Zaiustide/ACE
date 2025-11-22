DELETE FROM `weenie` WHERE `class_Id` = 600021;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600021, 'ace600021-prismaticshadowpauldrons', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600021,   1,          2) /* ItemType - Armor */
     , (600021,   3,          9) /* PaletteTemplate - Grey */
     , (600021,   4,       4096) /* ClothingPriority - OuterwearUpperArms */
     , (600021,   5,        720) /* EncumbranceVal */
     , (600021,   9,       2048) /* ValidLocations - UpperArmArmor */
     , (600021,  16,          1) /* ItemUseable - No */
     , (600021,  19,       25) /* Value */
     , (600021,  28,        0) /* ArmorLevel */
     , (600021,  33,          -1) /* Bonded - Slippery */
     , (600021,  36,       9999) /* ResistMagic */
     , (600021,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600021, 106,        999) /* ItemSpellcraft */
     , (600021, 107,      10000) /* ItemCurMana */
     , (600021, 108,      10000) /* ItemMaxMana */
     , (600021, 158,          1) /* WieldRequirements - Skill */
     , (600021, 159,          30) /* WieldSkillType - MagicItemTinkering */
     , (600021, 160,        450) /* WieldDifficulty */
     , (600021, 265,        17) /* EquipmentSetId - TinkersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600021,  22, True ) /* Inscribable */
     , (600021,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600021,  13,     0.5) /* ArmorModVsSlash */
     , (600021,  14,     0.5) /* ArmorModVsPierce */
     , (600021,  15,     0.5) /* ArmorModVsBludgeon */
     , (600021,  16,       0.5) /* ArmorModVsCold */
     , (600021,  17,       0.5) /* ArmorModVsFire */
     , (600021,  18,       0.5) /* ArmorModVsAcid */
     , (600021,  19,       0.5) /* ArmorModVsElectric */
     , (600021, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600021,   1, 'Ancient Empyrean Crafters Pauldrons') /* Name */
	, (600021,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600021,   1, 0x020000D1) /* Setup */
     , (600021,   3, 0x20000014) /* SoundTable */
     , (600021,   7, 0x10000852) /* ClothingBase */
     , (600021,   8, 0x0600746C) /* Icon */
     , (600021,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600021,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600021,  3722,      2)  /* Prodigal Magic Item Expertise */
     , (600021,  4592,      2)  /* Incantation of Magic Item Tinkering Expertise Self */
	 , (600021,  6062,      2)  /* Legendary Magic Item Tinkering Expertise */
	 , (600021,  5686,      2)  /* Weave of Magic Item Tinkering V */
     , (600021,  3886,      2)  /* Magic Disarmament */
	 , (600021,  2994,      2)  /* Plague */
	 , (600021,  4728,      2)  /* Poison */
     , (600021,  2421,      2)  /* Paralyzing Fear */
	 , (600021,  3916,      2)  /* Flayed Flesh */
     , (600021,  4197,      2)  /* Naked to the Elements */;