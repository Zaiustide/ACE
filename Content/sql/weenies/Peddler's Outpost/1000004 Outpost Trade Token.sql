DELETE FROM `weenie` WHERE `class_Id` = 1000004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000004, 'outposttrophy', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000004,   1,     128) /* ItemType - PromissoryNote */
     , (1000004,   5,          1) /* EncumbranceVal */
     , (1000004,   8,          1) /* Mass */
     , (1000004,   9,          0) /* ValidLocations - None */
     , (1000004,  11,        1000) /* MaxStackSize */
     , (1000004,  12,          1) /* StackSize */
     , (1000004,  13,          1) /* StackUnitEncumbrance */
     , (1000004,  14,          1) /* StackUnitMass */
     , (1000004,  15,          1) /* StackUnitValue */
     , (1000004,  16,          1) /* ItemUseable - No */
     , (1000004,  19,          1) /* Value */
     , (1000004,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000004,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000004,   1, 'Outpost Trade Token') /* Name */
     , (1000004,  20, 'Outpost Trade Tokens') /* PluralName */
	 , (1000004,  16, 'An ancient philter, filled to the brim with tears of blood collected from a fallen foe.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000004,  8, 0x06006213) /* Icon */;

