DELETE FROM `weenie` WHERE `class_Id` = 490161;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490161, 'Hay Stack', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490161,   1,        128) /* ItemType - Misc */
     , (490161,   5,        300) /* EncumbranceVal */
     , (490161,   8,      14000) /* Mass */
     , (490161,  16,          1) /* ItemUseable - No */
     , (490161,  19,       6000) /* Value */
     , (490161,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490161, 150,        103) /* HookPlacement - Hook */
     , (490161, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490161,  13, True ) /* Ethereal */
     , (490161,   1, True ) /* Stuck */
     , (490161,  24, True ) /* UiHidden */
     , (490161,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490161,   1, 'Hay Stack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490161,   1, 0x0200040F) /* Setup */
     , (490161,   8, 0x06002FE1) /* Icon */;
