DELETE FROM `weenie` WHERE `class_Id` = 490362;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490362, 'ace490362-boxeddarkbeatstoragekey', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490362,   1,        128) /* ItemType - Misc */
     , (490362,   5,         50) /* EncumbranceVal */
     , (490362,  16,          8) /* ItemUseable - Contained */
     , (490362,  19,          15) /* Value */
     , (490362,  33,          -1) /* Bonded - Slippery */
     , (490362,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490362,  94,         16) /* TargetType - Creature */
     , (490362, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490362,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490362,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490362,   1, 'Boxed Hera''s Vault Key') /* Name */
     , (490362,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490362,  16, 'A box containing one Hera''s Vault Key.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490362,   1, 0x0200011E) /* Setup */
     , (490362,   3, 0x20000014) /* SoundTable */
     , (490362,   8, 0x060012F8) /* Icon */
	 , (490362,  50, 0x06006BB0) /* IconOverlay */
     , (490362,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490362,  38,      490364) /* UseCreateItem - Blank Augmentation Gem */;
	 
