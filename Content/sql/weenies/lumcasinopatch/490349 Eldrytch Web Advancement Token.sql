DELETE FROM `weenie` WHERE `class_Id` = 490349;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490349, 'ace490349-eldrytchwebpromotiontoken', 38, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490349,   1,         2048) /* ItemType - Money */
     , (490349,   5,          0) /* EncumbranceVal */
     , (490349,  16,          1) /* ItemUseable - No */
     , (490349,  19,          25) /* Value */
     , (490349,  33,          1) /* Bonded - Bonded */
     , (490349,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490349, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490349,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490349,   1, 'Eldrytch Web Advancement Token') /* Name */
     , (490349,  14, 'This token may be used to advance to the rank of Master in Society. Hand this token to the Promotion officer in your stronghold.') /* Use */
     , (490349,  16, 'A token, given to you as a reward for accomplishing goals set to you by those in your Society.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490349,   1, 0x02000172) /* Setup */
     , (490349,   8, 0x0600699e) /* Icon */
	 , (490349,  52, 0x06005B0C) /* IconUnderlay */
     , (490349,  50, 0x06006902) /* IconOverlay */;
