DELETE FROM `weenie` WHERE `class_Id` = 4902185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902185, 'ace4902185-Crate of Dragon Scale Quarrels', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902185,   1,        128) /* ItemType - Misc */
     , (4902185,   5,         1000) /* EncumbranceVal */
     , (4902185,  11,          1) /* MaxStackSize */
     , (4902185,  12,          1) /* StackSize */
     , (4902185,  13,         1000) /* StackUnitEncumbrance */
     , (4902185,  15,          2) /* StackUnitValue */
     , (4902185,  16,          8) /* ItemUseable - Contained */
     , (4902185,  19,          2) /* Value */
     , (4902185,  33,          1) /* Bonded - Bonded */
     , (4902185,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902185,  94,         16) /* TargetType - Creature */
     , (4902185, 114,          1) /* Attuned - Attuned */
     , (4902185, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902185,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902185,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902185,   1, 'Crate of Dragon Scale Quarrel Volley V') /* Name */
     , (4902185,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902185,  16, 'A box containing Volleys of 5 Dragon Scale Quarrels of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902185,   1, 0x0200011E) /* Setup */
     , (4902185,   3, 0x20000014) /* SoundTable */
     , (4902185,   8, 0x060012F8) /* Icon */
	 , (4902185,  50, 0x06006FCD) /* IconOverlay */
     , (4902185,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902185,  38,      4902155) /* UseCreateItem - Blank Augmentation Gem */;
