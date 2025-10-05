DELETE FROM `weenie` WHERE `class_Id` = 45361;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45361, 'ace45361-hieroglyphofdirtyfightingmastery', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45361,   1,       2048) /* ItemType - Gem */
     , (45361,   3,         39) /* PaletteTemplate - Black */
     , (45361,   5,          5) /* EncumbranceVal */
     , (45361,   8,          5) /* Mass */
     , (45361,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (45361,  17,         83) /* RareId */
     , (45361,  18,          1) /* UiEffects - Magical */
     , (45361,  19,          0) /* Value */
     , (45361,  33,         -1) /* Bonded - Slippery */
     , (45361,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45361,  94,         35215) /* TargetType - Vestements */
     , (45361, 150,        103) /* HookPlacement - Hook */
     , (45361, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45361,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45361,   1, 'Hieroglyph of Dirty Fighting Mastery') /* Name */
     , (45361,  16, 'Use this gem add Legendary Dirty Fighting Prowess. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45361,   1, 0x020009A7) /* Setup */
     , (45361,   3, 0x20000014) /* SoundTable */
     , (45361,   6, 0x040001FA) /* PaletteBase */
     , (45361,   7, 0x1000010B) /* ClothingBase */
     , (45361,   8, 0x06005B22) /* Icon */
     , (45361,  22, 0x3400002B) /* PhysicsEffectTable */
     , (45361,  50, 0x06007114) /* IconOverlay */
     , (45361,  52, 0x06005B0C) /* IconUnderlay */;
