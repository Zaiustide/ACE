DELETE FROM `weenie` WHERE `class_Id` = 30176;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30176, 'gemrareeternalsword', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30176,   1,       2048) /* ItemType - Gem */
     , (30176,   3,         39) /* PaletteTemplate - Black */
     , (30176,   5,          5) /* EncumbranceVal */
     , (30176,   8,          5) /* Mass */
     , (30176,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30176,  17,        113) /* RareId */
     , (30176,  18,          1) /* UiEffects - Magical */
     , (30176,  19,          0) /* Value */
     , (30176,  33,         -1) /* Bonded - Slippery */
     , (30176,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30176,  94,         35215) /* TargetType - Vestements */
     , (30176, 150,        103) /* HookPlacement - Hook */
     , (30176, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30176,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30176,   1, 'Hieroglyph of Heavy Weapon Mastery') /* Name */
     , (30176,  16, 'Use this gem to add Legendary Heavy Weapon Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30176,   1, 0x020009A7) /* Setup */
     , (30176,   3, 0x20000014) /* SoundTable */
     , (30176,   6, 0x040001FA) /* PaletteBase */
     , (30176,   7, 0x1000010B) /* ClothingBase */
     , (30176,   8, 0x06005B22) /* Icon */
     , (30176,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30176,  50, 0x06005B29) /* IconOverlay */
     , (30176,  52, 0x06005B0C) /* IconUnderlay */;
