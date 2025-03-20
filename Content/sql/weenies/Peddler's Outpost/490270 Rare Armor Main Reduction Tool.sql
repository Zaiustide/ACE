DELETE FROM `weenie` WHERE `class_Id` = 490270;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490270, 'ace490270-rarearmormainreductiontool', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490270,   1,       2048) /* ItemType - Gem */
     , (490270,   5,         10) /* EncumbranceVal */
     , (490270,  11,          1) /* MaxStackSize */
     , (490270,  12,          1) /* StackSize */
     , (490270,  13,         10) /* StackUnitEncumbrance */
     , (490270,  15,          2) /* StackUnitValue */
     , (490270,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490270,  19,          2) /* Value */
     , (490270,  65,        101) /* Placement - Resting */
     , (490270,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490270,  94,          6) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490270,   1, False) /* Stuck */
     , (490270,  11, True ) /* IgnoreCollisions */
     , (490270,  13, True ) /* Ethereal */
     , (490270,  14, True ) /* GravityStatus */
     , (490270,  19, True ) /* Attackable */
     , (490270,  22, True ) /* Inscribable */
     , (490270,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490270,   1, 'Rare Armor Main Reduction Tool') /* Name */
     , (490270,  14, 'Use this tool on any rare multi-slot armor in order to reduce it to a single slot. It will still cover the same slots in appearance but only a single slot in armor coverage.') /* Use */
     , (490270,  16, 'This tool will reduce Hauberk/Coats to Breastplate coverage. It will reduce rare Leggings to Tasset coverage.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490270,   1, 0x020004DD) /* Setup */
     , (490270,   3, 0x20000014) /* SoundTable */
     , (490270,   8, 0x060070F0) /* Icon */
     , (490270,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490270,  52, 0x06005B0C) /* IconUnderlay */;
