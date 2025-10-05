DELETE FROM `weenie` WHERE `class_Id` = 30146;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30146, 'gemrareeternalitemenchantment', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30146,   1,       2048) /* ItemType - Gem */
     , (30146,   3,         39) /* PaletteTemplate - Black */
     , (30146,   5,          5) /* EncumbranceVal */
     , (30146,   8,          5) /* Mass */
     , (30146,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30146,  17,         97) /* RareId */
     , (30146,  18,          1) /* UiEffects - Magical */
     , (30146,  19,          0) /* Value */
     , (30146,  33,         -1) /* Bonded - Slippery */
     , (30146,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30146,  94,         16) /* TargetType - Creature */
     , (30146, 150,        103) /* HookPlacement - Hook */
     , (30146, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30146,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30146,   1, 'Hieroglyph of Item Enchantment Mastery') /* Name */
     , (30146,  16, 'Use this gem add Legendary Item Enchantment Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30146,   1, 0x020009A7) /* Setup */
     , (30146,   3, 0x20000014) /* SoundTable */
     , (30146,   6, 0x040001FA) /* PaletteBase */
     , (30146,   7, 0x1000010B) /* ClothingBase */
     , (30146,   8, 0x06005B22) /* Icon */
     , (30146,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30146,  50, 0x06005B44) /* IconOverlay */
     , (30146,  52, 0x06005B0C) /* IconUnderlay */;
