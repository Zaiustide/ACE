DELETE FROM `weenie` WHERE `class_Id` = 600033;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600033, 'morphgemdamagerating', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600033,   1,       2048) /* ItemType - Gem */
     , (600033,   3,         39) /* PaletteTemplate - Black */
     , (600033,   5,          5) /* EncumbranceVal */
     , (600033,   8,          5) /* Mass */
     , (600033,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600033,  18,          64) /* UiEffects - Lightning */
     , (600033,  19,         25) /* Value */
     , (600033,  33,          1) /* Bonded */
     , (600033,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600033,  94,         35215) /* TargetType - Vestements */
     , (600033, 150,        103) /* HookPlacement - Hook */
     , (600033, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600033,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600033,   1, 'Gem of Damage Enhancement') /* Name */
     , (600033,  16, 'An odd looking gem that seems to give off a powerful aura. This gem can be applied to weapons, casters, shields and clothing to add additional Damage Rating. If there is damage reduction rating on the item, this will be removed. Gems can be applied more then once for a chance to reroll the rating currently on the item.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600033,   1, 0x020009A7) /* Setup */
     , (600033,   3, 0x20000014) /* SoundTable */
     , (600033,   6, 0x040001FA) /* PaletteBase */
     , (600033,   7, 0x1000010B) /* ClothingBase */
     , (600033,   8, 0x060069FC) /* Icon */
     , (600033,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600033,  52, 0x06006E89) /* IconUnderlay */;
