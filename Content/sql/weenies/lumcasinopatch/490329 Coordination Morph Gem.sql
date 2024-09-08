DELETE FROM `weenie` WHERE `class_Id` = 490329;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490329, 'ace490329-Coordinationbeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490329,   1,       2048) /* ItemType - Gem */
     , (490329,   5,         10) /* EncumbranceVal */
     , (490329,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490329,  18,          1) /* UiEffects - Magical */
     , (490329,  19,         50) /* Value */
     , (490329,  65,        101) /* Placement - Resting */
     , (490329,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490329,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490329,   1, False) /* Stuck */
     , (490329,  11, True ) /* IgnoreCollisions */
     , (490329,  13, True ) /* Ethereal */
     , (490329,  14, True ) /* GravityStatus */
     , (490329,  19, True ) /* Attackable */
     , (490329,  22, True ) /* Inscribable */
     , (490329,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490329,   1, 'Morph Gem of Coordination') /* Name */
     , (490329,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Brighteyes'' Favor.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490329,   1, 0x02000179) /* Setup */
     , (490329,   3, 0x20000014) /* SoundTable */
     , (490329,   6, 0x04000BEF) /* PaletteBase */
     , (490329,   7, 0x1000010B) /* ClothingBase */
     , (490329,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490329,  8, 0x06005F4A) /* Icon */
	 , (490329,  50, 0x0600136C) /* IconOverlay */
     , (490329,  52, 0x06005B0C) /* IconUnderlay */;