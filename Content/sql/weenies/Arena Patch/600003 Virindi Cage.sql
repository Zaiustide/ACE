DELETE FROM `weenie` WHERE `class_Id` = 600003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600003, 'ace600003-petvirindicage', 70, '2021-11-01 00:00:00') /* PetDevice */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600003,   1,        128) /* ItemType - Misc */
     , (600003,   5,          5) /* EncumbranceVal */
     , (600003,  16,          8) /* ItemUseable - Contained */
     , (600003,  19,         10) /* Value */
     , (600003,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600003,  94,         16) /* TargetType - Creature */
     , (600003, 266,      600002) /* PetClass - Pet Virindi Servant */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600003,  22, True ) /* Inscribable */
     , (600003,  69, True ) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600003,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600003,   1, 'Virindi Cage') /* Name */
     , (600003,  14, 'Using this cage will release your Virindi Servant. Hand it a pyreal and it will cast beneficial spells on you!') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600003,   1, 0x020016F3) /* Setup */
     , (600003,   3, 0x20000014) /* SoundTable */
     , (600003,   8, 0x0600666C) /* Icon */
     , (600003,  22, 0x3400002B) /* PhysicsEffectTable */;
