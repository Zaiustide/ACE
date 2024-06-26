DELETE FROM `weenie` WHERE `class_Id` = 480503;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (480503, 'ace480503-boxedRareDamageReductionBoostpk', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (480503,   1,        128) /* ItemType - Misc */
     , (480503,   5,         50) /* EncumbranceVal */
     , (480503,  16,          8) /* ItemUseable - Contained */
     , (480503,  19,          20) /* Value */
     , (480503,  33,          -1) /* Bonded - Bonded */
     , (480503,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (480503,  94,         16) /* TargetType - Creature */
     , (480503, 114,          1) /* Attuned - Attuned */
     , (480503, 269,          1) /* UseCreateQuantity */
	 , (480503, 369,         200) /* UseRequiresLevel */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (480503,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (480503,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (480503,   1, 'Boxed Gem of Rare Damage Reduction Boost V') /* Name */
     , (480503,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (480503,  16, 'A box containing one Luminous Crystal of Rare Damage Reduction Boost V.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (480503,   1, 0x0200011E) /* Setup */
     , (480503,   3, 0x20000014) /* SoundTable */
     , (480503,   52, 0x060012F8) /* IconUnderlay */
	 , (480503,  8,  100668293) /* Icon */
     , (480503,  22, 0x3400002B) /* PhysicsEffectTable */
     , (480503,  38,      52025) /* UseCreateItem - Blank Augmentation Gem */;

