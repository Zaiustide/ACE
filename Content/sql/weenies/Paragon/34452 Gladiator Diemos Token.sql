DELETE FROM `weenie` WHERE `class_Id` = 34452;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (34452, 'ace34452-gladiatordiemostoken', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (34452,   1,        128) /* ItemType - Misc */
     , (34452,   5,         10) /* EncumbranceVal */
     , (34452,  16,          1) /* ItemUseable - No */
     , (34452,  19,         25) /* Value */
     , (34452,  33,          1) /* Bonded - Bonded */
     , (34452,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (34452, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (34452,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (34452,   1, 'Gladiator Diemos Token') /* Name */
     , (34452,  16, 'Give this to the Master Arbitrator for a new Title and reward item.') /* LongDesc */
     , (34452,  33, 'PickedUpMarkerBoss10x') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (34452,   1, 0x02000181) /* Setup */
     , (34452,   3, 0x20000014) /* SoundTable */
     , (34452,   8, 0x060065E4) /* Icon */
     , (34452,  22, 0x3400002B) /* PhysicsEffectTable */;
