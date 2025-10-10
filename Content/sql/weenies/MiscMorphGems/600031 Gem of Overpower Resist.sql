DELETE FROM `weenie` WHERE `class_Id` = 600031;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600031, 'gemgemofoverpowerresist', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600031,   1,       2048) /* ItemType - Gem */
     , (600031,   3,         39) /* PaletteTemplate - Black */
     , (600031,   5,          5) /* EncumbranceVal */
     , (600031,   8,          5) /* Mass */
     , (600031,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600031,  18,          1) /* UiEffects - Magical */
     , (600031,  19,         25) /* Value */
     , (600031,  33,          1) /* Bonded - Slippery */
     , (600031,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600031,  94,         35215) /* TargetType - Vestements */
     , (600031, 150,        103) /* HookPlacement - Hook */
     , (600031, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600031,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600031,   1, 'Gem of Overpower Resist') /* Name */
     , (600031,  16, 'Use this gem to add Overpower Resist rating to your weapon. This will help you defend against Overpower attacks.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600031,   1, 0x020009A7) /* Setup */
     , (600031,   3, 0x20000014) /* SoundTable */
     , (600031,   6, 0x040001FA) /* PaletteBase */
     , (600031,   7, 0x1000010B) /* ClothingBase */
     , (600031,   8, 0x06007109) /* Icon */
     , (600031,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600031,  52, 0x06006E89) /* IconUnderlay */;
