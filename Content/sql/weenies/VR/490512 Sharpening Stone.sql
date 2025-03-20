DELETE FROM `weenie` WHERE `class_Id` = 490512;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490512, 'ace490512-cleavetargetmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490512,   1,       2048) /* ItemType - Gem */
     , (490512,   5,         10) /* EncumbranceVal */
     , (490512,  11,          1) /* MaxStackSize */
     , (490512,  12,          1) /* StackSize */
     , (490512,  13,         10) /* StackUnitEncumbrance */
     , (490512,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490512,  18,          1) /* UiEffects - Magical */
     , (490512,  19,         50) /* Value */
     , (490512,  65,        101) /* Placement - Resting */
     , (490512,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490512,  94,          33025) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490512,   1, False) /* Stuck */
     , (490512,  11, True ) /* IgnoreCollisions */
     , (490512,  13, True ) /* Ethereal */
     , (490512,  14, True ) /* GravityStatus */
     , (490512,  19, True ) /* Attackable */
     , (490512,  22, True ) /* Inscribable */
     , (490512,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490512,   1, 'Sharpening Stone') /* Name */
     , (490512,  14, 'Useing this stone on loot generated weapons sharpens the blade allowing the weapon to easily slice through additional targets. May only sharpen once.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490512,   1, 0x02000179) /* Setup */
     , (490512,   3, 0x20000014) /* SoundTable */
     , (490512,   6, 0x04000BEF) /* PaletteBase */
     , (490512,   7, 0x1000010B) /* ClothingBase */
     , (490512,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490512,   8, 0x06006A91) /* Icon */
     , (490512,  52, 0x060065FB) /* IconUnderlay */;

