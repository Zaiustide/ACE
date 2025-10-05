DELETE FROM `weenie` WHERE `class_Id` = 1000005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000005, 'radiantambercrystal', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000005,   1,     128) /* ItemType - PromissoryNote */
     , (1000005,   5,          1) /* EncumbranceVal */
     , (1000005,   8,          1) /* Mass */
     , (1000005,   9,          0) /* ValidLocations - None */
     , (1000005,  11,        100) /* MaxStackSize */
     , (1000005,  12,          1) /* StackSize */
     , (1000005,  13,          1) /* StackUnitEncumbrance */
     , (1000005,  14,          1) /* StackUnitMass */
     , (1000005,  15,          1) /* StackUnitValue */
     , (1000005,  16,          1) /* ItemUseable - No */
     , (1000005,  19,          1) /* Value */
     , (1000005,  33,          1) /* Bonded - Bonded */
	 , (1000005, 114,          1) /* Attuned - Attuned */
     , (1000005,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000005,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000005,   1, 'Radiant Amber Crystal') /* Name */
     , (1000005,  20, 'Radiant Amber Crystals') /* PluralName */
	 , (1000005,  16, 'A large shimmering amber crystal of the finest quality. The light radiates off its surface') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000005,  8, 0x06006DFD) /* Icon */
     , (1000005,  52, 0x06006E89) /* IconUnderlay */;


