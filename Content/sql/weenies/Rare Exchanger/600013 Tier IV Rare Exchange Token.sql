DELETE FROM `weenie` WHERE `class_Id` = 600013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600013, 'Tier IV Rare Exchange Token ', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600013,   1,     128) /* ItemType - PromissoryNote */
     , (600013,   5,          1) /* EncumbranceVal */
     , (600013,   8,          1) /* Mass */
     , (600013,   9,          0) /* ValidLocations - None */
     , (600013,  11,        1) /* MaxStackSize */
     , (600013,  12,          1) /* StackSize */
     , (600013,  13,          1) /* StackUnitEncumbrance */
     , (600013,  14,          1) /* StackUnitMass */
     , (600013,  15,          500) /* StackUnitValue */
     , (600013,  16,          1) /* ItemUseable - No */
     , (600013,  19,          500) /* Value */
     , (600013,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600013,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600013,   1, 'Tier IV Rare Exchange Token') /* Name */
     , (600013,  20, 'Tier IV Rare Exchange Tokens') /* PluralName */
	 , (600013,  16, 'A Token that can be used to exchange a Tier IV Rare for another random one. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600013,  8, 0x060065E5) /* Icon */
     , (600013,  52, 0x06006E89) /* IconUnderlay */;


