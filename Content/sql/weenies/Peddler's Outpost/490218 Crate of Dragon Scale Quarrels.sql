DELETE FROM `weenie` WHERE `class_Id` = 490218;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490218, 'ace490218-Crate of Dragon Scale Quarrels', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490218,   1,        128) /* ItemType - Misc */
     , (490218,   5,         1000) /* EncumbranceVal */
     , (490218,  11,          1) /* MaxStackSize */
     , (490218,  12,          1) /* StackSize */
     , (490218,  13,         1000) /* StackUnitEncumbrance */
     , (490218,  15,          2) /* StackUnitValue */
     , (490218,  16,          8) /* ItemUseable - Contained */
     , (490218,  19,          2) /* Value */
     , (490218,  33,          1) /* Bonded - Bonded */
     , (490218,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490218,  94,         16) /* TargetType - Creature */
     , (490218, 114,          1) /* Attuned - Attuned */
     , (490218, 269,          5000) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490218,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490218,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490218,   1, 'Crate of Dragon Scale Quarrels') /* Name */
     , (490218,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490218,  16, 'A box containing Dragon Scale Quarrels of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490218,   1, 0x0200011E) /* Setup */
     , (490218,   3, 0x20000014) /* SoundTable */
     , (490218,   8, 0x060012F8) /* Icon */
	 , (490218,  50, 0x06006FCD) /* IconOverlay */
     , (490218,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490218,  38,      490215) /* UseCreateItem - Blank Augmentation Gem */;
