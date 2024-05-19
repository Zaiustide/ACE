DELETE FROM `weenie` WHERE `class_Id` = 490310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490310, 'ace490310-boxedwaterofenlightenment', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490310,   1,        128) /* ItemType - Misc */
     , (490310,   5,         50) /* EncumbranceVal */
     , (490310,  11,          1) /* MaxStackSize */
     , (490310,  12,          1) /* StackSize */
     , (490310,  13,         50) /* StackUnitEncumbrance */
     , (490310,  15,          10) /* StackUnitValue */
     , (490310,  16,          8) /* ItemUseable - Contained */
     , (490310,  19,          10) /* Value */
     , (490310,  33,          1) /* Bonded - Bonded */
     , (490310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490310,  94,         16) /* TargetType - Creature */
     , (490310, 114,          1) /* Attuned - Attuned */
     , (490310, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490310,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490310,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490310,   1, 'Boxed Water of Enlightenment') /* Name */
     , (490310,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490310,  16, 'A box containing one Water of Enlightenment.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490310,   1, 0x0200011E) /* Setup */
     , (490310,   3, 0x20000014) /* SoundTable */
     , (490310,   8, 0x0600332B) /* Icon */
     , (490310,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490310,  38,      490070) /* UseCreateItem - Blank Augmentation Gem */;