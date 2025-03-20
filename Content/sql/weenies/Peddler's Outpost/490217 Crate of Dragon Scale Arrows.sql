DELETE FROM `weenie` WHERE `class_Id` = 490217;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490217, 'ace490217-Crate of Dragon Scale Arrows', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490217,   1,        128) /* ItemType - Misc */
     , (490217,   5,         1000) /* EncumbranceVal */
     , (490217,  11,          1) /* MaxStackSize */
     , (490217,  12,          1) /* StackSize */
     , (490217,  13,         1000) /* StackUnitEncumbrance */
     , (490217,  15,          2) /* StackUnitValue */
     , (490217,  16,          8) /* ItemUseable - Contained */
     , (490217,  19,          2) /* Value */
     , (490217,  33,          1) /* Bonded - Bonded */
     , (490217,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490217,  94,         16) /* TargetType - Creature */
     , (490217, 114,          1) /* Attuned - Attuned */
     , (490217, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490217,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490217,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490217,   1, 'Crate of Dragon Scale Arrows') /* Name */
     , (490217,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490217,  16, 'A box containing Dragon Scale Arrows of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490217,   1, 0x0200011E) /* Setup */
     , (490217,   3, 0x20000014) /* SoundTable */
     , (490217,   8, 0x060012F8) /* Icon */
	 , (490217,  50, 0x06006FC7) /* IconOverlay */
     , (490217,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490217,  38,      490214) /* UseCreateItem - Blank Augmentation Gem */;
