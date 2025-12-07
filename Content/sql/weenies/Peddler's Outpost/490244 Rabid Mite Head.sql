DELETE FROM `weenie` WHERE `class_Id` = 490244;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490244, 'ace490244-Rabid Mite Head', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490244,   1,        128) /* ItemType - Misc */
     , (490244,   5,        10) /* EncumbranceVal */
     , (490244,  11,        1000) /* MaxStackSize */
     , (490244,  12,          1) /* StackSize */
     , (490244,  13,        10) /* StackUnitEncumbrance */
     , (490244,  15,      10000) /* StackUnitValue */
     , (490244,  16,          1) /* ItemUseable - No */
     , (490244,  19,      10000) /* Value */
     , (490244,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490244,   1, 'Rabid Mite Head') /* Name */
     , (490244,  16, 'The decapatated head of a Rabid Mite.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490244,   1, 0x020011D1) /* Setup */
     , (490244,   3, 0x20000014) /* SoundTable */
     , (490244,   6, 0x04000BEF) /* PaletteBase */
     , (490244,   7, 0x10000178) /* ClothingBase */
     , (490244,   8, 0x060035DB) /* Icon */
     , (490244,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490244,  52, 0x06005B0C) /* IconUnderlay */;
