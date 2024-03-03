DELETE FROM `weenie` WHERE `class_Id` = 490248;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490248, 'ace490248-Maniacal Shreth Hide', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490248,   1,        128) /* ItemType - Misc */
     , (490248,   5,        10) /* EncumbranceVal */
     , (490248,  11,        10) /* MaxStackSize */
     , (490248,  12,          1) /* StackSize */
     , (490248,  13,        10) /* StackUnitEncumbrance */
     , (490248,  15,      10000) /* StackUnitValue */
     , (490248,  16,          1) /* ItemUseable - No */
     , (490248,  19,      10000) /* Value */
     , (490248,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490248,   1, 'Maniacal Shreth Hide') /* Name */
     , (490248,  16, 'Thick hide from a deceased Maniacal Shreth.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490248,   1, 0x020011D1) /* Setup */
     , (490248,   3, 0x20000014) /* SoundTable */
     , (490248,   6, 0x04000BEF) /* PaletteBase */
     , (490248,   7, 0x10000178) /* ClothingBase */
     , (490248,   8, 0x06002BBD) /* Icon */
     , (490248,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490248,  52, 0x06005B0C) /* IconUnderlay */;
