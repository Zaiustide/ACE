DELETE FROM `weenie` WHERE `class_Id` = 30159;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30159, 'gemrareeternalmanaconversion', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30159,   1,       2048) /* ItemType - Gem */
     , (30159,   3,         39) /* PaletteTemplate - Black */
     , (30159,   5,          5) /* EncumbranceVal */
     , (30159,   8,          5) /* Mass */
     , (30159,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30159,  17,        107) /* RareId */
     , (30159,  18,          1) /* UiEffects - Magical */
     , (30159,  19,          0) /* Value */
     , (30159,  33,         -1) /* Bonded - Slippery */
     , (30159,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30159,  94,         35215) /* TargetType - Vestements */
     , (30159, 150,        103) /* HookPlacement - Hook */
     , (30159, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30159,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30159,   1, 'Hieroglyph of Mana Conversion Mastery') /* Name */
     , (30159,  16, 'Use this gem to add Legendary Mana Conversion Prowess. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30159,   1, 0x020009A7) /* Setup */
     , (30159,   3, 0x20000014) /* SoundTable */
     , (30159,   6, 0x040001FA) /* PaletteBase */
     , (30159,   7, 0x1000010B) /* ClothingBase */
     , (30159,   8, 0x06005B22) /* Icon */
     , (30159,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30159,  50, 0x06005B51) /* IconOverlay */
     , (30159,  52, 0x06005B0C) /* IconUnderlay */;
