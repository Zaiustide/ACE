DELETE FROM `weenie` WHERE `class_Id` = 490330;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490330, 'ace490330-Quicknessbeermorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490330,   1,       2048) /* ItemType - Gem */
     , (490330,   5,         10) /* EncumbranceVal */
     , (490330,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490330,  18,          1) /* UiEffects - Magical */
     , (490330,  19,         50) /* Value */
     , (490330,  65,        101) /* Placement - Resting */
     , (490330,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490330,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490330,   1, False) /* Stuck */
     , (490330,  11, True ) /* IgnoreCollisions */
     , (490330,  13, True ) /* Ethereal */
     , (490330,  14, True ) /* GravityStatus */
     , (490330,  19, True ) /* Attackable */
     , (490330,  22, True ) /* Inscribable */
     , (490330,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490330,   1, 'Morph Gem of Quickness') /* Name */
     , (490330,  14, 'Applying this gem to loot type items has a 100% chance to apply the spell Bobo''s Quickening.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490330,   1, 0x02000179) /* Setup */
     , (490330,   3, 0x20000014) /* SoundTable */
     , (490330,   6, 0x04000BEF) /* PaletteBase */
     , (490330,   7, 0x1000010B) /* ClothingBase */
     , (490330,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490330,  8, 0x06005F44) /* Icon */
	 , (490330,  50, 0x06001386) /* IconOverlay */
     , (490330,  52, 0x06005B0C) /* IconUnderlay */;