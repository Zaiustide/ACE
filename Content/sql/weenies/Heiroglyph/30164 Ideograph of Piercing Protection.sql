DELETE FROM `weenie` WHERE `class_Id` = 30164;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30164, 'gemrareeternalpiercingprotection', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30164,   1,       2048) /* ItemType - Gem */
     , (30164,   3,         39) /* PaletteTemplate - Black */
     , (30164,   5,          5) /* EncumbranceVal */
     , (30164,   8,          5) /* Mass */
     , (30164,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30164,  17,        122) /* RareId */
     , (30164,  18,          1) /* UiEffects - Magical */
     , (30164,  19,          0) /* Value */
     , (30164,  33,         -1) /* Bonded - Slippery */
     , (30164,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30164,  94,         35215) /* TargetType - Vestements */
     , (30164, 150,        103) /* HookPlacement - Hook */
     , (30164, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30164,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30164,   1, 'Ideograph of Piercing Protection') /* Name */
     , (30164,  16, 'Use this gem add Legendary Piercing Ward. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30164,   1, 0x020009A7) /* Setup */
     , (30164,   3, 0x20000014) /* SoundTable */
     , (30164,   6, 0x040001FA) /* PaletteBase */
     , (30164,   7, 0x1000010B) /* ClothingBase */
     , (30164,   8, 0x06005B20) /* Icon */
     , (30164,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30164,  50, 0x06005B56) /* IconOverlay */
     , (30164,  52, 0x06005B0C) /* IconUnderlay */;
