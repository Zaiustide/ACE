DELETE FROM `weenie` WHERE `class_Id` = 490296;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490296, 'ace490296-Crate of Platinum Spirits', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490296,   1,        128) /* ItemType - Misc */
     , (490296,   5,         50) /* EncumbranceVal */
     , (490296,  11,          1) /* MaxStackSize */
     , (490296,  12,          1) /* StackSize */
     , (490296,  13,         50) /* StackUnitEncumbrance */
     , (490296,  15,          10) /* StackUnitValue */
     , (490296,  16,          8) /* ItemUseable - Contained */
     , (490296,  19,          10) /* Value */
     , (490296,  33,          1) /* Bonded - Bonded */
     , (490296,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490296,  94,         16) /* TargetType - Creature */
     , (490296, 114,          1) /* Attuned - Attuned */
     , (490296, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490296,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490296,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490296,   1, 'Boxed Imbue Swap Coin') /* Name */
     , (490296,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490296,  16, 'A box containing one Imbue Swap Coin.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490296,   1, 0x0200011E) /* Setup */
     , (490296,   3, 0x20000014) /* SoundTable */
     , (490296,   8, 0x06006635) /* Icon */
	 , (490296,  50, 0x06006910) /* IconOverlay */
     , (490296,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490296,  38,      45494) /* UseCreateItem - Blank Augmentation Gem */;
