DELETE FROM `weenie` WHERE `class_Id` = 490239;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490239, 'Razor Tooth''s Fang', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490239,   1,        128) /* ItemType - Misc */
     , (490239,   5,        100) /* EncumbranceVal */
     , (490239,   8,        600) /* Mass */
     , (490239,  16,          1) /* ItemUseable - No */
     , (490239,  19,          0) /* Value */
     , (490239,  33,          1) /* Bonded - Bonded */
     , (490239,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490239, 114,          1) /* Attuned - Attuned */
     , (490239, 150,        103) /* HookPlacement - Hook */
     , (490239, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490239,  22, True ) /* Inscribable */
     , (490239,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490239,  39,       4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490239,   1, 'Razor Tooth''s Fang') /* Name */
     , (490239,  16, 'A large extremely sharp gigantic rat fang. ') /* LongDesc */
     , (490239,  33, 'razortooth') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490239,   1, 0x02000181) /* Setup */
     , (490239,   3, 0x20000014) /* SoundTable */
     , (490239,   8, 0x06001FB8) /* Icon */
     , (490239,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490239,  36, 0x0E000016) /* MutateFilter */
	 , (490239,  52, 0x06005B0C) /* IconUnderlay */;
