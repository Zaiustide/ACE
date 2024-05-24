DELETE FROM `weenie` WHERE `class_Id` = 490305;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490305, 'ace490305-Water of Stasis', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490305,   1,       2048) /* ItemType - Gem */
     , (490305,   5,         10) /* EncumbranceVal */
     , (490305,  11,          1) /* MaxStackSize */
     , (490305,  12,          1) /* StackSize */
     , (490305,  13,         10) /* StackUnitEncumbrance */
     , (490305,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490305,  18,          1) /* UiEffects - Magical */
     , (490305,  19,         50) /* Value */
     , (490305,  65,        101) /* Placement - Resting */
     , (490305,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490305,  94,          257) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490305,   1, False) /* Stuck */
     , (490305,  11, True ) /* IgnoreCollisions */
     , (490305,  13, True ) /* Ethereal */
     , (490305,  14, True ) /* GravityStatus */
     , (490305,  19, True ) /* Attackable */
     , (490305,  22, True ) /* Inscribable */
     , (490305,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490305,   1, 'Water of Stasis') /* Name */
     , (490305,  14, 'This bottled water appears unique. It appears to have been instilled with the ability to resist magic. Applying this water to melee weapons makes them unenchantable.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490305,   1, 0x02000179) /* Setup */
     , (490305,   3, 0x20000014) /* SoundTable */
     , (490305,   6, 0x04000BEF) /* PaletteBase */
     , (490305,   7, 0x1000010B) /* ClothingBase */
     , (490305,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490305,  8, 0x06006a6a) /* Icon */
     , (490305,  52, 0x060065FB) /* IconUnderlay */;

