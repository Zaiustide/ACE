DELETE FROM `weenie` WHERE `class_Id` = 60000215;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (60000215, 'ace60000215-writofpursuit', 1, '2026-03-28 10:35:07') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (60000215,   1,        128) /* ItemType - Misc */
     , (60000215,   5,          5) /* EncumbranceVal */
     , (60000215,   8,          5) /* Mass */
     , (60000215,   9,   16777216) /* ValidLocations - Held */
     , (60000215,  16,          1) /* ItemUseable - No */
     , (60000215,  18,         32) /* UiEffects - Fire */
     , (60000215,  19,          1) /* Value */
     , (60000215,  33,          1) /* Bonded - Bonded */
     , (60000215,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (60000215, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (60000215,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (60000215,   0, '') /*  */
     , (60000215,   1, 'Writ of Pursuit') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (60000215,   1, 0x02000155) /* Setup */
     , (60000215,   3, 0x20000014) /* SoundTable */
     , (60000215,   8, 0x060023B1) /* Icon */
     , (60000215,  22, 0x3400002B) /* PhysicsEffectTable */;

