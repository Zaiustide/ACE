DELETE FROM `weenie` WHERE `class_Id` = 490316;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490316, 'ace490316-Crate of Black Market Gems of Dispelling', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490316,   1,        128) /* ItemType - Misc */
     , (490316,   5,         50) /* EncumbranceVal */
     , (490316,  11,          1) /* MaxStackSize */
     , (490316,  12,          1) /* StackSize */
     , (490316,  13,         50) /* StackUnitEncumbrance */
     , (490316,  15,          2) /* StackUnitValue */
     , (490316,  16,          8) /* ItemUseable - Contained */
     , (490316,  19,          2) /* Value */
     , (490316,  33,          1) /* Bonded - Bonded */
     , (490316,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490316,  94,         16) /* TargetType - Creature */
     , (490316, 114,          1) /* Attuned - Attuned */
     , (490316, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490316,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490316,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490316,   1, 'Crate of Black Market Gems of Dispelling') /* Name */
     , (490316,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490316,  16, 'A box containing 10 Black Market Gems of Dispelling.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490316,   1, 0x0200011E) /* Setup */
     , (490316,   3, 0x20000014) /* SoundTable */
     , (490316,   8, 0x060012F8) /* Icon */
	 , (490316,  50, 0x06001FAD) /* IconOverlay */
     , (490316,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490316,  38,      38726) /* UseCreateItem - Encapsulated Spirit */;
