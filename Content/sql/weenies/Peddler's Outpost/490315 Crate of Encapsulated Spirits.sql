DELETE FROM `weenie` WHERE `class_Id` = 490315;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490315, 'ace490315-Crate of Encapsulated Spirits', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490315,   1,        128) /* ItemType - Misc */
     , (490315,   5,         50) /* EncumbranceVal */
     , (490315,  11,          1) /* MaxStackSize */
     , (490315,  12,          1) /* StackSize */
     , (490315,  13,         50) /* StackUnitEncumbrance */
     , (490315,  15,          2) /* StackUnitValue */
     , (490315,  16,          8) /* ItemUseable - Contained */
     , (490315,  19,          2) /* Value */
     , (490315,  33,          1) /* Bonded - Bonded */
     , (490315,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490315,  94,         16) /* TargetType - Creature */
     , (490315, 114,          1) /* Attuned - Attuned */
     , (490315, 269,          50) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490315,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490315,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490315,   1, 'Crate of Encapsulated Spirits') /* Name */
     , (490315,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490315,  16, 'A box containing 50 Encapsulated Spirits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490315,   1, 0x0200011E) /* Setup */
     , (490315,   3, 0x20000014) /* SoundTable */
     , (490315,   8, 0x060012F8) /* Icon */
	 , (490315,  50, 0x0600742C) /* IconOverlay */
     , (490315,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490315,  38,      49485) /* UseCreateItem - Encapsulated Spirit */;
