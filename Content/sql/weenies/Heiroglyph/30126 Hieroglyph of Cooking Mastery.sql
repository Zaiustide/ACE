DELETE FROM `weenie` WHERE `class_Id` = 30126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30126, 'gemrareeternalcooking', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30126,   1,       2048) /* ItemType - Gem */
     , (30126,   3,         39) /* PaletteTemplate - Black */
     , (30126,   5,          5) /* EncumbranceVal */
     , (30126,   8,          5) /* Mass */
     , (30126,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30126,  17,         90) /* RareId */
     , (30126,  18,          1) /* UiEffects - Magical */
     , (30126,  19,          0) /* Value */
     , (30126,  33,         -1) /* Bonded - Slippery */
     , (30126,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30126,  94,         35215) /* TargetType - Vestements */
     , (30126, 150,        103) /* HookPlacement - Hook */
     , (30126, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30126,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30126,   1, 'Hieroglyph of Cooking Mastery') /* Name */
     , (30126,  16, 'Use this gem to add Legendary Cooking Mastery. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30126,   1, 0x020009A7) /* Setup */
     , (30126,   3, 0x20000014) /* SoundTable */
     , (30126,   6, 0x040001FA) /* PaletteBase */
     , (30126,   7, 0x1000010B) /* ClothingBase */
     , (30126,   8, 0x06005B22) /* Icon */
     , (30126,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30126,  50, 0x06005B2F) /* IconOverlay */
     , (30126,  52, 0x06005B0C) /* IconUnderlay */;
