DELETE FROM `weenie` WHERE `class_Id` = 1548800;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1548800, 'ace1548800-gemofthegodsmorphgem', 38, '2022-01-29 01:15:03') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1548800,   1,       2048) /* ItemType - Gem */
     , (1548800,   5,         10) /* EncumbranceVal */
     , (1548800,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (1548800,  18,          1) /* UiEffects - Magical */
     , (1548800,  19,         25) /* Value */
     , (1548800,  65,        101) /* Placement - Resting */
     , (1548800,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (1548800,  94,          8) /* TargetType - Jewelry */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1548800,   1, False) /* Stuck */
     , (1548800,  11, True ) /* IgnoreCollisions */
     , (1548800,  13, True ) /* Ethereal */
     , (1548800,  14, True ) /* GravityStatus */
     , (1548800,  19, True ) /* Attackable */
     , (1548800,  22, True ) /* Inscribable */
     , (1548800,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1548800,   1, 'Gem of the Gods') /* Name */
     , (1548800,  14, 'Applying this gem to loot type jewelry has a chance to apply one to three spells that can be found on Gauntlet Jewelry, Rare Armor and Rare Weapons. Can only be applied once per piece of jewelry.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1548800,   1, 0x02000179) /* Setup */
     , (1548800,   3, 0x20000014) /* SoundTable */
     , (1548800,   6, 0x04000BEF) /* PaletteBase */
     , (1548800,   7, 0x1000010B) /* ClothingBase */
     , (1548800,  22, 0x3400002B) /* PhysicsEffectTable */
     , (1548800,  8, 0x06006816) /* Icon */
     , (1548800,  52, 0x06005B0C) /* IconUnderlay */;