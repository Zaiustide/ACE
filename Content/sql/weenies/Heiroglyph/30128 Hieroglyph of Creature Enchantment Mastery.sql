DELETE FROM `weenie` WHERE `class_Id` = 30128;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30128, 'gemrareeternalcreatureenchantment', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30128,   1,       2048) /* ItemType - Gem */
     , (30128,   3,         39) /* PaletteTemplate - Black */
     , (30128,   5,          5) /* EncumbranceVal */
     , (30128,   8,          5) /* Mass */
     , (30128,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30128,  17,         91) /* RareId */
     , (30128,  18,          1) /* UiEffects - Magical */
     , (30128,  19,          0) /* Value */
     , (30128,  33,         -1) /* Bonded - Slippery */
     , (30128,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30128,  94,         35215) /* TargetType - Vestements */
     , (30128, 150,        103) /* HookPlacement - Hook */
     , (30128, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30128,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30128,   1, 'Hieroglyph of Creature Enchantment Mastery') /* Name */
     , (30128,  16, 'Use this gem to add Legendary Creature Enchantment Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30128,   1, 0x020009A7) /* Setup */
     , (30128,   3, 0x20000014) /* SoundTable */
     , (30128,   6, 0x040001FA) /* PaletteBase */
     , (30128,   7, 0x1000010B) /* ClothingBase */
     , (30128,   8, 0x06005B22) /* Icon */
     , (30128,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30128,  50, 0x06005B32) /* IconOverlay */
     , (30128,  52, 0x06005B0C) /* IconUnderlay */;
