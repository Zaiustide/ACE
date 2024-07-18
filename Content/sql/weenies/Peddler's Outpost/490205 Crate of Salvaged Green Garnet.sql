DELETE FROM `weenie` WHERE `class_Id` = 490205;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490205, 'ace490205-Crate of Green Garnet', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490205,   1,        128) /* ItemType - Misc */
     , (490205,   5,         50) /* EncumbranceVal */
     , (490205,  11,          1) /* MaxStackSize */
     , (490205,  12,          1) /* StackSize */
     , (490205,  13,         50) /* StackUnitEncumbrance */
     , (490205,  15,          2) /* StackUnitValue */
     , (490205,  16,          8) /* ItemUseable - Contained */
     , (490205,  19,          2) /* Value */
     , (490205,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490205,  94,         16) /* TargetType - Creature */
     , (490205, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490205,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490205,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490205,   1, 'Crate of Salvaged Green Garnet') /* Name */
     , (490205,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490205,  16, 'A box containing ten bags of green garnet of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490205,   1, 0x0200011E) /* Setup */
     , (490205,   3, 0x20000014) /* SoundTable */
     , (490205,   8, 0x060012F8) /* Icon */
	 , (490205,  50, 0x060026FA) /* IconOverlay */
     , (490205,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490205,  38,      36571) /* UseCreateItem - Blank Augmentation Gem */;
