DELETE FROM `weenie` WHERE `class_Id` = 490510;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490510, 'ace490510-healboostmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490510,   1,       2048) /* ItemType - Gem */
     , (490510,   5,         10) /* EncumbranceVal */
     , (490510,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490510,  18,          1) /* UiEffects - Magical */
     , (490510,  19,         10) /* Value */
     , (490510,  65,        101) /* Placement - Resting */
     , (490510,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490510,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490510,   1, False) /* Stuck */
     , (490510,  11, True ) /* IgnoreCollisions */
     , (490510,  13, True ) /* Ethereal */
     , (490510,  14, True ) /* GravityStatus */
     , (490510,  19, True ) /* Attackable */
     , (490510,  22, True ) /* Inscribable */
     , (490510,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490510,   1, 'Gem of Vitality') /* Name */
     , (490510,  14, 'A perfect, exquisitely cut ruby. Applying this gem to loot generated jewelry or rare jewelry will add three Vitality rating. This will override preexisting ratings.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490510,   1, 0x02000179) /* Setup */
     , (490510,   3, 0x20000014) /* SoundTable */
     , (490510,   6, 0x04000BEF) /* PaletteBase */
     , (490510,   7, 0x1000010B) /* ClothingBase */
     , (490510,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490510,  8,   0x06006B08) /* Icon */
	 , (490510,  50,   0x06005B40) /* IconOverlay */
     , (490510,  52, 0x06005B0C) /* IconUnderlay */;

