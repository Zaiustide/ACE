DELETE FROM `weenie` WHERE `class_Id` = 490328;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490328, 'ace490328-Endurancebeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490328,   1,       2048) /* ItemType - Gem */
     , (490328,   5,         10) /* EncumbranceVal */
     , (490328,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490328,  18,          1) /* UiEffects - Magical */
     , (490328,  19,         25) /* Value */
     , (490328,  65,        101) /* Placement - Resting */
     , (490328,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490328,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490328,   1, False) /* Stuck */
     , (490328,  11, True ) /* IgnoreCollisions */
     , (490328,  13, True ) /* Ethereal */
     , (490328,  14, True ) /* GravityStatus */
     , (490328,  19, True ) /* Attackable */
     , (490328,  22, True ) /* Inscribable */
     , (490328,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490328,   1, 'Morph Gem of Endurance') /* Name */
     , (490328,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Hunter''s Hardiness.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490328,   1, 0x02000179) /* Setup */
     , (490328,   3, 0x20000014) /* SoundTable */
     , (490328,   6, 0x04000BEF) /* PaletteBase */
     , (490328,   7, 0x1000010B) /* ClothingBase */
     , (490328,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490328,  8, 0x06005F45) /* Icon */
	 , (490328,  50, 0x06001371) /* IconOverlay */
     , (490328,  52, 0x06005B0C) /* IconUnderlay */;