DELETE FROM `weenie` WHERE `class_Id` = 490496;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490496, 'ace490496-Boxed Imbue Swap Coin', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490496,   1,        128) /* ItemType - Misc */
     , (490496,   5,         50) /* EncumbranceVal */
     , (490496,  11,          1) /* MaxStackSize */
     , (490496,  12,          1) /* StackSize */
     , (490496,  13,         50) /* StackUnitEncumbrance */
     , (490496,  15,          5) /* StackUnitValue */
     , (490496,  16,          8) /* ItemUseable - Contained */
     , (490496,  19,          5) /* Value */
     , (490496,  33,          1) /* Bonded - Bonded */
     , (490496,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490496,  94,         16) /* TargetType - Creature */
     , (490496, 114,          1) /* Attuned - Attuned */
     , (490496, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490496,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490496,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490496,   1, 'Boxed Imbue Swap Coin') /* Name */
     , (490496,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490496,  16, 'A box containing one Imbue Swap Coin.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490496,   1, 0x0200011E) /* Setup */
     , (490496,   3, 0x20000014) /* SoundTable */
     , (490496,   8, 0x06006635) /* Icon */
	 , (490496,  50, 0x06006910) /* IconOverlay */
     , (490496,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490496,  38,      45494) /* UseCreateItem - Blank Augmentation Gem */;
