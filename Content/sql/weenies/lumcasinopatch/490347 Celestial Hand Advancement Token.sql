DELETE FROM `weenie` WHERE `class_Id` = 490347;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490347, 'ace490347-celestialhandpromotiontoken', 38, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490347,   1,         2048) /* ItemType - Money */
     , (490347,   5,          0) /* EncumbranceVal */
     , (490347,  16,          1) /* ItemUseable - No */
     , (490347,  19,          25) /* Value */
     , (490347,  33,          1) /* Bonded - Bonded */
     , (490347,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490347, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490347,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490347,   1, 'Celestial Hand Advancement Token') /* Name */
     , (490347,  14, 'This token may be used to advance to the rank of Master in Society. Hand this token to the Promotion officer in your stronghold.') /* Use */
     , (490347,  16, 'A token, given to you as a reward for accomplishing goals set to you by those in your Society.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490347,   1, 0x02000172) /* Setup */
     , (490347,   8, 0x0600699e) /* Icon */
	 , (490347,  52, 0x06005B0C) /* IconUnderlay */
     , (490347,  50, 0x06006901) /* IconOverlay */;
