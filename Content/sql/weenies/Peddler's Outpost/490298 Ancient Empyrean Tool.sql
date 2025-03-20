DELETE FROM `weenie` WHERE `class_Id` = 490298;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490298, 'ace490298-Ancient Empyrean Tool', 38, '2022-07-22 16:06:17') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490298,   1,       2048) /* ItemType - Gem */
     , (490298,   5,          5) /* EncumbranceVal */
     , (490298,  16,          8) /* ItemUseable - Contained */
     , (490298,  18,          1) /* UiEffects - Magical */
     , (490298,  19,          0) /* Value */
     , (490298,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490298,  94,         16) /* TargetType - Creature */
     , (490298, 106,        325) /* ItemSpellcraft */
     , (490298, 107,      10000) /* ItemCurMana */
     , (490298, 108,      10000) /* ItemMaxMana */
     , (490298, 109,          0) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490298,   1, False) /* Stuck */
     , (490298,  11, True ) /* IgnoreCollisions */
     , (490298,  13, True ) /* Ethereal */
     , (490298,  14, True ) /* GravityStatus */
     , (490298,  19, True ) /* Attackable */
     , (490298,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490298,   1, 'Ancient Empyrean Tool') /* Name */
     , (490298,  16, 'An Ancient Empyrean Tool that appears to have been used to enhance the ability of the Empyrean to alter there items through tinkering. The magic within this tool grants the user guarantees that the next tinker will not fail.  The tool appears delecate and will break after use. Must be used by someone with sufficient knowledge of tinkering.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490298,   1, 0x02000179) /* Setup */
     , (490298,   3, 0x20000014) /* SoundTable */
     , (490298,   6, 0x04000BEF) /* PaletteBase */
     , (490298,   8, 0x06003120) /* Icon */
     , (490298,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490298,  27, 0x13000093) /* UseUserAnimation - MimeEat */
     , (490298,  52, 0x06005B0C) /* IconUnderlay */;
