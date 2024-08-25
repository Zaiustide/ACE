DELETE FROM `weenie` WHERE `class_Id` = 490353;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490353, 'ace490353-Boxed Luminance Exchange Token', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490353,   1,        128) /* ItemType - Misc */
     , (490353,   5,         50) /* EncumbranceVal */
     , (490353,  16,          8) /* ItemUseable - Contained */
     , (490353,  19,          10) /* Value */
     , (490353,  33,          1) /* Bonded - Bonded */
     , (490353,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490353,  94,         16) /* TargetType - Creature */
     , (490353, 114,          1) /* Attuned - Attuned */
     , (490353, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490353,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490353,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490353,   1, 'Boxed Luminance Exchange Token') /* Name */
     , (490353,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490353,  16, 'A box containing one Luminance Exchange Token.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490353,   1, 0x0200011E) /* Setup */
     , (490353,   3, 0x20000014) /* SoundTable */
     , (490353,  8, 0x0600699E) /* Icon */
     , (490353,  50, 0x06007096) /* IconOverlay */
     , (490353,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490353,  38,      490321) /* UseCreateItem - Blank Augmentation Gem */;
