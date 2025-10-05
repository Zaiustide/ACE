DELETE FROM `weenie` WHERE `class_Id` = 30163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30163, 'gemrareeternalpiercingbane', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30163,   1,       2048) /* ItemType - Gem */
     , (30163,   3,         39) /* PaletteTemplate - Black */
     , (30163,   5,          5) /* EncumbranceVal */
     , (30163,   8,          5) /* Mass */
     , (30163,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30163,  17,        136) /* RareId */
     , (30163,  18,          1) /* UiEffects - Magical */
     , (30163,  19,          0) /* Value */
     , (30163,  33,         -1) /* Bonded - Slippery */
     , (30163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30163,  94,         35215) /* TargetType - Vestements */
     , (30163, 150,        103) /* HookPlacement - Hook */
     , (30163, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30163,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30163,   1, 'Rune of Pierce Bane') /* Name */
     , (30163,  16, 'Use this gem add Legendary Piercing Bane. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30163,   1, 0x020009A7) /* Setup */
     , (30163,   3, 0x20000014) /* SoundTable */
     , (30163,   6, 0x040001FA) /* PaletteBase */
     , (30163,   7, 0x1000010B) /* ClothingBase */
     , (30163,   8, 0x06005B1E) /* Icon */
     , (30163,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30163,  50, 0x06005B55) /* IconOverlay */
     , (30163,  52, 0x06005B0C) /* IconUnderlay */;
