DELETE FROM `weenie` WHERE `class_Id` = 30180;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30180, 'gemrareeternalweapontinkering', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30180,   1,       2048) /* ItemType - Gem */
     , (30180,   3,         39) /* PaletteTemplate - Black */
     , (30180,   5,          5) /* EncumbranceVal */
     , (30180,   8,          5) /* Mass */
     , (30180,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30180,  17,        117) /* RareId */
     , (30180,  18,          1) /* UiEffects - Magical */
     , (30180,  19,          0) /* Value */
     , (30180,  33,         -1) /* Bonded - Slippery */
     , (30180,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30180,  94,         35215) /* TargetType - Vestements */
     , (30180, 150,        103) /* HookPlacement - Hook */
     , (30180, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30180,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30180,   1, 'Hieroglyph of Weapon Tinkering Expertise') /* Name */
     , (30180,  16, 'Use this gem to add Legendary Weapon Tinkering Expertise. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30180,   1, 0x020009A7) /* Setup */
     , (30180,   3, 0x20000014) /* SoundTable */
     , (30180,   6, 0x040001FA) /* PaletteBase */
     , (30180,   7, 0x1000010B) /* ClothingBase */
     , (30180,   8, 0x06005B22) /* Icon */
     , (30180,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30180,  50, 0x06005B66) /* IconOverlay */
     , (30180,  52, 0x06005B0C) /* IconUnderlay */;
