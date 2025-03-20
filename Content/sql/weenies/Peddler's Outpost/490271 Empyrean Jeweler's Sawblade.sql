DELETE FROM `weenie` WHERE `class_Id` = 490271;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490271, 'ace490271-empyreanjeweler''ssawblade', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490271,   1,       2048) /* ItemType - Gem */
     , (490271,   5,         10) /* EncumbranceVal */
     , (490271,  11,          1) /* MaxStackSize */
     , (490271,  12,          1) /* StackSize */
     , (490271,  13,         10) /* StackUnitEncumbrance */
     , (490271,  15,          2) /* StackUnitValue */
     , (490271,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490271,  19,          2) /* Value */
     , (490271,  65,        101) /* Placement - Resting */
     , (490271,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490271,  94,          8) /* TargetType - Jewelry */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490271,   1, False) /* Stuck */
     , (490271,  11, True ) /* IgnoreCollisions */
     , (490271,  13, True ) /* Ethereal */
     , (490271,  14, True ) /* GravityStatus */
     , (490271,  19, True ) /* Attackable */
     , (490271,  22, True ) /* Inscribable */
     , (490271,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490271,   1, 'Empyrean Jeweler''s Sawblade') /* Name */
     , (490271,  14, 'Use this tool on any ring, bracelet or necklace for the chance to alter it in a way that allows it to be worn in an alternative slot.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490271,   1, 0x02000181) /* Setup */
     , (490271,   3, 0x20000014) /* SoundTable */
     , (490271,   8, 0x06006A9B) /* Icon */
     , (490271,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490271,  52, 0x06005B0C) /* IconUnderlay */;
