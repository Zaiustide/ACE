DELETE FROM `weenie` WHERE `class_Id` = 490220;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490220, 'ace490220-Crate of Spell Components', 44, '2022-10-19 15:43:32') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490220,   1,        128) /* ItemType - Misc */
     , (490220,   5,         5000) /* EncumbranceVal */
     , (490220,  11,          1) /* MaxStackSize */
     , (490220,  12,          1) /* StackSize */
     , (490220,  13,         5000) /* StackUnitEncumbrance */
     , (490220,  15,        2) /* StackUnitValue */
     , (490220,  16,          8) /* ItemUseable - Contained */
     , (490220,  19,        2) /* Value */
     , (490220,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (490220,  94,         16) /* TargetType - Creature */
     , (490220, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490220,  22, True ) /* Inscribable */
     , (490220,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490220,  39,    0.38) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490220,   1, 'Crate of Spell Components') /* Name */
     , (490220,  14, 'Open the Crate to see what''s inside.') /* Use */
     , (490220,  16, 'A well packed crate of much needed spell components. Well packed, containing 4000 Prismatic Tapers and 100 Mana Scarabs') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490220,   1, 0x0200011E) /* Setup */
     , (490220,   3, 0x20000014) /* SoundTable */
     , (490220,   8, 0x060012F8) /* Icon */
	 , (490220,  50, 0x0600262A) /* IconOverlay */
     , (490220,  22, 0x3400002B) /* PhysicsEffectTable */
     , (490220,  38,      490215);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490220,  7 /* Use */,   1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You open the crate and restock on spell components!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 20631 /* Abominable Pack Snowman */, 4000, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
	 , (@parent_id,  2,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 37155 /* Abominable Pack Snowman */, 100, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  77 /* DeleteSelf */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);