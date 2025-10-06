DELETE FROM `weenie` WHERE `class_Id` = 600009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600009, 'Tier V Rare Exchange Token ', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600009,   1,     128) /* ItemType - PromissoryNote */
     , (600009,   5,          1) /* EncumbranceVal */
     , (600009,   8,          1) /* Mass */
     , (600009,   9,          0) /* ValidLocations - None */
     , (600009,  11,        1) /* MaxStackSize */
     , (600009,  12,          1) /* StackSize */
     , (600009,  13,          1) /* StackUnitEncumbrance */
     , (600009,  14,          1) /* StackUnitMass */
     , (600009,  15,          1) /* StackUnitValue */
     , (600009,  16,          1) /* ItemUseable - No */
     , (600009,  19,          1) /* Value */
     , (600009,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600009,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600009,   1, 'Tier V Rare Exchange Token') /* Name */
     , (600009,  20, 'Tier V Rare Exchange Tokens') /* PluralName */
	 , (600009,  16, 'A Token that can be used to exchange a Tier V Rare for another random one. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600009,  8, 0x060065E7) /* Icon */
     , (600009,  52, 0x06006E89) /* IconUnderlay */;


