DELETE FROM `weenie` WHERE `class_Id` = 490221;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490221, 'ace490221-Crate of Black Luster Pearls', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490221,   1,        128) /* ItemType - Misc */
     , (490221,   5,         1000) /* EncumbranceVal */
     , (490221,  11,          1) /* MaxStackSize */
     , (490221,  12,          1) /* StackSize */
     , (490221,  13,         1000) /* StackUnitEncumbrance */
     , (490221,  15,          10) /* StackUnitValue */
     , (490221,  16,          8) /* ItemUseable - Contained */
     , (490221,  19,          10) /* Value */
     , (490221,  33,          1) /* Bonded - Bonded */
     , (490221,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490221,  94,         16) /* TargetType - Creature */
     , (490221, 114,          1) /* Attuned - Attuned */
     , (490221, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490221,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490221,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490221,   1, 'Crate of Black Luster Pearls') /* Name */
     , (490221,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490221,  16, 'A box containing 10 Black Luster Pearls.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490221,   1, 0x0200011E) /* Setup */
     , (490221,   3, 0x20000014) /* SoundTable */
     , (490221,   8, 0x060012F8) /* Icon */
	 , (490221,  50, 0x0600302C) /* IconOverlay */
     , (490221,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490221,  38,      30813) /* UseCreateItem - Blank Augmentation Gem */;
