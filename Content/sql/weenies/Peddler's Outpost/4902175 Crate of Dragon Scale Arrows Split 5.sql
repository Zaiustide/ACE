DELETE FROM `weenie` WHERE `class_Id` = 4902175;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4902175, 'ace4902175-Crate of Dragon Scale Arrow Volley', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4902175,   1,        128) /* ItemType - Misc */
     , (4902175,   5,         1000) /* EncumbranceVal */
     , (4902175,  11,          1) /* MaxStackSize */
     , (4902175,  12,          1) /* StackSize */
     , (4902175,  13,         1000) /* StackUnitEncumbrance */
     , (4902175,  15,          2) /* StackUnitValue */
     , (4902175,  16,          8) /* ItemUseable - Contained */
     , (4902175,  19,          2) /* Value */
     , (4902175,  33,          1) /* Bonded - Bonded */
     , (4902175,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4902175,  94,         16) /* TargetType - Creature */
     , (4902175, 114,          1) /* Attuned - Attuned */
     , (4902175, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4902175,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4902175,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4902175,   1, 'Crate of Dragon Scale Arrow Volley V') /* Name */
     , (4902175,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (4902175,  16, 'A box containing Volleys of 5 Dragon Scale Arrows of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4902175,   1, 0x0200011E) /* Setup */
     , (4902175,   3, 0x20000014) /* SoundTable */
     , (4902175,   8, 0x060012F8) /* Icon */
	 , (4902175,  50, 0x06006FC7) /* IconOverlay */
     , (4902175,  22, 0x3400002B) /* PhysicsEffectTable */
     , (4902175,  38,      4902145) /* UseCreateItem - Blank Augmentation Gem */;
