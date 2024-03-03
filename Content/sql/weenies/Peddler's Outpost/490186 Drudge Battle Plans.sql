DELETE FROM `weenie` WHERE `class_Id` = 490186;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490186, 'ace490186-drudgebattleplans', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490186,   1,        128) /* ItemType - Misc */
     , (490186,   5,       2500) /* EncumbranceVal */
     , (490186,  16,          1) /* ItemUseable - No */
     , (490186,  19,        100) /* Value */
	 , (490186,  33,          1) /* Bonded - Bonded */
     , (490186, 114,          1) /* Attuned - Attuned */
     , (490186,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490186,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490186,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490186,   1, 'Drudge Battle Plans') /* Name */
     , (490186,  16, ' A copy of the Drudges settlement and attack plans.') /* LongDesc */
	 , (490186,  33, 'DrudgeBattlePlan') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490186,   1, 0x020016ED) /* Setup */
     , (490186,   3, 0x20000014) /* SoundTable */
     , (490186,   8, 0x06006646) /* Icon */
     , (490186,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490186,  52, 0x06005B0C) /* IconUnderlay */;
