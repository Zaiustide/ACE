DELETE FROM `weenie` WHERE `class_Id` = 490175;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490175, 'ace490175-Drudge Aviator Compass', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490175,   1,        128) /* ItemType - Misc */
     , (490175,   5,        10) /* EncumbranceVal */
     , (490175,  11,        10) /* MaxStackSize */
     , (490175,  12,          1) /* StackSize */
     , (490175,  13,        10) /* StackUnitEncumbrance */
     , (490175,  15,      10000) /* StackUnitValue */
     , (490175,  16,          1) /* ItemUseable - No */
     , (490175,  19,      10000) /* Value */
     , (490175,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490175,   1, 'Drudge Aviator Compass') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490175,   1, 0x020012E1) /* Setup */
     , (490175,   3, 0x20000014) /* SoundTable */
     , (490175,   8, 0x06003778) /* Icon */
     , (490175,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490175,  52, 0x06005B0C) /* IconUnderlay */;
