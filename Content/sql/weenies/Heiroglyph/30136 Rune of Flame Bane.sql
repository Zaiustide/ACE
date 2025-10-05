DELETE FROM `weenie` WHERE `class_Id` = 30136;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30136, 'gemrareeternalflamebane', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30136,   1,       2048) /* ItemType - Gem */
     , (30136,   3,         39) /* PaletteTemplate - Black */
     , (30136,   5,          5) /* EncumbranceVal */
     , (30136,   8,          5) /* Mass */
     , (30136,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30136,  17,        139) /* RareId */
     , (30136,  18,          1) /* UiEffects - Magical */
     , (30136,  19,          0) /* Value */
     , (30136,  33,         -1) /* Bonded - Slippery */
     , (30136,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30136,  94,         35215) /* TargetType - Vestements */
     , (30136, 150,        103) /* HookPlacement - Hook */
     , (30136, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30136,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30136,   1, 'Rune of Flame Bane') /* Name */
     , (30136,  16, 'Use this gem to add Legendary Flame Bane. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30136,   1, 0x020009A7) /* Setup */
     , (30136,   3, 0x20000014) /* SoundTable */
     , (30136,   6, 0x040001FA) /* PaletteBase */
     , (30136,   7, 0x1000010B) /* ClothingBase */
     , (30136,   8, 0x06005B1E) /* Icon */
     , (30136,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30136,  50, 0x06005B3A) /* IconOverlay */
     , (30136,  52, 0x06005B0C) /* IconUnderlay */;
