DELETE FROM `weenie` WHERE `class_Id` = 4902173;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902173, 'ace4902173-Crate of Dragon Scale Arrow Volley', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902173,   1,        128) /* ItemType - Misc */
     , (4902173,   5,         1000) /* EncumbranceVal */
     , (4902173,  11,          1) /* MaxStackSize */
     , (4902173,  12,          1) /* StackSize */
     , (4902173,  13,         1000) /* StackUnitEncumbrance */
     , (4902173,  15,          2) /* StackUnitValue */
     , (4902173,  16,          8) /* ItemUseable - Contained */
     , (4902173,  19,          2) /* Value */
     , (4902173,  33,          1) /* Bonded - Bonded */
     , (4902173,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902173,  94,         16) /* TargetType - Creature */
     , (4902173, 114,          1) /* Attuned - Attuned */
     , (4902173, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902173,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902173,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902173,   1, 'Crate of Dragon Scale Arrow Volley III') /* Name */
     , (4902173,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902173,  16, 'A box containing Volleys of 3 Dragon Scale Arrows of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902173,   1, 0x0200011E) /* Setup */
     , (4902173,   3, 0x20000014) /* SoundTable */
     , (4902173,   8, 0x060012F8) /* Icon */
	 , (4902173,  50, 0x06006FC7) /* IconOverlay */
     , (4902173,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902173,  38,      4902143) /* UseCreateItem - Blank Augmentation Gem */;
