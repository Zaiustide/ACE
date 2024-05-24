DELETE FROM `weenie` WHERE `class_Id` = 490307;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490307, 'ace490307-boxed Duped Gem of Greater Luminance', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490307,   1,        128) /* ItemType - Misc */
     , (490307,   5,         50) /* EncumbranceVal */
     , (490307,  11,          1) /* MaxStackSize */
     , (490307,  12,          1) /* StackSize */
     , (490307,  13,         50) /* StackUnitEncumbrance */
     , (490307,  15,          1) /* StackUnitValue */
     , (490307,  16,          8) /* ItemUseable - Contained */
     , (490307,  19,          1) /* Value */
     , (490307,  33,          1) /* Bonded - Bonded */
     , (490307,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490307,  94,         16) /* TargetType - Creature */
     , (490307, 114,          1) /* Attuned - Attuned */
     , (490307, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490307,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490307,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490307,   1, 'Boxed Duped Gem of Greater Luminance ') /* Name */
     , (490307,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490307,  16, 'A box containing one Duped Gem of Greater Luminance.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490307,   1, 0x0200011E) /* Setup */
     , (490307,   3, 0x20000014) /* SoundTable */
     , (490307,   8, 0x06007095) /* Icon */
     , (490307,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490307,  38,      480634) /* UseCreateItem - Blank Augmentation Gem */;