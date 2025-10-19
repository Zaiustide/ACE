DELETE FROM `weenie` WHERE `class_Id` = 600023;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600023, 'ace600023-prismaticshadowgauntlets', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600023,   1,          2) /* ItemType - Armor */
     , (600023,   3,          9) /* PaletteTemplate - Grey */
     , (600023,   4,      32768) /* ClothingPriority - Hands */
     , (600023,   5,        919) /* EncumbranceVal */
     , (600023,   9,         32) /* ValidLocations - HandWear */
     , (600023,  16,          1) /* ItemUseable - No */
     , (600023,  19,       100) /* Value */
     , (600023,  28,        0) /* ArmorLevel */
     , (600023,  33,          -1) /* Bonded - Slippery */
     , (600023,  36,       9999) /* ResistMagic */
     , (600023,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600023, 106,        999) /* ItemSpellcraft */
     , (600023, 107,      10000) /* ItemCurMana */
     , (600023, 108,      10000) /* ItemMaxMana */
     , (600023, 158,          1) /* WieldRequirements - Skill */
     , (600023, 159,          18) /* WieldSkillType - Item Tinkering */
     , (600023, 160,        450) /* WieldDifficulty */
     , (600023, 265,        17) /* EquipmentSetId - TinkersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600023,  22, True ) /* Inscribable */
     , (600023,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600023,  13,     0.5) /* ArmorModVsSlash */
     , (600023,  14,     0.5) /* ArmorModVsPierce */
     , (600023,  15,     0.5) /* ArmorModVsBludgeon */
     , (600023,  16,       0.5) /* ArmorModVsCold */
     , (600023,  17,       0.5) /* ArmorModVsFire */
     , (600023,  18,       0.5) /* ArmorModVsAcid */
     , (600023,  19,       0.5) /* ArmorModVsElectric */
     , (600023, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600023,   1, 'Ancient Empyrean Crafters Gauntlets') /* Name */
	, (600023,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;
	
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600023,   1, 0x020000D8) /* Setup */
     , (600023,   3, 0x20000014) /* SoundTable */
     , (600023,   7, 0x1000084E) /* ClothingBase */
     , (600023,   8, 0x06007468) /* Icon */
     , (600023,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600023,  52, 0x060065FC) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600023,  3694,      2)  /* Prodigal Coordination */
     , (600023,  3533,      2)  /* Brighteyes' Favor */
	 , (600023,  6103,      2)  /* Legendary Coordination */
	 , (600023,  2993,      2)  /* Grace of the Unicorn */
	 , (600023,  3896,      2)  /* Dark Equilibrium */
	 , (600023,  4280,      2)  /* Deck of Hands Favor */
	 , (600023,  4733,      2)  /* Master Duelist's Coordination */
	 , (600023,  6265,      2)  /* Paragon's Coordination V */
     , (600023,  3886,      2)  /* Magic Disarmament */
	 , (600023,  2994,      2)  /* Plague */
	 , (600023,  4728,      2)  /* Poison */
     , (600023,  2421,      2)  /* Paralyzing Fear */
	 , (600023,  6036,      2)  /* No Escape */
	 , (600023,  3916,      2)  /* Flayed Flesh */
     , (600023,  4197,      2)  /* Naked to the Elements */;