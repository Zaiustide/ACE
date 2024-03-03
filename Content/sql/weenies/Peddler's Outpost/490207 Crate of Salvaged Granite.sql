DELETE FROM `weenie` WHERE `class_Id` = 490207;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490207, 'ace490207-Crate of Salvaged Granite', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490207,   1,        128) /* ItemType - Misc */
     , (490207,   5,         50) /* EncumbranceVal */
     , (490207,  11,          1) /* MaxStackSize */
     , (490207,  12,          1) /* StackSize */
     , (490207,  13,         50) /* StackUnitEncumbrance */
     , (490207,  15,          2) /* StackUnitValue */
     , (490207,  16,          8) /* ItemUseable - Contained */
     , (490207,  19,          2) /* Value */
     , (490207,  33,          1) /* Bonded - Bonded */
     , (490207,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490207,  94,         16) /* TargetType - Creature */
     , (490207, 114,          1) /* Attuned - Attuned */
     , (490207, 269,          10) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490207,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490207,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490207,   1, 'Crate of Salvaged Granite') /* Name */
     , (490207,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490207,  16, 'A box containing ten bags of granite of excellent quality.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490207,   1, 0x0200011E) /* Setup */
     , (490207,   3, 0x20000014) /* SoundTable */
     , (490207,   8, 0x060012F8) /* Icon */
	 , (490207,  50, 0x060026CD) /* IconOverlay */
     , (490207,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490207,  38,      29576) /* UseCreateItem - Blank Augmentation Gem */;
