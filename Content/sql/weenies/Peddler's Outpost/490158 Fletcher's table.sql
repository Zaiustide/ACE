DELETE FROM `weenie` WHERE `class_Id` = 490158;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490158, 'tablefletching', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490158,   1,        128) /* ItemType - Misc */
     , (490158,   5,        300) /* EncumbranceVal */
     , (490158,   8,      14000) /* Mass */
     , (490158,  16,          1) /* ItemUseable - No */
     , (490158,  19,       6000) /* Value */
     , (490158,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490158, 150,        103) /* HookPlacement - Hook */
     , (490158, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490158,  13, True ) /* Ethereal */
     , (490158,   1, True ) /* Stuck */
     , (490158,  24, True ) /* UiHidden */
     , (490158,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490158,   1, 'Fletching Table') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490158,   1, 0x02001000) /* Setup */
     , (490158,   8, 0x06002FE1) /* Icon */;
