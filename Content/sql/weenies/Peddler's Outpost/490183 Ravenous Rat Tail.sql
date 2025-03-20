DELETE FROM `weenie` WHERE `class_Id` = 490183;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490183, 'ace490183-Ravenous Rat Tail', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490183,   1,        128) /* ItemType - Misc */
     , (490183,   5,        100) /* EncumbranceVal */
     , (490183,  11,        100) /* MaxStackSize */
     , (490183,  12,          1) /* StackSize */
     , (490183,  13,        100) /* StackUnitEncumbrance */
     , (490183,  15,      10000) /* StackUnitValue */
	 , (490183,  33,          1) /* Bonded - Bonded */
     , (490183, 114,          1) /* Attuned - Attuned */
     , (490183,  16,          1) /* ItemUseable - No */
     , (490183,  19,      10000) /* Value */
     , (490183,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490183,   1, 'Ravenous Rat Tail') /* Name */
     , (490183,  16, 'A long tail from a Ravenous Rat.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490183,   1, 0x02000181) /* Setup */
     , (490183,   3, 0x20000014) /* SoundTable */
     , (490183,   6, 0x04000BEF) /* PaletteBase */
     , (490183,   7, 0x10000178) /* ClothingBase */
     , (490183,   8, 0x06001A73) /* Icon */
     , (490183,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490183,  52, 0x06005B0C) /* IconUnderlay */;
