DELETE FROM `weenie` WHERE `class_Id` = 41541200;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (41541200, 'ace41541200-paragoncologem', 44, '2022-10-19 15:43:32') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (41541200,   1,        128) /* ItemType - Misc */
     , (41541200,   5,         50) /* EncumbranceVal */
     , (41541200,  11,          1) /* MaxStackSize */
     , (41541200,  12,          1) /* StackSize */
     , (41541200,  13,         50) /* StackUnitEncumbrance */
     , (41541200,  15,          5) /* StackUnitValue */
     , (41541200,  16,          8) /* ItemUseable - Contained */
     , (41541200,  19,          5) /* Value */
     , (41541200,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (41541200,  94,         16) /* TargetType - Creature */
     , (41541200, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (41541200,  22, True ) /* Inscribable */
     , (41541200,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (41541200,  39,    1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (41541200,   1, 'Paragon Token of the Colosseum') /* Name */
     , (41541200,  14, 'Use this token to get flagged for Colosseum completion for Paragon') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (41541200,   1, 0x020000ED) /* Setup */
     , (41541200,   3, 0x20000014) /* SoundTable */
     , (41541200,   8, 0x06006956) /* Icon */
     , (41541200,  22, 0x3400002B) /* PhysicsEffectTable */
     , (41541200,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (41541200,  7 /* Use */,    1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You are now flagged for Colosseum completion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  22 /* StampQuest */, 0, 1, NULL, 'CompletedColosseum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  77 /* DeleteSelf */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);