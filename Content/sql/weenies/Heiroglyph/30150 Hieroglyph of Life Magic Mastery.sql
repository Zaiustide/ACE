DELETE FROM `weenie` WHERE `class_Id` = 30150;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30150, 'gemrareeternallifemagic', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30150,   1,       2048) /* ItemType - Gem */
     , (30150,   3,         39) /* PaletteTemplate - Black */
     , (30150,   5,          5) /* EncumbranceVal */
     , (30150,   8,          5) /* Mass */
     , (30150,  16,          524296) /* ItemUseable - SourceContainedTargetContained *//
     , (30150,  17,        101) /* RareId */
     , (30150,  18,          1) /* UiEffects - Magical */
     , (30150,  19,          0) /* Value */
     , (30150,  33,         -1) /* Bonded - Slippery */
     , (30150,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30150,  94,         35215) /* TargetType - Vestements */
     , (30150, 150,        103) /* HookPlacement - Hook */
     , (30150, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30150,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30150,   1, 'Hieroglyph of Life Magic Mastery') /* Name */
     , (30150,  16, 'Use this gem add Legendary Life Magic Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30150,   1, 0x020009A7) /* Setup */
     , (30150,   3, 0x20000014) /* SoundTable */
     , (30150,   6, 0x040001FA) /* PaletteBase */
     , (30150,   7, 0x1000010B) /* ClothingBase */
     , (30150,   8, 0x06005B22) /* Icon */
     , (30150,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30150,  50, 0x06005B48) /* IconOverlay */
     , (30150,  52, 0x06005B0C) /* IconUnderlay */;
