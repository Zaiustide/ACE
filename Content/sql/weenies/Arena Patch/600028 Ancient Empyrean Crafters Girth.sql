DELETE FROM `weenie` WHERE `class_Id` = 600028;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600028, 'ace600028-prismaticshadowgirth', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600028,   1,          2) /* ItemType - Armor */
     , (600028,   3,          9) /* PaletteTemplate - Grey */
     , (600028,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (600028,   5,       1099) /* EncumbranceVal */
     , (600028,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (600028,  16,          1) /* ItemUseable - No */
     , (600028,  19,       100) /* Value */
     , (600028,  28,        0) /* ArmorLevel */
     , (600028,  33,          -1) /* Bonded - Slippery */
     , (600028,  36,       9999) /* ResistMagic */
     , (600028,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600028, 106,        999) /* ItemSpellcraft */
     , (600028, 107,      10000) /* ItemCurMana */
     , (600028, 108,      10000) /* ItemMaxMana */
     , (600028, 158,          1) /* WieldRequirements - Skill */
     , (600028, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600028, 160,        450) /* WieldDifficulty */
     , (600028, 265,        18) /* EquipmentSetId - CraftersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600028,  22, True ) /* Inscribable */
     , (600028,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600028,  13,     0.5) /* ArmorModVsSlash */
     , (600028,  14,     0.5) /* ArmorModVsPierce */
     , (600028,  15,     0.5) /* ArmorModVsBludgeon */
     , (600028,  16,       0.5) /* ArmorModVsCold */
     , (600028,  17,       0.5) /* ArmorModVsFire */
     , (600028,  18,       0.5) /* ArmorModVsAcid */
     , (600028,  19,       0.5) /* ArmorModVsElectric */
     , (600028, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600028,   1, 'Ancient Empyrean Crafters Girth') /* Name */
	, (600028,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600028,   1, 0x020000D7) /* Setup */
     , (600028,   3, 0x20000014) /* SoundTable */
     , (600028,   7, 0x1000084F) /* ClothingBase */
     , (600028,   8, 0x06007469) /* Icon */
     , (600028,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600028,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600028,  3744,      2)  /* Prodigal Weapon Expertise */
     , (600028,  4640,      2)  /* Incantation of Weapon Tinkering Expertise Self */
	 , (600028,  6039,      2)  /* Legendary Weapon Tinkering Expertise */
	 , (600028,  3861,      2)  /* Taste for Blood */
	 , (600028,  5752,      2)  /* Weave of the Weapon Tinkering V */
     , (600028,  3886,      2)  /* Magic Disarmament */
	 , (600028,  2994,      2)  /* Plague */
	 , (600028,  4728,      2)  /* Poison */
     , (600028,  2421,      2)  /* Paralyzing Fear */
	 , (600028,  6036,      2)  /* No Escape */
	 , (600028,  3916,      2)  /* Flayed Flesh */
     , (600028,  4197,      2)  /* Naked to the Elements */;
