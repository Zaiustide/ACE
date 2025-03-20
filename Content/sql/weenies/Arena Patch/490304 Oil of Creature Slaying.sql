DELETE FROM `weenie` WHERE `class_Id` = 490304;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490304, 'ace490304-Oilofcreatureslayingmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490304,   1,       2048) /* ItemType - Gem */
     , (490304,   5,         10) /* EncumbranceVal */
     , (490304,  11,          1) /* MaxStackSize */
     , (490304,  12,          1) /* StackSize */
     , (490304,  13,         10) /* StackUnitEncumbrance */
     , (490304,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490304,  18,          1) /* UiEffects - Magical */
     , (490304,  19,         50) /* Value */
     , (490304,  65,        101) /* Placement - Resting */
     , (490304,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490304,  94,          33025) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490304,   1, False) /* Stuck */
     , (490304,  11, True ) /* IgnoreCollisions */
     , (490304,  13, True ) /* Ethereal */
     , (490304,  14, True ) /* GravityStatus */
     , (490304,  19, True ) /* Attackable */
     , (490304,  22, True ) /* Inscribable */
     , (490304,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490304,   1, 'Oil of Creature Slaying') /* Name */
     , (490304,  14, 'A magic imbued oil that may be used to polish a loot generated weapon or wand. Applying this oil will enhance the weapon with a creature slaying property.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490304,   1, 0x02000179) /* Setup */
     , (490304,   3, 0x20000014) /* SoundTable */
     , (490304,   6, 0x04000BEF) /* PaletteBase */
     , (490304,   7, 0x1000010B) /* ClothingBase */
     , (490304,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490304,  8, 0x060069AB) /* Icon */
     , (490304,  52, 0x060065FB) /* IconUnderlay */;

