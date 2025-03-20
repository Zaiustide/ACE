DELETE FROM `weenie` WHERE `class_Id` = 490327;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490327, 'ace490327-Strengthbeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490327,   1,       2048) /* ItemType - Gem */
     , (490327,   5,         10) /* EncumbranceVal */
     , (490327,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490327,  18,          1) /* UiEffects - Magical */
     , (490327,  19,         50) /* Value */
     , (490327,  65,        101) /* Placement - Resting */
     , (490327,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490327,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490327,   1, False) /* Stuck */
     , (490327,  11, True ) /* IgnoreCollisions */
     , (490327,  13, True ) /* Ethereal */
     , (490327,  14, True ) /* GravityStatus */
     , (490327,  19, True ) /* Attackable */
     , (490327,  22, True ) /* Inscribable */
     , (490327,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490327,   1, 'Morph Gem of Strength') /* Name */
     , (490327,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Zongo'' Fist.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490327,   1, 0x02000179) /* Setup */
     , (490327,   3, 0x20000014) /* SoundTable */
     , (490327,   6, 0x04000BEF) /* PaletteBase */
     , (490327,   7, 0x1000010B) /* ClothingBase */
     , (490327,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490327,  8, 0x06005F48) /* Icon */
	 , (490327,  50, 0x0600138C) /* IconOverlay */
     , (490327,  52, 0x06005B0C) /* IconUnderlay */;