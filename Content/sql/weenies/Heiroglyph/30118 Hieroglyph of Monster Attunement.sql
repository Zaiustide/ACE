DELETE FROM `weenie` WHERE `class_Id` = 30118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30118, 'gemrareeternalassesscreature', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30118,   1,       2048) /* ItemType - Gem */
     , (30118,   3,         39) /* PaletteTemplate - Black */
     , (30118,   5,          5) /* EncumbranceVal */
     , (30118,   8,          5) /* Mass */
     , (30118,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30118,  17,         86) /* RareId */
     , (30118,  18,          1) /* UiEffects - Magical */
     , (30118,  19,          0) /* Value */
     , (30118,  33,         -1) /* Bonded - Slippery */
     , (30118,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30118,  94,         35215) /* TargetType - Vestements */
     , (30118, 150,        103) /* HookPlacement - Hook */
     , (30118, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30118,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30118,   1, 'Hieroglyph of Monster Attunement') /* Name */
     , (30118,  16, 'Use this gem to add Legendary Assess Creature. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30118,   1, 0x020009A7) /* Setup */
     , (30118,   3, 0x20000014) /* SoundTable */
     , (30118,   6, 0x040001FA) /* PaletteBase */
     , (30118,   7, 0x1000010B) /* ClothingBase */
     , (30118,   8, 0x06005B30) /* Icon */
     , (30118,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30118,  50, 0x06005B27) /* IconOverlay */
     , (30118,  52, 0x06005B0C) /* IconUnderlay */;
