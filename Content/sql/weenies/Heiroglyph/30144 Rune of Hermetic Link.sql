DELETE FROM `weenie` WHERE `class_Id` = 30144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30144, 'gemrareeternalhermeticlink', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30144,   1,       2048) /* ItemType - Gem */
     , (30144,   3,         39) /* PaletteTemplate - Black */
     , (30144,   5,          5) /* EncumbranceVal */
     , (30144,   8,          5) /* Mass */
     , (30144,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30144,  17,        134) /* RareId */
     , (30144,  18,          1) /* UiEffects - Magical */
     , (30144,  19,          0) /* Value */
     , (30144,  33,         -1) /* Bonded - Slippery */
     , (30144,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30144,  94,         32768) /* TargetType - Caster */
     , (30144, 150,        103) /* HookPlacement - Hook */
     , (30144, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30144,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30144,   1, 'Rune of Hermetic Link') /* Name */
     , (30144,  16, 'Use this gem to add Legendary Hermetic Link. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30144,   1, 0x020009A7) /* Setup */
     , (30144,   3, 0x20000014) /* SoundTable */
     , (30144,   6, 0x040001FA) /* PaletteBase */
     , (30144,   7, 0x1000010B) /* ClothingBase */
     , (30144,   8, 0x06005B1E) /* Icon */
     , (30144,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30144,  50, 0x06005B42) /* IconOverlay */
     , (30144,  52, 0x06005B0C) /* IconUnderlay */;
