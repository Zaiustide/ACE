DELETE FROM `weenie` WHERE `class_Id` = 30123;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (30123, 'gemrareeternalbludgeonbane', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (30123,   1,       2048) /* ItemType - Gem */
     , (30123,   3,         39) /* PaletteTemplate - Black */
     , (30123,   5,          5) /* EncumbranceVal */
     , (30123,   8,          5) /* Mass */
     , (30123,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (30123,  17,        137) /* RareId */
     , (30123,  18,          1) /* UiEffects - Magical */
     , (30123,  19,          0) /* Value */
     , (30123,  33,         -1) /* Bonded - Slippery */
     , (30123,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (30123,  94,         35215) /* TargetType - Vestements */
     , (30123, 150,        103) /* HookPlacement - Hook */
     , (30123, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (30123,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (30123,   1, 'Rune of Bludgeon Bane') /* Name */
     , (30123,  16, 'Use this gem to add Legendary Bludgeoning Bane. This gem will be destroyed upon use.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (30123,   1, 0x020009A7) /* Setup */
     , (30123,   3, 0x20000014) /* SoundTable */
     , (30123,   6, 0x040001FA) /* PaletteBase */
     , (30123,   7, 0x1000010B) /* ClothingBase */
     , (30123,   8, 0x06005B1E) /* Icon */
     , (30123,  22, 0x3400002B) /* PhysicsEffectTable */
     , (30123,  50, 0x06005B2C) /* IconOverlay */
     , (30123,  52, 0x06005B0C) /* IconUnderlay */;
