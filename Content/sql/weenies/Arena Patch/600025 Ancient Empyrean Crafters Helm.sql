DELETE FROM `weenie` WHERE `class_Id` = 600025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600025, 'ace600025-prismaticshadowhelm', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600025,   1,          2) /* ItemType - Armor */
     , (600025,   3,          9) /* PaletteTemplate - Grey */
     , (600025,   4,      16384) /* ClothingPriority - Head */
     , (600025,   5,        666) /* EncumbranceVal */
     , (600025,   9,          1) /* ValidLocations - HeadWear */
     , (600025,  16,          1) /* ItemUseable - No */
     , (600025,  19,       100) /* Value */
     , (600025,  28,        0) /* ArmorLevel */
     , (600025,  33,          -1) /* Bonded - Slipper */
     , (600025,  36,       9999) /* ResistMagic */
     , (600025,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (600025, 106,        999) /* ItemSpellcraft */
     , (600025, 107,      10000) /* ItemCurMana */
     , (600025, 108,      10000) /* ItemMaxMana */
     , (600025, 158,          1) /* WieldRequirements - Skill */
     , (600025, 159,          29) /* WieldSkillType - Armor Tinkering */
     , (600025, 160,        450) /* WieldDifficulty */
     , (600025, 265,        17) /* EquipmentSetId - TinkersSet */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600025,  22, True ) /* Inscribable */
     , (600025,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600025,  13,     0.5) /* ArmorModVsSlash */
     , (600025,  14,     0.5) /* ArmorModVsPierce */
     , (600025,  15,     0.5) /* ArmorModVsBludgeon */
     , (600025,  16,       0.5) /* ArmorModVsCold */
     , (600025,  17,       0.5) /* ArmorModVsFire */
     , (600025,  18,       0.5) /* ArmorModVsAcid */
     , (600025,  19,       0.5) /* ArmorModVsElectric */
     , (600025, 165,       0.5) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600025,   1, 'Ancient Empyrean Crafters Helm') /* Name */
	, (600025,  16, 'Armor crafted in an ancient empyrean forge. It appears to have been made specifically for crafting however in the process appears to make the wearer more vulnerable.') /* LongDesc */;
	
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600025,   1, 0x02000268) /* Setup */
     , (600025,   3, 0x20000014) /* SoundTable */
     , (600025,   7, 0x10000851) /* ClothingBase */
     , (600025,   8, 0x0600746B) /* Icon */
     , (600025,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600025,  52, 0x060065FC) /* IconUnderlay */;
	 
	 INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (600025,  3700,      2)  /* Prodigal Endurance */
     , (600025,  3863,      2)  /* Hunter's Hardiness */
	 , (600025,  5329,      2)  /* Sigil of Fury XV (Endurance) */
	 , (600025,  3894,      2)  /* Dark Persistence */
	 , (600025,  6104,      2)  /* Legendary Endurance */
	 , (600025,  4737,      2)  /* Master Hero's Endurance */
	 , (600025,  6270,      2)  /* Paragon's Endurance V */
     , (600025,  3886,      2)  /* Magic Disarmament */
	 , (600025,  2994,      2)  /* Plague */
	 , (600025,  4728,      2)  /* Poison */
     , (600025,  2421,      2)  /* Paralyzing Fear */
	 , (600025,  6036,      2)  /* No Escape */
	 , (600025,  3916,      2)  /* Flayed Flesh */
     , (600025,  4197,      2)  /* Naked to the Elements */;
