DELETE FROM `weenie` WHERE `class_Id` = 490555;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490555, 'ace490555-Boxed Essence of Power', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490555,   1,        128) /* ItemType - Misc */
     , (490555,   5,         50) /* EncumbranceVal */
     , (490555,  11,          1) /* MaxStackSize */
     , (490555,  12,          1) /* StackSize */
     , (490555,  13,         50) /* StackUnitEncumbrance */
     , (490555,  15,          1) /* StackUnitValue */
     , (490555,  16,          8) /* ItemUseable - Contained */
     , (490555,  19,          1) /* Value */
     , (490555,  33,          1) /* Bonded - Bonded */
     , (490555,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490555,  94,         16) /* TargetType - Creature */
     , (490555, 114,          1) /* Attuned - Attuned */
     , (490555, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490555,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490555,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490555,   1, 'Boxed Essence of Power') /* Name */
     , (490555,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490555,  16, 'A box containing one Essence of Power.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490555,   1, 0x0200011E) /* Setup */
     , (490555,   3, 0x20000014) /* SoundTable */
     , (490555,   8, 0x0600699E) /* Icon */
	 , (490555,  50, 0x060064DC) /* IconOverlay */
	 , (490555,  52, 0x06005B0C) /* IconUnderlay */
     , (490555,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490555,  38,      490326) /* UseCreateItem - Essence of Power */;
