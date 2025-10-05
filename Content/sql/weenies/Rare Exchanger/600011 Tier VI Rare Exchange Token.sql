DELETE FROM `weenie` WHERE `class_Id` = 600011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600011, 'Tier VI Rare Exchange Token ', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600011,   1,     128) /* ItemType - PromissoryNote */
     , (600011,   5,          1) /* EncumbranceVal */
     , (600011,   8,          1) /* Mass */
     , (600011,   9,          0) /* ValidLocations - None */
     , (600011,  11,        1) /* MaxStackSize */
     , (600011,  12,          1) /* StackSize */
     , (600011,  13,          1) /* StackUnitEncumbrance */
     , (600011,  14,          1) /* StackUnitMass */
     , (600011,  15,          1000) /* StackUnitValue */
     , (600011,  16,          1) /* ItemUseable - No */
     , (600011,  19,          1000) /* Value */
     , (600011,  33,          1) /* Bonded - Bonded */
	 , (600011, 114,          1) /* Attuned - Attuned */
     , (600011,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600011,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600011,   1, 'Tier VI Rare Exchange Token') /* Name */
     , (600011,  20, 'Tier VI Rare Exchange Tokens') /* PluralName */
	 , (600011,  16, 'A Token that can be used to exchange a Tier VI Rare for another random one. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600011,  8, 0x060065E6) /* Icon */
     , (600011,  52, 0x06006E89) /* IconUnderlay */;


