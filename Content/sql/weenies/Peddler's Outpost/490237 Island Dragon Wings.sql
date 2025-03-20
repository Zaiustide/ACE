DELETE FROM `weenie` WHERE `class_Id` = 490237;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490237, 'ace490237-Island Dragon Wing', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490237,   1,        128) /* ItemType - Misc */
     , (490237,   5,        10) /* EncumbranceVal */
	 , (490237,   3,         61) /* PaletteTemplate - White */
     , (490237,  11,        10) /* MaxStackSize */
     , (490237,  12,          1) /* StackSize */
     , (490237,  13,        10) /* StackUnitEncumbrance */
     , (490237,  15,      10000) /* StackUnitValue */
     , (490237,  16,          1) /* ItemUseable - No */
	 , (490237,  33,          1) /* Bonded - Bonded */
     , (490237, 114,          1) /* Attuned - Attuned */
     , (490237,  19,      10000) /* Value */
     , (490237,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490237,   1, 'Island Dragon Wing') /* Name */
     , (490237,  16, 'The wings of a departed Adolescent Island Dragon.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490237,   1, 0x02000181) /* Setup */
     , (490237,   3, 0x20000014) /* SoundTable */
     , (490237,   6, 0x04000BEF) /* PaletteBase */
     , (490237,   7, 0x10000178) /* ClothingBase */
     , (490237,   8, 0x0600349E) /* Icon */
     , (490237,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490237,  52, 0x06005B0C) /* IconUnderlay */;
