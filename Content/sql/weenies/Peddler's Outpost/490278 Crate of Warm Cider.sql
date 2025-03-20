DELETE FROM `weenie` WHERE `class_Id` = 490278;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490278, 'ace490278-Crate of Warm Cider', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490278,   1,        128) /* ItemType - Misc */
     , (490278,   5,         50) /* EncumbranceVal */
     , (490278,  11,          1) /* MaxStackSize */
     , (490278,  12,          1) /* StackSize */
     , (490278,  13,         50) /* StackUnitEncumbrance */
     , (490278,  15,          10) /* StackUnitValue */
     , (490278,  16,          8) /* ItemUseable - Contained */
     , (490278,  19,          10) /* Value */
     , (490278,  33,          1) /* Bonded - Bonded */
     , (490278,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490278,  94,         16) /* TargetType - Creature */
     , (490278, 114,          1) /* Attuned - Attuned */
     , (490278, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490278,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490278,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490278,   1, 'Crate of Warm Cider') /* Name */
     , (490278,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490278,  16, 'A box containing ten Mugs of Warm Cider.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490278,   1, 0x0200011E) /* Setup */
     , (490278,   3, 0x20000014) /* SoundTable */
     , (490278,   8, 0x060012F8) /* Icon */
	 , (490278,  50, 0x06001028) /* IconOverlay */
     , (490278,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490278,  38,      48707) /* UseCreateItem - Blank Augmentation Gem */;
