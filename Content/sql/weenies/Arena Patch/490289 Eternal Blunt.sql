DELETE FROM `weenie` WHERE `class_Id` = 490289;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490289, 'eternalblunt', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490289,   1,        128) /* ItemType - Misc */
     , (490289,   5,         75) /* EncumbranceVal */
     , (490289,   8,         75) /* Mass */
     , (490289,  16,          8) /* ItemUseable - Contained */
     , (490289,  18,        256) /* UiEffects - Acid */
     , (490289,  19,         25) /* Value */
     , (490289,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490289,  94,         16) /* TargetType - Creature */
     , (490289, 106,        150) /* ItemSpellcraft */
     , (490289, 107,         50) /* ItemCurMana */
     , (490289, 108,         50) /* ItemMaxMana */
     , (490289, 109,        200) /* ItemDifficulty */
     , (490289, 114,          1) /* Attuned - Attuned */
     , (490289,  33,          1) /* Bonded - Bonded */
     , (490289, 280,          3) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490289,  23, True ) /* DestroyOnSell */
     , (490289,  63,      True ) /* UnlimitedUse */;

     INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490289,  39,     0.4) /* DefaultScale */
     , (490289, 167,      30) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490289,   1, 'Eternal Blunt') /* Name */
     , (490289,  14, 'Hit this Burning Blunt to get the highest of high') /* Use */
     , (490289,  16, 'A well crafted Blunt made from Dereths finest Hyssop. It appears endless and inside smolders the sticky icky. Blaze one with your boys!') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490289,   1, 0x02000181) /* Setup */
     , (490289,   3, 0x20000014) /* SoundTable */
     , (490289,   6, 0x04000BEF) /* PaletteBase */
     , (490289,   7, 0x10000178) /* ClothingBase */
     , (490289,   8, 0x06006668) /* Icon */
     , (490289,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490289,  28,       6340) /* Spell - Gauntlet Vitality III */
     , (490289,  52,  0x06005B0C) /* IconUnderlay */;
