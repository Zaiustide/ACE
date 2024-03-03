DELETE FROM `weenie` WHERE `class_Id` = 490208;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490208, 'ace490208-Crate of Salvaged Steel', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490208,   1,        128) /* ItemType - Misc */
     , (490208,   5,         50) /* EncumbranceVal */
     , (490208,  11,          1) /* MaxStackSize */
     , (490208,  12,          1) /* StackSize */
     , (490208,  13,         50) /* StackUnitEncumbrance */
     , (490208,  15,          2) /* StackUnitValue */
     , (490208,  16,          8) /* ItemUseable - Contained */
     , (490208,  19,          2) /* Value */
     , (490208,  33,          1) /* Bonded - Bonded */
     , (490208,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490208,  94,         16) /* TargetType - Creature */
     , (490208, 114,          1) /* Attuned - Attuned */
     , (490208, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490208,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490208,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490208,   1, 'Crate of Salvaged Steel') /* Name */
     , (490208,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490208,  16, 'A box containing ten bags of steel of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490208,   1, 0x0200011E) /* Setup */
     , (490208,   3, 0x20000014) /* SoundTable */
     , (490208,   8, 0x060012F8) /* Icon */
	 , (490208,  50, 0x060026D5) /* IconOverlay */
     , (490208,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490208,  38,      29581) /* UseCreateItem - Blank Augmentation Gem */;
