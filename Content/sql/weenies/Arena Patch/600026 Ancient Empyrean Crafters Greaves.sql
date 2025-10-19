DELETE FROM `weenie` WHERE `class_Id` = 600026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600026, 'ace600026-prismaticshadowgreaves', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600026,   1,          2) /* ItemType - Armor */
     , (600026,   3,          9) /* PaletteTemplate - Grey */
     , (600026,   4,        512) /* ClothingPriority - OuterwearLowerLegs */
     , (600026,   5,        919) /* EncumbranceVal */
     , (600026,   9,      16384) /* ValidLocations - LowerLegArmor */
     , (600026,  19,       100) /* Value */
     , (600026,  28,        0) /* ArmorLevel */
     , (600026,  33,          -1) /* Bonded - Slipper */
     , (600026,  36,       9999) /* ResistMagic */
     , (600026,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600026, 106,        999) /* ItemSpellcraft */
     , (600026, 107,      10000) /* ItemCurMana */
     , (600026, 108,      10000) /* ItemMaxMana */
     , (600026, 158,          1) /* WieldRequirements - Skill */
     , (600026, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600026, 160,        450) /* WieldDifficulty */
     , (600026, 265,        18) /* EquipmentSetId - CraftersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600026,  22, True ) /* Inscribable */
     , (600026,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600026,  13,     0.5) /* ArmorModVsSlash */
     , (600026,  14,     0.5) /* ArmorModVsPierce */
     , (600026,  15,     0.5) /* ArmorModVsBludgeon */
     , (600026,  16,       0.5) /* ArmorModVsCold */
     , (600026,  17,       0.5) /* ArmorModVsFire */
     , (600026,  18,       0.5) /* ArmorModVsAcid */
     , (600026,  19,       0.5) /* ArmorModVsElectric */
     , (600026, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600026,   1, 'Ancient Empyrean Crafters Greaves') /* Name */
	, (600026,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600026,   1, 0x020000D1) /* Setup */
     , (600026,   3, 0x20000014) /* SoundTable */
     , (600026,   7, 0x10000850) /* ClothingBase */
     , (600026,   8, 0x0600746A) /* Icon */
     , (600026,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600026,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600026,  3738,      2)  /* Prodigal Strength */
     , (600026,  3864,      2)  /* Zongo's Fist */
	 , (600026,  2995,      2)  /* Power of the Dragon */
	 , (600026,  6285,      2)  /* Paragon's Strength V */
	 , (600026,  6107,      2)  /* Legendary Strength */
	 , (600026,  4749,      2)  /* Master Brute's Strength */
     , (600026,  3886,      2)  /* Magic Disarmament */
	 , (600026,  2994,      2)  /* Plague */
	 , (600026,  4728,      2)  /* Poison */
     , (600026,  2421,      2)  /* Paralyzing Fear */
	 , (600026,  6036,      2)  /* No Escape */
	 , (600026,  3916,      2)  /* Flayed Flesh */
     , (600026,  4197,      2)  /* Naked to the Elements */;
