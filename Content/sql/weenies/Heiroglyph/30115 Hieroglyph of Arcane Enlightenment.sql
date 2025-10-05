DELETE FROM `weenie` WHERE `class_Id` = 30115;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30115, 'gemrareeternalarcanelore', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30115,   1,       2048) /* ItemType - Gem */
     , (30115,   3,         39) /* PaletteTemplate - Black */
     , (30115,   5,          5) /* EncumbranceVal */
     , (30115,   8,          5) /* Mass */
     , (30115,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30115,  17,         84) /* RareId */
     , (30115,  18,          1) /* UiEffects - Magical */
     , (30115,  19,          0) /* Value */
     , (30115,  33,         -1) /* Bonded - Slippery */
     , (30115,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30115,  94,         35215) /* TargetType - Vestements */
     , (30115, 150,        103) /* HookPlacement - Hook */
     , (30115, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30115,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30115,   1, 'Hieroglyph of Arcane Enlightenment') /* Name */
     , (30115,  16, 'Use this gem to add Legendary Arcane Prowess. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30115,   1, 0x020009A7) /* Setup */
     , (30115,   3, 0x20000014) /* SoundTable */
     , (30115,   6, 0x040001FA) /* PaletteBase */
     , (30115,   7, 0x1000010B) /* ClothingBase */
     , (30115,   8, 0x06005B30) /* Icon */
     , (30115,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30115,  50, 0x06005B24) /* IconOverlay */
     , (30115,  52, 0x06005B0C) /* IconUnderlay */;
