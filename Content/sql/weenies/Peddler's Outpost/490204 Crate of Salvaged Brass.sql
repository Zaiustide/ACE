DELETE FROM `weenie` WHERE `class_Id` = 490204;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490204, 'ace490204-Crate of Salvaged Brass', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490204,   1,        128) /* ItemType - Misc */
     , (490204,   5,         50) /* EncumbranceVal */
     , (490204,  11,          1) /* MaxStackSize */
     , (490204,  12,          1) /* StackSize */
     , (490204,  13,         50) /* StackUnitEncumbrance */
     , (490204,  15,          2) /* StackUnitValue */
     , (490204,  16,          8) /* ItemUseable - Contained */
     , (490204,  19,          2) /* Value */
     , (490204,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490204,  94,         16) /* TargetType - Creature */
     , (490204, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490204,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490204,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490204,   1, 'Crate of Salvaged Brass') /* Name */
     , (490204,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490204,  16, 'A box containing ten bags of brass with perfect quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490204,   1, 0x0200011E) /* Setup */
     , (490204,   3, 0x20000014) /* SoundTable */
     , (490204,   8, 0x060012F8) /* Icon */
	 , (490204,  50, 0x060026C9) /* IconOverlay */
     , (490204,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490204,  38,      36570) /* UseCreateItem - Blank Augmentation Gem */;
