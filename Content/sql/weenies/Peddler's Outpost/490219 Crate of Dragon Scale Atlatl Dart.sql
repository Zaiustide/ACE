DELETE FROM `weenie` WHERE `class_Id` = 490219;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490219, 'ace490219-Crate of Dragon Scale Atlatl Dart', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490219,   1,        128) /* ItemType - Misc */
     , (490219,   5,         1000) /* EncumbranceVal */
     , (490219,  11,          1) /* MaxStackSize */
     , (490219,  12,          1) /* StackSize */
     , (490219,  13,         1000) /* StackUnitEncumbrance */
     , (490219,  15,          2) /* StackUnitValue */
     , (490219,  16,          8) /* ItemUseable - Contained */
     , (490219,  19,          2) /* Value */
     , (490219,  33,          1) /* Bonded - Bonded */
     , (490219,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490219,  94,         16) /* TargetType - Creature */
     , (490219, 114,          1) /* Attuned - Attuned */
     , (490219, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490219,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490219,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490219,   1, 'Crate of Dragon Scale Atlatl Dart') /* Name */
     , (490219,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490219,  16, 'A box containing Dragon Scale Atlatl Dart of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490219,   1, 0x0200011E) /* Setup */
     , (490219,   3, 0x20000014) /* SoundTable */
     , (490219,   8, 0x060012F8) /* Icon */
	 , (490219,  50, 0x06006FCA) /* IconOverlay */
     , (490219,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490219,  38,      490216) /* UseCreateItem - Blank Augmentation Gem */;
