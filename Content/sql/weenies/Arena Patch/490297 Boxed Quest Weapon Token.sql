DELETE FROM `weenie` WHERE `class_Id` = 490297;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490297, 'ace490297-Boxed Quest Weapon Token', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490297,   1,        128) /* ItemType - Misc */
     , (490297,   5,         50) /* EncumbranceVal */
     , (490297,  11,          1) /* MaxStackSize */
     , (490297,  12,          1) /* StackSize */
     , (490297,  13,         50) /* StackUnitEncumbrance */
     , (490297,  15,          5) /* StackUnitValue */
     , (490297,  16,          8) /* ItemUseable - Contained */
     , (490297,  19,          5) /* Value */
     , (490297,  33,          1) /* Bonded - Bonded */
     , (490297,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490297,  94,         16) /* TargetType - Creature */
     , (490297, 114,          1) /* Attuned - Attuned */
     , (490297, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490297,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490297,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490297,   1, 'Boxed Quest Weapon Token') /* Name */
     , (490297,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490297,  16, 'A box containing one Quest Weapon Coin.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490297,   1, 0x0200011E) /* Setup */
     , (490297,   3, 0x20000014) /* SoundTable */
     , (490297,   8, 0x06006635) /* Icon */
	 , (490297,  50, 0x06005B4C) /* IconOverlay */
     , (490297,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490297,  38,      45491) /* UseCreateItem - Blank Augmentation Gem */;
