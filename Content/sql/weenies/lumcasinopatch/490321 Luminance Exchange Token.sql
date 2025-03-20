DELETE FROM `weenie` WHERE `class_Id` = 490321;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490321, 'luminanceexchangetoken', 38, '2021-11-03 08:49:59') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490321,   1,     2048) /* ItemType - PromissoryNote */
     , (490321,   5,          10) /* EncumbranceVal */
     , (490321,   8,          10) /* Mass */
     , (490321,   9,          0) /* ValidLocations - None */
     , (490321,  11,        100) /* MaxStackSize */
     , (490321,  12,          1) /* StackSize */
     , (490321,  13,          10) /* StackUnitEncumbrance */
     , (490321,  14,          10) /* StackUnitMass */
     , (490321,  15,          10) /* StackUnitValue */
     , (490321,  16,          1) /* ItemUseable - No */
     , (490321,  19,          10) /* Value */
     , (490321,  33,          1) /* Bonded - Bonded */
	 , (490321, 114,          1) /* Attuned - Attuned */
     , (490321,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

     INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490321,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490321,   1, 'Luminance Exchange Token') /* Name */
     , (490321,  20, 'Luminance Exchange Tokens') /* PluralName */
	 , (490321,  16, 'A token that can be handed to Hera in the Abandoned Mine along with 150,000 luminance for a chance to spin the reward wheel for a prize.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490321,  8, 0x0600699E) /* Icon */
     , (490321,  50, 0x06007096) /* IconOverlay */
     , (490321,  52, 0x060065FB) /* IconUnderlay */;