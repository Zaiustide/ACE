DELETE FROM `weenie` WHERE `class_Id` = 600030;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600030, 'gemgemofoverpower', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600030,   1,       2048) /* ItemType - Gem */
     , (600030,   3,         39) /* PaletteTemplate - Black */
     , (600030,   5,          5) /* EncumbranceVal */
     , (600030,   8,          5) /* Mass */
     , (600030,  16,          524296) /* ItemUseable - SourceContainedTargetContained */
     , (600030,  17,        129) /* RareId */
     , (600030,  18,          1) /* UiEffects - Magical */
     , (600030,  19,          0) /* Value */
     , (600030,  33,         -1) /* Bonded - Slippery */
     , (600030,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (600030,  94,         257) /* TargetType - Weapon */
     , (600030, 150,        103) /* HookPlacement - Hook */
     , (600030, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600030,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600030,   1, 'Gem of Overpower') /* Name */
     , (600030,  16, 'Use this gem to add Overpower rating to your weapon. Overpower attacks can overwhelm the enemies defenses.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600030,   1, 0x020009A7) /* Setup */
     , (600030,   3, 0x20000014) /* SoundTable */
     , (600030,   6, 0x040001FA) /* PaletteBase */
     , (600030,   7, 0x1000010B) /* ClothingBase */
     , (600030,   8, 0x06007108) /* Icon */
     , (600030,  22, 0x3400002B) /* PhysicsEffectTable */
     , (600030,  52, 0x06006E89) /* IconUnderlay */;
