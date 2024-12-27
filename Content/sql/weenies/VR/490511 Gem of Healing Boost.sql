DELETE FROM `weenie` WHERE `class_Id` = 490511;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490511, 'ace490511-healboostmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490511,   1,       2048) /* ItemType - Gem */
     , (490511,   5,         10) /* EncumbranceVal */
     , (490511,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490511,  18,          1) /* UiEffects - Magical */
     , (490511,  19,         10) /* Value */
     , (490511,  65,        101) /* Placement - Resting */
     , (490511,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490511,  94,          35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490511,   1, False) /* Stuck */
     , (490511,  11, True ) /* IgnoreCollisions */
     , (490511,  13, True ) /* Ethereal */
     , (490511,  14, True ) /* GravityStatus */
     , (490511,  19, True ) /* Attackable */
     , (490511,  22, True ) /* Inscribable */
     , (490511,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490511,   1, 'Gem of Healing Boost') /* Name */
     , (490511,  14, 'A perfect, exquisitely cut diamond. Applying this gem to loot generated jewelry or rare jewelry will add three Healing Boost rating. This will override preexisting ratings.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490511,   1, 0x02000179) /* Setup */
     , (490511,   3, 0x20000014) /* SoundTable */
     , (490511,   6, 0x04000BEF) /* PaletteBase */
     , (490511,   7, 0x1000010B) /* ClothingBase */
     , (490511,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490511,  8,   0x06006B37) /* Icon */
	 , (490511,  50,   0x06005B3F) /* IconOverlay */
     , (490511,  52, 0x06005B0C) /* IconUnderlay */;

