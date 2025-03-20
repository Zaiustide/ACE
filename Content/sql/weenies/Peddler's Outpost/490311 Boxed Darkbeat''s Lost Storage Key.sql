DELETE FROM `weenie` WHERE `class_Id` = 490311;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490311, 'ace490311-boxeddarkbeatstoragekey', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490311,   1,        128) /* ItemType - Misc */
     , (490311,   5,         50) /* EncumbranceVal */
     , (490311,  11,          1) /* MaxStackSize */
     , (490311,  12,          1) /* StackSize */
     , (490311,  13,         50) /* StackUnitEncumbrance */
     , (490311,  15,          2) /* StackUnitValue */
     , (490311,  16,          8) /* ItemUseable - Contained */
     , (490311,  19,          2) /* Value */
     , (490311,  33,          -1) /* Bonded - Slippery */
     , (490311,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490311,  94,         16) /* TargetType - Creature */
     , (490311, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490311,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490311,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490311,   1, 'Boxed Darkbeat''s Lost Storage Key') /* Name */
     , (490311,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490311,  16, 'A box containing one Darkbeat''s Lost Storage Key.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490311,   1, 0x02000160) /* Setup */
     , (490311,   3, 0x20000014) /* SoundTable */
     , (490311,   8, 0x060065FE) /* Icon */
     , (490311,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490311,  52,  100689403) /* IconUnderlay */
     , (490311,  38,      480608) /* UseCreateItem - Blank Augmentation Gem */;