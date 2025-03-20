DELETE FROM `weenie` WHERE `class_Id` = 490332;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490332, 'ace490332-Willpowerbeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490332,   1,       2048) /* ItemType - Gem */
     , (490332,   5,         10) /* EncumbranceVal */
     , (490332,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490332,  18,          1) /* UiEffects - Magical */
     , (490332,  19,         50) /* Value */
     , (490332,  65,        101) /* Placement - Resting */
     , (490332,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490332,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490332,   1, False) /* Stuck */
     , (490332,  11, True ) /* IgnoreCollisions */
     , (490332,  13, True ) /* Ethereal */
     , (490332,  14, True ) /* GravityStatus */
     , (490332,  19, True ) /* Attackable */
     , (490332,  22, True ) /* Inscribable */
     , (490332,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490332,   1, 'Morph Gem of Willpower') /* Name */
     , (490332,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Duke Raoul''s Pride.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490332,   1, 0x02000179) /* Setup */
     , (490332,   3, 0x20000014) /* SoundTable */
     , (490332,   6, 0x04000BEF) /* PaletteBase */
     , (490332,   7, 0x1000010B) /* ClothingBase */
     , (490332,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490332,  8, 0x06005F46) /* Icon */
	 , (490332,  50, 0x06001388) /* IconOverlay */
     , (490332,  52, 0x06005B0C) /* IconUnderlay */;