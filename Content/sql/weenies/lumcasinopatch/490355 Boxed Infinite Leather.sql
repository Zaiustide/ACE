DELETE FROM `weenie` WHERE `class_Id` = 490355;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490355, 'ace490355-Boxed infinite Leather', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490355,   1,        128) /* ItemType - Misc */
     , (490355,   5,         50) /* EncumbranceVal */
     , (490355,  16,          8) /* ItemUseable - Contained */
     , (490355,  19,          100) /* Value */
     , (490355,  33,          1) /* Bonded - Bonded */
     , (490355,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490355,  94,         16) /* TargetType - Creature */
     , (490355, 114,          1) /* Attuned - Attuned */
     , (490355, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490355,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490355,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490355,   1, 'Boxed Infinite Leather') /* Name */
     , (490355,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490355,  16, 'A box containing one bag of Infinite Leather.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490355,   1, 0x0200011E) /* Setup */
     , (490355,   3, 0x20000014) /* SoundTable */
     , (490355,   8, 0x06006702) /* Icon */
     , (490355,  50, 0x06002703) /* IconOverlay */
     , (490355,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490355,  38,      30093) /* UseCreateItem - Blank Augmentation Gem */;
