DELETE FROM `weenie` WHERE `class_Id` = 490348;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490348, 'ace490348-Radiantbloodpromotiontoken', 38, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490348,   1,         2048) /* ItemType - Money */
     , (490348,   5,          0) /* EncumbranceVal */
     , (490348,  16,          1) /* ItemUseable - No */
     , (490348,  19,          25) /* Value */
     , (490348,  33,          1) /* Bonded - Bonded */
     , (490348,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490348, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490348,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490348,   1, 'Radiant Blood Advancement Token') /* Name */
     , (490348,  14, 'This token may be used to advance to the rank of Master in Society. Hand this token to the Promotion officer in your stronghold.') /* Use */
     , (490348,  16, 'A token, given to you as a reward for accomplishing goals set to you by those in your Society.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490348,   1, 0x02000172) /* Setup */
     , (490348,   8, 0x0600699e) /* Icon */
	 , (490348,  52, 0x06005B0C) /* IconUnderlay */
     , (490348,  50, 0x06006903) /* IconOverlay */;
