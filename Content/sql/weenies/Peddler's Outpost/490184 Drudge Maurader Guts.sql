DELETE FROM `weenie` WHERE `class_Id` = 490184;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490184, 'ace490184-Drudge Maurader Guts', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490184,   1,        128) /* ItemType - Misc */
     , (490184,   5,        10) /* EncumbranceVal */
     , (490184,  11,        10) /* MaxStackSize */
     , (490184,  12,          1) /* StackSize */
     , (490184,  13,        10) /* StackUnitEncumbrance */
     , (490184,  15,      10000) /* StackUnitValue */
     , (490184,  16,          1) /* ItemUseable - No */
     , (490184,  19,      10000) /* Value */
	 , (490184,  33,          1) /* Bonded - Bonded */
     , (490184, 114,          1) /* Attuned - Attuned */
     , (490184,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490184,   1, 'Drudge Maurader Guts') /* Name */
     , (490184,  16, 'The guts of a departed Drudge Maurader.') /* LongDesc */
	 , (490184,  20, 'Drudge Maurader Guts') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490184,   1, 0x02000181) /* Setup */
     , (490184,   3, 0x20000014) /* SoundTable */
     , (490184,   6, 0x04000BEF) /* PaletteBase */
     , (490184,   7, 0x10000178) /* ClothingBase */
     , (490184,   8, 0x06001CCB) /* Icon */
     , (490184,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490184,  52, 0x06005B0C) /* IconUnderlay */;
