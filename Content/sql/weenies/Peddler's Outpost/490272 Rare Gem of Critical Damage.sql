DELETE FROM `weenie` WHERE `class_Id` = 490272;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490272, 'ace490272-rarearmormflawlessfireopal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490272,   1,       2048) /* ItemType - Gem */
     , (490272,   5,         10) /* EncumbranceVal */
     , (490272,  11,          1) /* MaxStackSize */
     , (490272,  12,          1) /* StackSize */
     , (490272,  13,         10) /* StackUnitEncumbrance */
     , (490272,  15,          2) /* StackUnitValue */
     , (490272,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490272,  19,          2) /* Value */
     , (490272,  65,        101) /* Placement - Resting */
     , (490272,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490272,  94,      35215) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490272,   1, False) /* Stuck */
     , (490272,  11, True ) /* IgnoreCollisions */
     , (490272,  13, True ) /* Ethereal */
     , (490272,  14, True ) /* GravityStatus */
     , (490272,  19, True ) /* Attackable */
     , (490272,  22, True ) /* Inscribable */
     , (490272,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490272,   1, 'Rare Gem of Critical Damage') /* Name */
    , (490272,  14, 'An absolutely flawless gem. Applying this to a piece of armor will grant it two Critical Damage rating. This gem can also be applied to shields giving a random number of additional Critical Damage Rating upto a max of 15. Gems can be applied more then once for a chance to reroll the current rating on the shield. If there is already Critical Damage Reduction rating on the item it will be removed.') /* Use */
     , (490272,  16, 'There is room for only one gem, will not stack with existing rating.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490272,   1, 0x02000179) /* Setup */
     , (490272,   3, 0x20000014) /* SoundTable */
     , (490272,   6, 0x04000BEF) /* PaletteBase */
     , (490272,   7, 0x1000010B) /* ClothingBase */
     , (490272,   8, 0x06006815) /* Icon */
     , (490272,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490272,  52, 0x06005B0C) /* IconUnderlay */;
