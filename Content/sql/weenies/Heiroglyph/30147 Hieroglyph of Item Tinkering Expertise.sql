DELETE FROM `weenie` WHERE `class_Id` = 30147;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30147, 'gemrareeternalitemtinkering', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30147,   1,       2048) /* ItemType - Gem */
     , (30147,   3,         39) /* PaletteTemplate - Black */
     , (30147,   5,          5) /* EncumbranceVal */
     , (30147,   8,          5) /* Mass */
     , (30147,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30147,  17,         98) /* RareId */
     , (30147,  18,          1) /* UiEffects - Magical */
     , (30147,  19,          0) /* Value */
     , (30147,  33,         -1) /* Bonded - Slippery */
     , (30147,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30147,  94,         35215) /* TargetType - Vestements */
     , (30147, 150,        103) /* HookPlacement - Hook */
     , (30147, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30147,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30147,   1, 'Hieroglyph of Item Tinkering Expertise') /* Name */
     , (30147,  16, 'Use this gem add Legendary Item Tinkering Expertise. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30147,   1, 0x020009A7) /* Setup */
     , (30147,   3, 0x20000014) /* SoundTable */
     , (30147,   6, 0x040001FA) /* PaletteBase */
     , (30147,   7, 0x1000010B) /* ClothingBase */
     , (30147,   8, 0x06005B22) /* Icon */
     , (30147,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30147,  50, 0x06005B45) /* IconOverlay */
     , (30147,  52, 0x06005B0C) /* IconUnderlay */;
