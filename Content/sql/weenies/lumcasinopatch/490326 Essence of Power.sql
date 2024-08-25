DELETE FROM `weenie` WHERE `class_Id` = 490326;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490326, 'EssenceofPower', 51, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490326,   1,     128) /* ItemType - PromissoryNote */
     , (490326,   5,          1) /* EncumbranceVal */
     , (490326,   8,          1) /* Mass */
     , (490326,   9,          0) /* ValidLocations - None */
     , (490326,  11,        1000) /* MaxStackSize */
     , (490326,  12,          1) /* StackSize */
     , (490326,  13,          1) /* StackUnitEncumbrance */
     , (490326,  14,          1) /* StackUnitMass */
     , (490326,  15,          10) /* StackUnitValue */
     , (490326,  16,          1) /* ItemUseable - No */
     , (490326,  19,          10) /* Value */
     , (490326,  33,          -1) /* Bonded - Bonded */
	 , (490326, 114,          1) /* Attuned - Attuned */
     , (490326,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490326,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490326,   1, 'Essence of Power') /* Name */
     , (490326,  20, 'Essences of Power') /* PluralName */
	 , (490326,  16, 'A token that can be handed to Baldur in the Abandoned Mine in exchange for 5 pk trophies.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490326,  8, 0x0600699E) /* Icon */
     , (490326,  50, 0x060064DC) /* IconOverlay */
     , (490326,  52, 0x06005B0C) /* IconUnderlay */;