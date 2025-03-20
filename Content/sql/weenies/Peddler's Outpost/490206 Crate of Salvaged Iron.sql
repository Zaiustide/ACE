DELETE FROM `weenie` WHERE `class_Id` = 490206;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490206, 'ace490206-Crate of Salvaged Iron', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490206,   1,        128) /* ItemType - Misc */
     , (490206,   5,         50) /* EncumbranceVal */
     , (490206,  11,          1) /* MaxStackSize */
     , (490206,  12,          1) /* StackSize */
     , (490206,  13,         50) /* StackUnitEncumbrance */
     , (490206,  15,          2) /* StackUnitValue */
     , (490206,  16,          8) /* ItemUseable - Contained */
     , (490206,  19,          2) /* Value */
     , (490206,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490206,  94,         16) /* TargetType - Creature */
     , (490206, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490206,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490206,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490206,   1, 'Crate of Salvaged Iron') /* Name */
     , (490206,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490206,  16, 'A box containing ten bags of iron of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490206,   1, 0x0200011E) /* Setup */
     , (490206,   3, 0x20000014) /* SoundTable */
     , (490206,   8, 0x060012F8) /* Icon */
	 , (490206,  50, 0x060026CE) /* IconOverlay */
     , (490206,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490206,  38,      36572) /* UseCreateItem - Blank Augmentation Gem */;
