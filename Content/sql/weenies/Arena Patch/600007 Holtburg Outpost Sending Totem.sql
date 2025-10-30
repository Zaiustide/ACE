DELETE FROM `weenie` WHERE `class_Id` = 600007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (600007, 'HoltburgOutpostportalgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (600007,   1,       2048) /* ItemType - Gem */
     , (600007,   3,         14) /* PaletteTemplate - Red */
     , (600007,   5,          5) /* EncumbranceVal */
     , (600007,   8,          5) /* Mass */
     , (600007,   9,          0) /* ValidLocations - None */
     , (600007,  16,          8) /* ItemUseable - Contained */
     , (600007,  18,          1) /* UiEffects - Magical */
     , (600007,  19,         20) /* Value */
     , (600007,  33,          1) /* Bonded - Normal */
     , (600007,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (600007,  94,         16) /* TargetType - Creature */
     , (600007, 106,        210) /* ItemSpellcraft */
     , (600007, 107,         70) /* ItemCurMana */
     , (600007, 108,         70) /* ItemMaxMana */
     , (600007, 109,         40) /* ItemDifficulty */
     , (600007, 110,          0) /* ItemAllegianceRankLimit */
	 , (600007, 280,        221) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (600007,  15, True ) /* LightsStatus */
     , (600007,  23, True ) /* DestroyOnSell */
	 , (600007,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (600007,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (600007,   1, 'Holtburg Outpost Sending Totem') /* Name */
     , (600007,  14, 'Use the totem to travel to the Holtburg Outpost.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (600007,   1, 0x02000956) /* Setup */
     , (600007,   3, 0x20000014) /* SoundTable */
     , (600007,   6, 0x0400007E) /* PaletteBase */
     , (600007,   7, 0x10000252) /* ClothingBase */
     , (600007,   8, 0x06001E2E) /* Icon */
     , (600007,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (600007,  27, 0x10000057) /* UseUserAnimation - Sanctuary */
	 , (600007,  52, 0x060065FB) /* IconUnderlay */;
