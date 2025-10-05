DELETE FROM `weenie` WHERE `class_Id` = 30168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30168, 'gemrareeternalself', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30168,   1,       2048) /* ItemType - Gem */
     , (30168,   3,         39) /* PaletteTemplate - Black */
     , (30168,   5,          5) /* EncumbranceVal */
     , (30168,   8,          5) /* Mass */
     , (30168,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30168,  17,         82) /* RareId */
     , (30168,  18,          1) /* UiEffects - Magical */
     , (30168,  19,          0) /* Value */
     , (30168,  33,         -1) /* Bonded - Slippery */
     , (30168,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30168,  94,         35215) /* TargetType - Vestements */
     , (30168, 150,        103) /* HookPlacement - Hook */
     , (30168, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30168,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30168,   1, 'Pictograph of Willpower') /* Name */
     , (30168,  16, 'Use this gem to add Legendary Willpower. This gem does will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30168,   1, 0x020009A7) /* Setup */
     , (30168,   3, 0x20000014) /* SoundTable */
     , (30168,   6, 0x040001FA) /* PaletteBase */
     , (30168,   7, 0x1000010B) /* ClothingBase */
     , (30168,   8, 0x06005B30) /* Icon */
     , (30168,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30168,  50, 0x06005B5A) /* IconOverlay */
     , (30168,  52, 0x06005B0C) /* IconUnderlay */;
