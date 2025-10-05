DELETE FROM `weenie` WHERE `class_Id` = 70001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (70001, 'ace70001-hieroglyphofvoidmagicmastery', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (70001,   1,       2048) /* ItemType - Gem */
     , (70001,   3,         39) /* PaletteTemplate - Black */
     , (70001,   5,          5) /* EncumbranceVal */
     , (70001,   8,          5) /* Mass */
     , (70001,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (70001,  17,         83) /* RareId */
     , (70001,  18,          1) /* UiEffects - Magical */
     , (70001,  19,          0) /* Value */
     , (70001,  33,         -1) /* Bonded - Slippery */
     , (70001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (70001,  94,         35215) /* TargetType - Vestements */
     , (70001, 150,        103) /* HookPlacement - Hook */
     , (70001, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (70001,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (70001,   1, 'Hieroglyph of Void Magic Mastery') /* Name */
     , (70001,  16, 'Use this gem to add Legendary Void Magic Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (70001,   1, 0x020009A7) /* Setup */
     , (70001,   3, 0x20000014) /* SoundTable */
     , (70001,   6, 0x040001FA) /* PaletteBase */
     , (70001,   7, 0x1000010B) /* ClothingBase */
     , (70001,   8, 0x06005B22) /* Icon */
     , (70001,  22, 0x3400002B) /* PhysicsEffectTable */
     , (70001,  50, 0x06006E6F) /* IconOverlay */
     , (70001,  52, 0x06005B0C) /* IconUnderlay */;
