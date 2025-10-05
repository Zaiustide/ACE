DELETE FROM `weenie` WHERE `class_Id` = 30138;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30138, 'gemrareeternalfocus', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30138,   1,       2048) /* ItemType - Gem */
     , (30138,   3,         39) /* PaletteTemplate - Black */
     , (30138,   5,          5) /* EncumbranceVal */
     , (30138,   8,          5) /* Mass */
     , (30138,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30138,  17,         81) /* RareId */
     , (30138,  18,          1) /* UiEffects - Magical */
     , (30138,  19,          0) /* Value */
     , (30138,  33,         -1) /* Bonded - Slippery */
     , (30138,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30138,  94,         35215) /* TargetType - Vestements */
     , (30138, 150,        103) /* HookPlacement - Hook */
     , (30138, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30138,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30138,   1, 'Pictograph of Focus') /* Name */
     , (30138,  16, 'Use this gem to add Legendary Focus. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30138,   1, 0x020009A7) /* Setup */
     , (30138,   3, 0x20000014) /* SoundTable */
     , (30138,   6, 0x040001FA) /* PaletteBase */
     , (30138,   7, 0x1000010B) /* ClothingBase */
     , (30138,   8, 0x06005B30) /* Icon */
     , (30138,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30138,  50, 0x06005B3C) /* IconOverlay */
     , (30138,  52, 0x06005B0C) /* IconUnderlay */;
