DELETE FROM `weenie` WHERE `class_Id` = 490532;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490532, 'ace490532-Crate of Black Market Gems of Dispelling', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490532,   1,        128) /* ItemType - Misc */
     , (490532,   5,         50) /* EncumbranceVal */
     , (490532,  11,          1) /* MaxStackSize */
     , (490532,  12,          1) /* StackSize */
     , (490532,  13,         50) /* StackUnitEncumbrance */
     , (490532,  15,          2) /* StackUnitValue */
     , (490532,  16,          8) /* ItemUseable - Contained */
     , (490532,  19,          2) /* Value */
     , (490532,  33,          1) /* Bonded - Bonded */
     , (490532,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490532,  94,         16) /* TargetType - Creature */
     , (490532, 114,          1) /* Attuned - Attuned */
     , (490532, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490532,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490532,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490532,   1, 'Crate of Black Pages of Salt and Ash') /* Name */
     , (490532,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490532,  16, 'A box containing 10 Black Pages of Salt and Ash.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490532,   1, 0x0200011E) /* Setup */
     , (490532,   3, 0x20000014) /* SoundTable */
     , (490532,   8, 0x060012F8) /* Icon */
	 , (490532,  50, 0x060062EE) /* IconOverlay */
     , (490532,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490532,  38,      32672) /* UseCreateItem - Black Page of Salt and Ash */;
