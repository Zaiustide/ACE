DELETE FROM `weenie` WHERE `class_Id` = 490235;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490235, 'Island Dragon Hide', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490235,   1,        128) /* ItemType - Misc */
     , (490235,   5,        100) /* EncumbranceVal */
     , (490235,   8,        600) /* Mass */
     , (490235,  16,          1) /* ItemUseable - No */
     , (490235,  19,          0) /* Value */
     , (490235,  33,          1) /* Bonded - Bonded */
     , (490235,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490235, 114,          1) /* Attuned - Attuned */
     , (490235, 150,        103) /* HookPlacement - Hook */
     , (490235, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490235,  22, True ) /* Inscribable */
     , (490235,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490235,  39,       7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490235,   1, 'Island Dragon Hide') /* Name */
     , (490235,  16, 'A large sturdy hide from the rare Island Dragon ') /* LongDesc */
     , (490235,  33, 'Dragonhide') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490235,   1, 0x02000181) /* Setup */
     , (490235,   3, 0x20000014) /* SoundTable */
     , (490235,   8, 0x06002BBA) /* Icon */
     , (490235,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490235,  36, 0x0E000016) /* MutateFilter */
	 , (490235,  52, 0x06005B0C) /* IconUnderlay */;
