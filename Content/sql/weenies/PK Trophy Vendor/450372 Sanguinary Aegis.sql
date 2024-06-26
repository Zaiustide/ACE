DELETE FROM `weenie` WHERE `class_Id` = 450372;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (450372, 'shieldsanguinarywhitetailor', 1, '2021-11-17 16:56:08') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (450372,   1,          2) /* ItemType - Armor */
     , (450372,   3,         61) /* PaletteTemplate - White */
     , (450372,   5,        0) /* EncumbranceVal */
     , (450372,   8,        140) /* Mass */
     , (450372,   9,    2097152) /* ValidLocations - Shield */
     , (450372,  16,          1) /* ItemUseable - No */
     , (450372,  19,          20) /* Value */
     , (450372,  27,          2) /* ArmorType - Leather */
     , (450372,  28,          0) /* ArmorLevel */
     , (450372,  51,          4) /* CombatUse - Shield */
     , (450372,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (450372, 114,          0) /* Attuned - Normal */
     , (450372, 150,        103) /* HookPlacement - Hook */
     , (450372, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (450372,  22, True ) /* Inscribable */
     , (450372,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (450372,  13,       0) /* ArmorModVsSlash */
     , (450372,  14,       0) /* ArmorModVsPierce */
     , (450372,  15,       0) /* ArmorModVsBludgeon */
     , (450372,  16,       0) /* ArmorModVsCold */
     , (450372,  17,       0) /* ArmorModVsFire */
     , (450372,  18,       0) /* ArmorModVsAcid */
     , (450372,  19,       0) /* ArmorModVsElectric */
     , (450372,  39,       1) /* DefaultScale */
     , (450372, 110,       1) /* BulkMod */
     , (450372, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (450372,   1, 'Sanguinary Aegis') /* Name */
     , (450372,  16, 'A crystalline barrier infused with the magical properties of distilled chorizite.  Although the Aegis provides no physical protection, the aura generated by the shield will negate a portion of all magical projectile attacks, based upon the wielder''s abilities.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (450372,   1, 0x0200057C) /* Setup */
     , (450372,   3, 0x20000014) /* SoundTable */
     , (450372,   6, 0x04000BEF) /* PaletteBase */
     , (450372,   7, 0x1000015B) /* ClothingBase */
     , (450372,   8, 0x060012F7) /* Icon */
     , (450372,  22, 0x3400002B) /* PhysicsEffectTable */;
