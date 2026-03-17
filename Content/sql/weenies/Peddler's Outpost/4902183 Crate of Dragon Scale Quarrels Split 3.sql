DELETE FROM `weenie` WHERE `class_Id` = 4902183;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902183, 'ace4902183-Crate of Dragon Scale Quarrels', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902183,   1,        128) /* ItemType - Misc */
     , (4902183,   5,         1000) /* EncumbranceVal */
     , (4902183,  11,          1) /* MaxStackSize */
     , (4902183,  12,          1) /* StackSize */
     , (4902183,  13,         1000) /* StackUnitEncumbrance */
     , (4902183,  15,          2) /* StackUnitValue */
     , (4902183,  16,          8) /* ItemUseable - Contained */
     , (4902183,  19,          2) /* Value */
     , (4902183,  33,          1) /* Bonded - Bonded */
     , (4902183,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902183,  94,         16) /* TargetType - Creature */
     , (4902183, 114,          1) /* Attuned - Attuned */
     , (4902183, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902183,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902183,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902183,   1, 'Crate of Dragon Scale Quarrel Volley III') /* Name */
     , (4902183,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902183,  16, 'A box containing Volleys of 3 Dragon Scale Quarrels of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902183,   1, 0x0200011E) /* Setup */
     , (4902183,   3, 0x20000014) /* SoundTable */
     , (4902183,   8, 0x060012F8) /* Icon */
	 , (4902183,  50, 0x06006FCD) /* IconOverlay */
     , (4902183,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902183,  38,      4902153) /* UseCreateItem - Blank Augmentation Gem */;
