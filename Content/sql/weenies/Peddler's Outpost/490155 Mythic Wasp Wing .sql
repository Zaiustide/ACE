DELETE FROM `weenie` WHERE `class_Id` = 490155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490155, 'ace490155-mythicwaspwing', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490155,   1,        128) /* ItemType - Misc */
     , (490155,   5,        10) /* EncumbranceVal */
     , (490155,  11,        1000) /* MaxStackSize */
     , (490155,  12,          1) /* StackSize */
     , (490155,  13,        10) /* StackUnitEncumbrance */
     , (490155,  15,      10000) /* StackUnitValue */
     , (490155,  16,          1) /* ItemUseable - No */
     , (490155,  19,      10000) /* Value */
     , (490155,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490155,   1, 'Mythic Wasp Wing') /* Name */
     , (490155,  16, 'A delicate wing from a Mythic Wasp.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490155,   1, 0x02000181) /* Setup */
     , (490155,   3, 0x20000014) /* SoundTable */
     , (490155,   8, 0x06005F5D) /* Icon */
     , (490155,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490155,  52, 0x06005B0C) /* IconUnderlay */;
