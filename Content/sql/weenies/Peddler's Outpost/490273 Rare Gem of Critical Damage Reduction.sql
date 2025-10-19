DELETE FROM `weenie` WHERE `class_Id` = 490273;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490273, 'ace490273-rarearmorgemofCDR', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490273,   1,       2048) /* ItemType - Gem */
     , (490273,   5,         10) /* EncumbranceVal */
     , (490273,  11,          1) /* MaxStackSize */
     , (490273,  12,          1) /* StackSize */
     , (490273,  13,         10) /* StackUnitEncumbrance */
     , (490273,  15,          2) /* StackUnitValue */
     , (490273,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (490273,  19,          2) /* Value */
     , (490273,  65,        101) /* Placement - Resting */
     , (490273,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490273,  94,          6) /* TargetType - Vestements */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490273,   1, False) /* Stuck */
     , (490273,  11, True ) /* IgnoreCollisions */
     , (490273,  13, True ) /* Ethereal */
     , (490273,  14, True ) /* GravityStatus */
     , (490273,  19, True ) /* Attackable */
     , (490273,  22, True ) /* Inscribable */
     , (490273,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490273,   1, 'Rare Gem of Critical Damage Reduction') /* Name */
     , (490273,  14, 'An absolutely flawless gem. Applying this to a piece of armor will grant it two Critical Damage Reduction rating. This gem can also be applied to casters giving a random number of additional Critical Damage Reduction Rating upto a max of 10. Gems can be applied more then once for a chance to reroll the current rating on the caster. If there is already Critical Damage rating on the item, this will be removed.') /* Use */
     , (490273,  16, 'There is room for only one gem, will not stack with existing rating.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490273,   1, 0x02000179) /* Setup */
     , (490273,   3, 0x20000014) /* SoundTable */
     , (490273,   6, 0x04000BEF) /* PaletteBase */
     , (490273,   7, 0x1000010B) /* ClothingBase */
     , (490273,   8, 0x06006817) /* Icon */
     , (490273,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490273,  52, 0x06005B0C) /* IconUnderlay */;
