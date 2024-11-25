DELETE FROM `weenie` WHERE `class_Id` = 490322;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490322, 'Outpostportalgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490322,   1,       2048) /* ItemType - Gem */
     , (490322,   3,         14) /* PaletteTemplate - Red */
     , (490322,   5,          5) /* EncumbranceVal */
     , (490322,   8,          5) /* Mass */
     , (490322,   9,          0) /* ValidLocations - None */
     , (490322,  16,          8) /* ItemUseable - Contained */
     , (490322,  18,          1) /* UiEffects - Magical */
     , (490322,  19,         20) /* Value */
     , (490322,  33,          1) /* Bonded - Normal */
     , (490322,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (490322,  94,         16) /* TargetType - Creature */
     , (490322, 106,        210) /* ItemSpellcraft */
     , (490322, 107,         70) /* ItemCurMana */
     , (490322, 108,         70) /* ItemMaxMana */
     , (490322, 109,         40) /* ItemDifficulty */
     , (490322, 110,          0) /* ItemAllegianceRankLimit */
	 , (490322, 280,        221) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490322,  15, True ) /* LightsStatus */
     , (490322,  23, True ) /* DestroyOnSell */
	 , (490322,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490322,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490322,   1, 'Empyrean Compass') /* Name */
     , (490322,  14, 'Use the well made compass to travel to the Island Outpost.') /* Use */
     , (490322,  15, 'A glowing green gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490322,   1, 0x02000921) /* Setup */
     , (490322,   3, 0x20000014) /* SoundTable */
     , (490322,   6, 0x04000BEF) /* PaletteBase */
     , (490322,   7, 0x1000010B) /* ClothingBase */
     , (490322,   8, 0x06003778) /* Icon */
     , (490322,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490322,  36, 0x0E000016) /* MutateFilter */
	 , (490322,  52, 0x06005B0C) /* IconUnderlay */;

