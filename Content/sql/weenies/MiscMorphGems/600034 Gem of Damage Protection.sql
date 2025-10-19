DELETE FROM `weenie` WHERE `class_Id` = 600034;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600034, 'morphgemdamagereduction', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600034,   1,       2048) /* ItemType - Gem */
     , (600034,   3,         39) /* PaletteTemplate - Black */
     , (600034,   5,          5) /* EncumbranceVal */
     , (600034,   8,          5) /* Mass */
     , (600034,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600034,  18,          1) /* UiEffects - Lightning */
     , (600034,  19,         25) /* Value */
     , (600034,  33,          1) /* Bonded */
     , (600034,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600034,  94,         35215) /* TargetType - Vestements */
     , (600034, 150,        103) /* HookPlacement - Hook */
     , (600034, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600034,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600034,   1, 'Gem of Damage Protection') /* Name */
     , (600034,  16, 'An odd looking gem that seems to give off a powerful aura. This gem can be applied to clothing and cloaks to add Damage Reduction Rating. If there is damage rating on the item already, this will be removed. Gems can be applied more then once for a chance to reroll the rating currently on the item.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600034,   1, 0x020009A7) /* Setup */
     , (600034,   3, 0x20000014) /* SoundTable */
     , (600034,   6, 0x040001FA) /* PaletteBase */
     , (600034,   7, 0x1000010B) /* ClothingBase */
     , (600034,   8, 0x060069FF) /* Icon */
     , (600034,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600034,  52, 0x06006E89) /* IconUnderlay */;
