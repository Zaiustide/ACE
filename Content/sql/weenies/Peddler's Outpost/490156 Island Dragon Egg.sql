DELETE FROM `weenie` WHERE `class_Id` = 490156;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490156, 'Island Dragon Egg', 51, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490156,   1,        128) /* ItemType - Misc */
     , (490156,   5,        10) /* EncumbranceVal */
     , (490156,  11,        10) /* MaxStackSize */
     , (490156,  12,          1) /* StackSize */
     , (490156,  13,        10) /* StackUnitEncumbrance */
     , (490156,  15,      10000) /* StackUnitValue */
     , (490156,  16,          1) /* ItemUseable - No */
	 , (490156,  33,          1) /* Bonded - Bonded */
     , (490156, 114,          1) /* Attuned - Attuned */
     , (490156,  19,      10000) /* Value */
     , (490156,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490156,  22, True ) /* Inscribable */
     , (490156,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490156,  39,       7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490156,   1, 'Island Dragon Egg') /* Name */
     , (490156,  16, 'A large Dragon Egg from the rare Island Dragon ') /* LongDesc */
	 , (490156,  33, 'Dragoneggpickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490156,   1, 0x02001265) /* Setup */
     , (490156,   3, 0x20000014) /* SoundTable */
     , (490156,   8, 0x06005A3B) /* Icon */
     , (490156,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490156,  36, 0x0E000016) /* MutateFilter */
	 , (490156,  52, 0x06005B0C) /* IconUnderlay */;
