DELETE FROM `weenie` WHERE `class_Id` = 4902195;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902195, 'ace4902195-Crate of Dragon Scale Atlatl Dart', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902195,   1,        128) /* ItemType - Misc */
     , (4902195,   5,         1000) /* EncumbranceVal */
     , (4902195,  11,          1) /* MaxStackSize */
     , (4902195,  12,          1) /* StackSize */
     , (4902195,  13,         1000) /* StackUnitEncumbrance */
     , (4902195,  15,          2) /* StackUnitValue */
     , (4902195,  16,          8) /* ItemUseable - Contained */
     , (4902195,  19,          2) /* Value */
     , (4902195,  33,          1) /* Bonded - Bonded */
     , (4902195,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902195,  94,         16) /* TargetType - Creature */
     , (4902195, 114,          1) /* Attuned - Attuned */
     , (4902195, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902195,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902195,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902195,   1, 'Crate of Dragon Scale Atlatl Dart Volley V') /* Name */
     , (4902195,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902195,  16, 'A box containing Volleys of 5 Dragon Scale Atlatl Darts of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902195,   1, 0x0200011E) /* Setup */
     , (4902195,   3, 0x20000014) /* SoundTable */
     , (4902195,   8, 0x060012F8) /* Icon */
	 , (4902195,  50, 0x06006FCA) /* IconOverlay */
     , (4902195,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902195,  38,      4902165) /* UseCreateItem - Blank Augmentation Gem */;
