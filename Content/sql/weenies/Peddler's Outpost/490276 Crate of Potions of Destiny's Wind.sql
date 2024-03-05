DELETE FROM `weenie` WHERE `class_Id` = 490276;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490276, 'ace490276-Crate of Potions of Destinys Wind', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490276,   1,        128) /* ItemType - Misc */
     , (490276,   5,         50) /* EncumbranceVal */
	 , (490276,   3,          2) /* PaletteTemplate - Blue */
     , (490276,  11,          1) /* MaxStackSize */
     , (490276,  12,          1) /* StackSize */
     , (490276,  13,         50) /* StackUnitEncumbrance */
     , (490276,  15,          5) /* StackUnitValue */
     , (490276,  16,          8) /* ItemUseable - Contained */
     , (490276,  19,          5) /* Value */
     , (490276,  33,          1) /* Bonded - Bonded */
     , (490276,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490276,  94,         16) /* TargetType - Creature */
     , (490276, 114,          1) /* Attuned - Attuned */
     , (490276, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490276,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490276,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490276,   1, 'Crate of Potions of Destiny''s Wind') /* Name */
     , (490276,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490276,  16, 'A box containing ten Potions of Destiny''s Wind.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490276,   1, 0x0200011E) /* Setup */
     , (490276,   3, 0x20000014) /* SoundTable */
     , (490276,   8, 0x060012F8) /* Icon */
	 , (490276,  50, 0x06002DEC) /* IconOverlay */
     , (490276,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490276,  38,      25543) /* UseCreateItem - Blank Augmentation Gem */;
