DELETE FROM `weenie` WHERE `class_Id` = 30112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30112, 'gemrareeternalacidbane', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30112,   1,       2048) /* ItemType - Gem */
     , (30112,   3,         39) /* PaletteTemplate - Black */
     , (30112,   5,          5) /* EncumbranceVal */
     , (30112,   8,          5) /* Mass */
     , (30112,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30112,  17,        138) /* RareId */
     , (30112,  18,          1) /* UiEffects - Magical */
     , (30112,  19,          0) /* Value */
     , (30112,  33,         -1) /* Bonded - Slippery */
     , (30112,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30112,  94,         35215) /* TargetType - Vestements */
     , (30112, 150,        103) /* HookPlacement - Hook */
     , (30112, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30112,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30112,   1, 'Rune of Acid Bane') /* Name */
     , (30112,  16, 'Use this gem to apply the spell Legendary Acid Bane. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30112,   1, 0x020009A7) /* Setup */
     , (30112,   3, 0x20000014) /* SoundTable */
     , (30112,   6, 0x040001FA) /* PaletteBase */
     , (30112,   7, 0x1000010B) /* ClothingBase */
     , (30112,   8, 0x06005B1E) /* Icon */
     , (30112,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30112,  50, 0x06005B1F) /* IconOverlay */
     , (30112,  52, 0x06005B0C) /* IconUnderlay */;
