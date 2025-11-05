DELETE FROM `weenie` WHERE `class_Id` = 41541201;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (41541201, 'ace41541201-paragonneftetgem', 44, '2022-10-19 15:43:32') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (41541201,   1,        128) /* ItemType - Misc */
     , (41541201,   5,         50) /* EncumbranceVal */
     , (41541201,  11,          1) /* MaxStackSize */
     , (41541201,  12,          1) /* StackSize */
     , (41541201,  13,         50) /* StackUnitEncumbrance */
     , (41541201,  15,          5) /* StackUnitValue */
     , (41541201,  16,          8) /* ItemUseable - Contained */
     , (41541201,  19,          5) /* Value */
     , (41541201,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (41541201,  94,         16) /* TargetType - Creature */
     , (41541201, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (41541201,  22, True ) /* Inscribable */
     , (41541201,  90, True ) /* NpcInteractsSilently */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (41541201,  39,    1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (41541201,   1, 'Paragon Token of the Slave Master') /* Name */
     , (41541201,  14, 'Use this token to get flagged for Slave Master completion for Paragon') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (41541201,   1, 0x02000181) /* Setup */
     , (41541201,   3, 0x20000014) /* SoundTable */
     , (41541201,   6, 0x04000BEF) /* PaletteBase */
     , (41541201,   8, 0x06006FF0) /* Icon */
     , (41541201,  22, 0x3400002B) /* PhysicsEffectTable */
     , (41541201,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (41541201,  7 /* Use */,    1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You are now flagged for completion of the Slave Master quest!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  22 /* StampQuest */, 0, 1, NULL, 'NeftetFreeHatsheputWait', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  77 /* DeleteSelf */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);