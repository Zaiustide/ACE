DELETE FROM `weenie` WHERE `class_Id` = 600056;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600056, 'ace600056-Crate of Black Market Gems of Dispelling', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600056,   1,        128) /* ItemType - Misc */
     , (600056,   5,         50) /* EncumbranceVal */
     , (600056,  16,          8) /* ItemUseable - Contained */
     , (600056,  19,          50) /* Value */
     , (600056,  33,          1) /* Bonded - Bonded */
     , (600056,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600056,  94,         16) /* TargetType - Creature */
     , (600056, 114,          1) /* Attuned - Attuned */
     , (600056, 269,          50) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600056,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600056,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600056,   1, 'Crate of Empyrean Death Totems') /* Name */
     , (600056,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (600056,  16, 'A box containing 50 Empyrean Death Totems.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600056,   1, 0x0200011E) /* Setup */
     , (600056,   3, 0x20000014) /* SoundTable */
     , (600056,   8, 0x060012F8) /* Icon */
	 , (600056,  50, 0x06006FF5) /* IconOverlay */
     , (600056,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600056,  38,      600051) /* UseCreateItem - Black Page of Salt and Ash */;
