DELETE FROM `weenie` WHERE `class_Id` = 30171;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30171, 'gemrareeternalspiritdrinker', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30171,   1,       2048) /* ItemType - Gem */
     , (30171,   3,         39) /* PaletteTemplate - Black */
     , (30171,   5,          5) /* EncumbranceVal */
     , (30171,   8,          5) /* Mass */
     , (30171,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30171,  17,        133) /* RareId */
     , (30171,  18,          1) /* UiEffects - Magical */
     , (30171,  19,          0) /* Value */
     , (30171,  33,         -1) /* Bonded - Slippery */
     , (30171,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30171,  94,         32768) /* TargetType - Caster */
     , (30171, 150,        103) /* HookPlacement - Hook */
     , (30171, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30171,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30171,   1, 'Rune of Spirit Drinker') /* Name */
     , (30171,  16, 'Use this gem to add Legendary Spirit Thirst. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30171,   1, 0x020009A7) /* Setup */
     , (30171,   3, 0x20000014) /* SoundTable */
     , (30171,   6, 0x040001FA) /* PaletteBase */
     , (30171,   7, 0x1000010B) /* ClothingBase */
     , (30171,   8, 0x06005B1E) /* Icon */
     , (30171,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30171,  50, 0x06005B5D) /* IconOverlay */
     , (30171,  52, 0x06005B0C) /* IconUnderlay */;
