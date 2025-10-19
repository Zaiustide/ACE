DELETE FROM `weenie` WHERE `class_Id` = 600032;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600032, 'morphgemcloak', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600032,   1,       2048) /* ItemType - Gem */
     , (600032,   3,         39) /* PaletteTemplate - Black */
     , (600032,   5,          5) /* EncumbranceVal */
     , (600032,   8,          5) /* Mass */
     , (600032,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600032,  18,          1) /* UiEffects - Magical */
     , (600032,  19,         25) /* Value */
     , (600032,  33,          1) /* Bonded - Slippery */
     , (600032,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600032,  94,         35215) /* TargetType - Vestements */
     , (600032, 150,        103) /* HookPlacement - Hook */
     , (600032, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600032,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600032,   1, 'Empyrean Tailoring Scissors') /* Name */
     , (600032,  16, 'An ancient pair of scissors crafted using the finest of materials. Empyrean Tailors were able to alter cloaks to upgrade them to the highest quality. Using these scissors on a cloak will upgrade it level 5.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600032,   1, 0x020009A7) /* Setup */
     , (600032,   3, 0x20000014) /* SoundTable */
     , (600032,   6, 0x040001FA) /* PaletteBase */
     , (600032,   7, 0x1000010B) /* ClothingBase */
     , (600032,   8, 0x06006BCB) /* Icon */
     , (600032,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600032,  52, 0x06006E89) /* IconUnderlay */;
