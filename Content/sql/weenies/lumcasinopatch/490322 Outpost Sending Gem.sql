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
     , (490322, 114,          1) /* Attuned - Normal */
	 , (490322, 280,        221) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490322,  15, True ) /* LightsStatus */
     , (490322,  23, True ) /* DestroyOnSell */
	 , (490322,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490322,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490322,   1, 'Outpost Sending Gem') /* Name */
     , (490322,  14, 'Double Click on this gem to be sent to the Island Outpost.') /* Use */
     , (490322,  15, 'A glowing green gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490322,   1, 0x02000921) /* Setup */
     , (490322,   3, 0x20000014) /* SoundTable */
     , (490322,   6, 0x04000BEF) /* PaletteBase */
     , (490322,   7, 0x1000010B) /* ClothingBase */
     , (490322,   8, 0x06007571) /* Icon */
     , (490322,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (490322,  27, 0x10000057) /* UseUserAnimation - Sanctuary */
     , (490322,  36, 0x0E000016) /* MutateFilter */
	 , (490322,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490322,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  99 /* TeleportTarget */, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,   0xF76C0019 ,95.371689, 22.520020, 13.289044, 0.321486, 0.000000, 0.000000, -0.946914);