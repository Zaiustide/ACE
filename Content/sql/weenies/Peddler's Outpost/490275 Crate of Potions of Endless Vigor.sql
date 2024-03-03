DELETE FROM `weenie` WHERE `class_Id` = 490275;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490275, 'ace490275-Crate of Salvaged Steel', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490275,   1,        128) /* ItemType - Misc */
     , (490275,   5,         50) /* EncumbranceVal */
     , (490275,  11,          1) /* MaxStackSize */
     , (490275,  12,          1) /* StackSize */
     , (490275,  13,         50) /* StackUnitEncumbrance */
     , (490275,  15,          5) /* StackUnitValue */
     , (490275,  16,          8) /* ItemUseable - Contained */
     , (490275,  19,          5) /* Value */
     , (490275,  33,          1) /* Bonded - Bonded */
     , (490275,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490275,  94,         16) /* TargetType - Creature */
     , (490275, 114,          1) /* Attuned - Attuned */
     , (490275, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490275,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490275,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490275,   1, 'Crate of Potions of Endless Vigor') /* Name */
     , (490275,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490275,  16, 'A box containing ten Potions of Endless Vigor.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490275,   1, 0x0200011E) /* Setup */
     , (490275,   3, 0x20000014) /* SoundTable */
     , (490275,   8, 0x060012F8) /* Icon */
	 , (490275,  50, 0x06002DEB) /* IconOverlay */
     , (490275,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490275,  38,      25544) /* UseCreateItem - Blank Augmentation Gem */;
