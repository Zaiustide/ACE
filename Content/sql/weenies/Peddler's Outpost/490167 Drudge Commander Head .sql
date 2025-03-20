DELETE FROM `weenie` WHERE `class_Id` = 490167;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490167, 'Drudge Commander Head', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490167,   1,        128) /* ItemType - Misc */
     , (490167,   5,        100) /* EncumbranceVal */
     , (490167,   8,        600) /* Mass */
     , (490167,  16,          1) /* ItemUseable - No */
     , (490167,  19,          0) /* Value */
     , (490167,  33,          1) /* Bonded - Bonded */
     , (490167,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490167, 114,          1) /* Attuned - Attuned */
     , (490167, 150,        103) /* HookPlacement - Hook */
     , (490167, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490167,  22, True ) /* Inscribable */
     , (490167,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490167,  39,       5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490167,   1, 'Drudge Commander''s Head') /* Name */
     , (490167,  16, 'A large severed head of a Drudge Commander ') /* LongDesc */
     , (490167,  33, 'DrudgeCommander') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490167,   1, 0x02000957) /* Setup */
     , (490167,   3, 0x20000014) /* SoundTable */
     , (490167,   8, 0x06001E36) /* Icon */
     , (490167,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490167,  36, 0x0E000016) /* MutateFilter */
	 , (490167,  52, 0x06005B0C) /* IconUnderlay */;
