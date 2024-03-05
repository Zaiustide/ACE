DELETE FROM `weenie` WHERE `class_Id` = 490277;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490277, 'ace490277-Crate of Platinum Spirits', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490277,   1,        128) /* ItemType - Misc */
     , (490277,   5,         50) /* EncumbranceVal */
     , (490277,  11,          1) /* MaxStackSize */
     , (490277,  12,          1) /* StackSize */
     , (490277,  13,         50) /* StackUnitEncumbrance */
     , (490277,  15,          10) /* StackUnitValue */
     , (490277,  16,          8) /* ItemUseable - Contained */
     , (490277,  19,          10) /* Value */
     , (490277,  33,          1) /* Bonded - Bonded */
     , (490277,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490277,  94,         16) /* TargetType - Creature */
     , (490277, 114,          1) /* Attuned - Attuned */
     , (490277, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490277,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490277,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490277,   1, 'Crate of Platinum Spirits') /* Name */
     , (490277,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490277,  16, 'A box containing ten Platinum Spirits.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490277,   1, 0x0200011E) /* Setup */
     , (490277,   3, 0x20000014) /* SoundTable */
     , (490277,   8, 0x060012F8) /* Icon */
	 , (490277,  50, 0x0600332E) /* IconOverlay */
     , (490277,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490277,  38,      27258) /* UseCreateItem - Blank Augmentation Gem */;
