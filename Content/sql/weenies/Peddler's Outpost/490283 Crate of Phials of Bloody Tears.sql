DELETE FROM `weenie` WHERE `class_Id` = 490283;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490283, 'ace490283-Crate of Phials of Bloody Tears', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490283,   1,        128) /* ItemType - Misc */
     , (490283,   5,         50) /* EncumbranceVal */
     , (490283,  11,          1) /* MaxStackSize */
     , (490283,  12,          1) /* StackSize */
     , (490283,  13,         50) /* StackUnitEncumbrance */
     , (490283,  15,          15) /* StackUnitValue */
     , (490283,  16,          8) /* ItemUseable - Contained */
     , (490283,  19,          15) /* Value */
     , (490283,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490283,  94,         16) /* TargetType - Creature */
     , (490283, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490283,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490283,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490283,   1, 'Crate of Phials of Bloody Tears') /* Name */
     , (490283,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490283,  16, 'A box containing ten Phials of Bloody Tears.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490283,   1, 0x0200011E) /* Setup */
     , (490283,   3, 0x20000014) /* SoundTable */
     , (490283,   8, 0x060012F8) /* Icon */
	 , (490283,  50, 0x060033CC) /* IconOverlay */
     , (490283,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490283,  38,      1000003) /* UseCreateItem - Blank Augmentation Gem */;
