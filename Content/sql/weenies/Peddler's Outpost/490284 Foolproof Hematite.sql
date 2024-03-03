DELETE FROM `weenie` WHERE `class_Id` = 490284;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490284, 'ace490284-hematitemorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490284,   1,       2048) /* ItemType - Gem */
     , (490284,   5,         10) /* EncumbranceVal */
	 , (490284,   3,          2) /* PaletteTemplate - Blue */
     , (490284,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490284,  18,          1) /* UiEffects - Magical */
     , (490284,  19,         20) /* Value */
     , (490284,  65,        101) /* Placement - Resting */
     , (490284,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490284,  94,          8) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490284,   1, False) /* Stuck */
     , (490284,  11, True ) /* IgnoreCollisions */
     , (490284,  13, True ) /* Ethereal */
     , (490284,  14, True ) /* GravityStatus */
     , (490284,  19, True ) /* Attackable */
     , (490284,  22, True ) /* Inscribable */
     , (490284,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490284,   1, 'Foolproof Hematite') /* Name */
     , (490284,  14, 'Apply this bag of salvage to a piece of jewelry for a 100% chance to land.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490284,   1, 0x02000181) /* Setup */
     , (490284,   3, 0x20000014) /* SoundTable */
     , (490284,   6, 0x04000BEF) /* PaletteBase */
     , (490284,   7, 0x100003CE) /* ClothingBase */
     , (490284,   8, 0x0600102C) /* Icon */
     , (490284,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490284,  50, 0x060026FD) /* IconOverlay */
     , (490284,  52, 100689403) /* IconUnderlay */;

