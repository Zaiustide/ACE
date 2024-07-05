DELETE FROM `weenie` WHERE `class_Id` = 490209;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490209, 'ace490209-Crate of Salvaged Mahogany', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490209,   1,        128) /* ItemType - Misc */
     , (490209,   5,         50) /* EncumbranceVal */
     , (490209,  11,          1) /* MaxStackSize */
     , (490209,  12,          1) /* StackSize */
     , (490209,  13,         50) /* StackUnitEncumbrance */
     , (490209,  15,          2) /* StackUnitValue */
     , (490209,  16,          8) /* ItemUseable - Contained */
     , (490209,  19,          2) /* Value */
     , (490209,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490209,  94,         16) /* TargetType - Creature */
     , (490209, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490209,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490209,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490209,   1, 'Crate of Salvaged Mahogany') /* Name */
     , (490209,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490209,  16, 'A box containing ten bags of Mahogany of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490209,   1, 0x0200011E) /* Setup */
     , (490209,   3, 0x20000014) /* SoundTable */
     , (490209,   8, 0x060012F8) /* Icon */
	 , (490209,  50, 0x060026D0) /* IconOverlay */
     , (490209,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490209,  38,      29579) /* UseCreateItem - Blank Augmentation Gem */;
