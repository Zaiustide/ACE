DELETE FROM `weenie` WHERE `class_Id` = 30149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30149, 'gemrareeternalleadership', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30149,   1,       2048) /* ItemType - Gem */
     , (30149,   3,         39) /* PaletteTemplate - Black */
     , (30149,   5,          5) /* EncumbranceVal */
     , (30149,   8,          5) /* Mass */
     , (30149,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30149,  17,        100) /* RareId */
     , (30149,  18,          1) /* UiEffects - Magical */
     , (30149,  19,          0) /* Value */
     , (30149,  33,         -1) /* Bonded - Slippery */
     , (30149,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30149,  94,         35215) /* TargetType - Vestements */
     , (30149, 150,        103) /* HookPlacement - Hook */
     , (30149, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30149,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30149,   1, 'Hieroglyph of Leadership Mastery') /* Name */
     , (30149,  16, 'Use this gem add Legendary Leadership. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30149,   1, 0x020009A7) /* Setup */
     , (30149,   3, 0x20000014) /* SoundTable */
     , (30149,   6, 0x040001FA) /* PaletteBase */
     , (30149,   7, 0x1000010B) /* ClothingBase */
     , (30149,   8, 0x06005B22) /* Icon */
     , (30149,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30149,  50, 0x06005B47) /* IconOverlay */
     , (30149,  52, 0x06005B0C) /* IconUnderlay */;
