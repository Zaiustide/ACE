DELETE FROM `weenie` WHERE `class_Id` = 490313;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490313, 'ace490313-Crate of Tumerok Salted Meat', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490313,   1,        128) /* ItemType - Misc */
     , (490313,   5,         16000) /* EncumbranceVal */
     , (490313,  11,          1) /* MaxStackSize */
     , (490313,  12,          1) /* StackSize */
     , (490313,  13,         16000) /* StackUnitEncumbrance */
     , (490313,  15,          2) /* StackUnitValue */
     , (490313,  16,          8) /* ItemUseable - Contained */
     , (490313,  19,          2) /* Value */
     , (490313,  33,          1) /* Bonded - Bonded */
     , (490313,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490313,  94,         16) /* TargetType - Creature */
     , (490313, 114,          1) /* Attuned - Attuned */
     , (490313, 269,          100) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490313,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490313,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490313,   1, 'Crate of Tumerok Salted Meats') /* Name */
     , (490313,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490313,  16, 'A box containing 100 Tumerok Salted Meats.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490313,   1, 0x0200011E) /* Setup */
     , (490313,   3, 0x20000014) /* SoundTable */
     , (490313,   8, 0x060012F8) /* Icon */
	 , (490313,  50, 0x060033A9) /* IconOverlay */
     , (490313,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490313,  38,      27669) /* UseCreateItem - Blank Augmentation Gem */;
