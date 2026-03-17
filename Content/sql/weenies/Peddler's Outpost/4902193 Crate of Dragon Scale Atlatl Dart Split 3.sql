DELETE FROM `weenie` WHERE `class_Id` = 4902193;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902193, 'ace4902193-Crate of Dragon Scale Atlatl Dart', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902193,   1,        128) /* ItemType - Misc */
     , (4902193,   5,         1000) /* EncumbranceVal */
     , (4902193,  11,          1) /* MaxStackSize */
     , (4902193,  12,          1) /* StackSize */
     , (4902193,  13,         1000) /* StackUnitEncumbrance */
     , (4902193,  15,          2) /* StackUnitValue */
     , (4902193,  16,          8) /* ItemUseable - Contained */
     , (4902193,  19,          2) /* Value */
     , (4902193,  33,          1) /* Bonded - Bonded */
     , (4902193,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902193,  94,         16) /* TargetType - Creature */
     , (4902193, 114,          1) /* Attuned - Attuned */
     , (4902193, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902193,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902193,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902193,   1, 'Crate of Dragon Scale Atlatl Dart Volley III') /* Name */
     , (4902193,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902193,  16, 'A box containing Volleys of 3 Dragon Scale Atlatl Darts of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902193,   1, 0x0200011E) /* Setup */
     , (4902193,   3, 0x20000014) /* SoundTable */
     , (4902193,   8, 0x060012F8) /* Icon */
	 , (4902193,  50, 0x06006FCA) /* IconOverlay */
     , (4902193,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902193,  38,      4902163) /* UseCreateItem - Blank Augmentation Gem */;
