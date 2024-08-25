DELETE FROM `weenie` WHERE `class_Id` = 490354;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490354, 'ace490354-Boxed infinite Ivory', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490354,   1,        128) /* ItemType - Misc */
     , (490354,   5,         50) /* EncumbranceVal */
     , (490354,  16,          8) /* ItemUseable - Contained */
     , (490354,  19,          100) /* Value */
     , (490354,  33,          1) /* Bonded - Bonded */
     , (490354,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490354,  94,         16) /* TargetType - Creature */
     , (490354, 114,          1) /* Attuned - Attuned */
     , (490354, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490354,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490354,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490354,   1, 'Boxed Infinite Ivory') /* Name */
     , (490354,  14, 'Use this crate to retrieve its contents.') /* Use */
     , (490354,  16, 'A box containing one bag of Infinite Ivory.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490354,   1, 0x0200011E) /* Setup */
     , (490354,   3, 0x20000014) /* SoundTable */
     , (490354,   8, 0x060026BF) /* Icon */
     , (490354,  50, 0x060026FF) /* IconOverlay */
     , (490354,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490354,  38,      30092) /* UseCreateItem - Blank Augmentation Gem */;
