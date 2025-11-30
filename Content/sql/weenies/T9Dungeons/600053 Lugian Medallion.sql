DELETE FROM `weenie` WHERE `class_Id` = 600053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600053, 'ace600053-Lugian Medallion', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600053,   1,        128) /* ItemType - Misc */
     , (600053,   5,          5) /* EncumbranceVal */
     , (600053,   8,          5) /* Mass */
     , (600053,   9,          0) /* ValidLocations - None */
     , (600053,  11,       1000) /* MaxStackSize */
     , (600053,  12,          1) /* StackSize */
     , (600053,  13,          5) /* StackUnitEncumbrance */
     , (600053,  14,          5) /* StackUnitMass */
     , (600053,  15,          0) /* StackUnitValue */
     , (600053,  16,          1) /* ItemUseable - No */
     , (600053,  19,          0) /* Value */
     , (600053,  33,         -1) /* Bonded - Slippery */
     , (600053,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600053, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600053,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600053,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600053,   1, 'Lugian Medallion') /* Name */
     , (600053,  16, 'A trophy pulled from the hands of a fallen foe. A prized trophy of the Lugian''s collected by the finest of their warriors as a testement to their skill in battle.') /* LongDesc */
     , (600053,  20, 'Lugian Medallions') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600053,   1, 0x02000A0E) /* Setup */
     , (600053,   3, 0x20000014) /* SoundTable */
     , (600053,   6, 0x040010D5) /* PaletteBase */
     , (600053,   7, 0x100002C2) /* ClothingBase */
     , (600053,   8, 0x06005F5A) /* Icon */
	 , (600053,  52, 0x06005B0C) /* IconUnderlay */
     , (600053,  22, 0x3400002B) /* PhysicsEffectTable */;
