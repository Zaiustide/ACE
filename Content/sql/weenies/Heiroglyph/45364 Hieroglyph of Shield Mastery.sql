DELETE FROM `weenie` WHERE `class_Id` = 45364;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45364, 'ace45364-hieroglyphofshieldmastery', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45364,   1,       2048) /* ItemType - Gem */
     , (45364,   3,         39) /* PaletteTemplate - Black */
     , (45364,   5,          5) /* EncumbranceVal */
     , (45364,   8,          5) /* Mass */
     , (45364,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (45364,  17,         83) /* RareId */
     , (45364,  18,          1) /* UiEffects - Magical */
     , (45364,  19,          0) /* Value */
     , (45364,  33,         -1) /* Bonded - Slippery */
     , (45364,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45364,  94,         35215) /* TargetType - Vestements */
     , (45364, 150,        103) /* HookPlacement - Hook */
     , (45364, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45364,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45364,   1, 'Hieroglyph of Shield Mastery') /* Name */
     , (45364,  16, 'Use this gem to add Legendary Shield Aptitude. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45364,   1, 0x020009A7) /* Setup */
     , (45364,   3, 0x20000014) /* SoundTable */
     , (45364,   6, 0x040001FA) /* PaletteBase */
     , (45364,   7, 0x1000010B) /* ClothingBase */
     , (45364,   8, 0x06005B22) /* Icon */
     , (45364,  22, 0x3400002B) /* PhysicsEffectTable */
     , (45364,  50, 0x06007116) /* IconOverlay */
     , (45364,  52, 0x06005B0C) /* IconUnderlay */;
