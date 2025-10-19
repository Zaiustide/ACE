DELETE FROM `weenie` WHERE `class_Id` = 600024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600024, 'ace600024-prismaticshadowsollerets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600024,   1,          2) /* ItemType - Armor */
     , (600024,   3,          9) /* PaletteTemplate - Grey */
     , (600024,   4,      65536) /* ClothingPriority - Feet */
     , (600024,   5,        540) /* EncumbranceVal */
     , (600024,   9,        256) /* ValidLocations - FootWear */
     , (600024,  16,          1) /* ItemUseable - No */
     , (600024,  19,       100) /* Value */
     , (600024,  28,        0) /* ArmorLevel */
     , (600024,  33,          -1) /* Bonded - Slipper */
     , (600024,  36,       9999) /* ResistMagic */
     , (600024,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600024, 106,        999) /* ItemSpellcraft */
     , (600024, 107,      10000) /* ItemCurMana */
     , (600024, 108,      10000) /* ItemMaxMana */
     , (600024, 158,          1) /* WieldRequirements - Skill */
     , (600024, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600024, 160,        450) /* WieldDifficulty */
     , (600024, 265,        17) /* EquipmentSetId - TinkersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600024,  22, True ) /* Inscribable */
     , (600024,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600024,  13,     0.5) /* ArmorModVsSlash */
     , (600024,  14,     0.5) /* ArmorModVsPierce */
     , (600024,  15,     0.5) /* ArmorModVsBludgeon */
     , (600024,  16,       0.5) /* ArmorModVsCold */
     , (600024,  17,       0.5) /* ArmorModVsFire */
     , (600024,  18,       0.5) /* ArmorModVsAcid */
     , (600024,  19,       0.5) /* ArmorModVsElectric */
     , (600024, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600024,   1, 'Ancient Empyrean Crafters Sollerets') /* Name */
	, (600024,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600024,   1, 0x020000DE) /* Setup */
     , (600024,   3, 0x20000014) /* SoundTable */
     , (600024,   7, 0x10000853) /* ClothingBase */
     , (600024,   8, 0x0600746D) /* Icon */
     , (600024,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600024,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600024,  3705,      2)  /* Prodigal Focus */
     , (600024,  3530,      2)  /* Ketnan's Eye */
	 , (600024,  2348,      2)  /* Brilliance */
	 , (600024,  2347,      2)  /* Concentration */
	 , (600024,  6105,      2)  /* Legendary Focus */
	 , (600024,  4281,      2)  /* Deck of Eyes Favor */
	 , (600024,  4741,      2)  /* Master Sage's Focus */
	 , (600024,  6275,      2)  /* Paragon's Focus V */
     , (600024,  3886,      2)  /* Magic Disarmament */
	 , (600024,  2994,      2)  /* Plague */
	 , (600024,  4728,      2)  /* Poison */
     , (600024,  2421,      2)  /* Paralyzing Fear */
	 , (600024,  6036,      2)  /* No Escape */
	 , (600024,  3916,      2)  /* Flayed Flesh */
     , (600024,  4197,      2)  /* Naked to the Elements */;