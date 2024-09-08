DELETE FROM `weenie` WHERE `class_Id` = 490331;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490331, 'ace490331-Focusbeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490331,   1,       2048) /* ItemType - Gem */
     , (490331,   5,         10) /* EncumbranceVal */
     , (490331,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490331,  18,          1) /* UiEffects - Magical */
     , (490331,  19,         50) /* Value */
     , (490331,  65,        101) /* Placement - Resting */
     , (490331,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490331,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490331,   1, False) /* Stuck */
     , (490331,  11, True ) /* IgnoreCollisions */
     , (490331,  13, True ) /* Ethereal */
     , (490331,  14, True ) /* GravityStatus */
     , (490331,  19, True ) /* Attackable */
     , (490331,  22, True ) /* Inscribable */
     , (490331,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490331,   1, 'Morph Gem of Focus') /* Name */
     , (490331,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Ketnan''s Eye.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490331,   1, 0x02000179) /* Setup */
     , (490331,   3, 0x20000014) /* SoundTable */
     , (490331,   6, 0x04000BEF) /* PaletteBase */
     , (490331,   7, 0x1000010B) /* ClothingBase */
     , (490331,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490331,  8, 0x06005F43) /* Icon */
	 , (490331,  50, 0x06001375) /* IconOverlay */
     , (490331,  52, 0x06005B0C) /* IconUnderlay */;