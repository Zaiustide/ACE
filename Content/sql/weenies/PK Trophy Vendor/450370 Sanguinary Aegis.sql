DELETE FROM `weenie` WHERE `class_Id` = 450370;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (450370, 'shieldsanguinarypinktailor', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (450370,   1,          2) /* ItemType - Armor */
     , (450370,   3,         82) /* PaletteTemplate - PinkPurple */
     , (450370,   5,        0) /* EncumbranceVal */
     , (450370,   8,        140) /* Mass */
     , (450370,   9,    2097152) /* ValidLocations - Shield */
     , (450370,  16,          1) /* ItemUseable - No */
     , (450370,  19,          20) /* Value */
     , (450370,  27,          2) /* ArmorType - Leather */
     , (450370,  28,          0) /* ArmorLevel */
     , (450370,  51,          4) /* CombatUse - Shield */
     , (450370,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (450370, 150,        103) /* HookPlacement - Hook */
     , (450370, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (450370,  22, True ) /* Inscribable */
     , (450370,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (450370,  13,       0) /* ArmorModVsSlash */
     , (450370,  14,       0) /* ArmorModVsPierce */
     , (450370,  15,       0) /* ArmorModVsBludgeon */
     , (450370,  16,       0) /* ArmorModVsCold */
     , (450370,  17,       0) /* ArmorModVsFire */
     , (450370,  18,       0) /* ArmorModVsAcid */
     , (450370,  19,       0) /* ArmorModVsElectric */
     , (450370,  39,       1) /* DefaultScale */
     , (450370, 110,       1) /* BulkMod */
     , (450370, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (450370,   1, 'Sanguinary Aegis') /* Name */
     , (450370,  16, 'A crystalline barrier infused with the magical properties of distilled chorizite.  Although the Aegis provides no physical protection, the aura generated by the shield will negate a portion of all magical projectile attacks, based upon the wielder''s abilities.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (450370,   1, 0x0200057A) /* Setup */
     , (450370,   3, 0x20000014) /* SoundTable */
     , (450370,   6, 0x04000BEF) /* PaletteBase */
     , (450370,   7, 0x10000159) /* ClothingBase */
     , (450370,   8, 0x060012F7) /* Icon */
     , (450370,  22, 0x3400002B) /* PhysicsEffectTable */;