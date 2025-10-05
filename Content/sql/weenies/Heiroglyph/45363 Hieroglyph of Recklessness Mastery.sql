DELETE FROM `weenie` WHERE `class_Id` = 45363;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (45363, 'ace45363-hieroglyphofrecklessnessmastery', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (45363,   1,       2048) /* ItemType - Gem */
     , (45363,   3,         39) /* PaletteTemplate - Black */
     , (45363,   5,          5) /* EncumbranceVal */
     , (45363,   8,          5) /* Mass */
     , (45363,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (45363,  17,         83) /* RareId */
     , (45363,  18,          1) /* UiEffects - Magical */
     , (45363,  19,          0) /* Value */
     , (45363,  33,         -1) /* Bonded - Slippery */
     , (45363,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (45363,  94,         35215) /* TargetType - Vestements */
     , (45363, 150,        103) /* HookPlacement - Hook */
     , (45363, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (45363,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (45363,   1, 'Hieroglyph of Recklessness Mastery') /* Name */
     , (45363,  16, 'Use this gem to add Legendary Recklessness Prowess. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (45363,   1, 0x020009A7) /* Setup */
     , (45363,   3, 0x20000014) /* SoundTable */
     , (45363,   6, 0x040001FA) /* PaletteBase */
     , (45363,   7, 0x1000010B) /* ClothingBase */
     , (45363,   8, 0x06005B22) /* Icon */
     , (45363,  22, 0x3400002B) /* PhysicsEffectTable */
     , (45363,  50, 0x06005B29) /* IconOverlay */
     , (45363,  52, 0x06005B0C) /* IconUnderlay */;
