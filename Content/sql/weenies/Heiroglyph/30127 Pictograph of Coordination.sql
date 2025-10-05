DELETE FROM `weenie` WHERE `class_Id` = 30127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30127, 'gemrareeternalcoordination', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30127,   1,       2048) /* ItemType - Gem */
     , (30127,   3,         39) /* PaletteTemplate - Black */
     , (30127,   5,          5) /* EncumbranceVal */
     , (30127,   8,          5) /* Mass */
     , (30127,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30127,  17,         79) /* RareId */
     , (30127,  18,          1) /* UiEffects - Magical */
     , (30127,  19,          0) /* Value */
     , (30127,  33,         -1) /* Bonded - Slippery */
     , (30127,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30127,  94,         35215) /* TargetType - Vestements */
     , (30127, 150,        103) /* HookPlacement - Hook */
     , (30127, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30127,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30127,   1, 'Pictograph of Coordination') /* Name */
     , (30127,  16, 'Use this gem to add Legendary Coordination. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30127,   1, 0x020009A7) /* Setup */
     , (30127,   3, 0x20000014) /* SoundTable */
     , (30127,   6, 0x040001FA) /* PaletteBase */
     , (30127,   7, 0x1000010B) /* ClothingBase */
     , (30127,   8, 0x06005B30) /* Icon */
     , (30127,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30127,  50, 0x06005B31) /* IconOverlay */
     , (30127,  52, 0x06005B0C) /* IconUnderlay */;
