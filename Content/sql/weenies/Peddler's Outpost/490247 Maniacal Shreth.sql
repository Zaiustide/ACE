6DELETE FROM `weenie` WHERE `class_Id` = 490247;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490247, 'ManiacalShreth', 10, '2019-09-13 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490247,   1,         16) /* ItemType - Creature */
     , (490247,   2,          32) /* CreatureType - Mite */
     , (490247,   3,          4) /* PaletteTemplate - Brown */
     , (490247,   6,         -1) /* ItemsCapacity */
     , (490247,   7,         -1) /* ContainersCapacity */
     , (490247,  16,          1) /* ItemUseable - No */
     , (490247,  25,        335) /* Level */
     , (490247,  27,          0) /* ArmorType - None */
     , (490247,  40,          2) /* CombatMode - Melee */
     , (490247,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (490247,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490247, 101,        129) /* AiAllowedCombatStyle - Unarmed, ThrownWeapon */
     , (490247, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490247, 146,    7000000) /* XpOverride */
	 , (490247, 386,         30) /* Overpower */
	 , (490247, 332,        350) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490247,   1, True ) /* Stuck */
     , (490247,  11, False) /* IgnoreCollisions */
     , (490247,  12, True ) /* ReportCollisions */
     , (490247,  13, False) /* Ethereal */
     , (490247,  14, True ) /* GravityStatus */
     , (490247,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490247,   1,       5) /* HeartbeatInterval */
     , (490247,   2,       0) /* HeartbeatTimestamp */
     , (490247,   3, 0.150000005960464) /* HealthRate */
     , (490247,   4,       5) /* StaminaRate */
     , (490247,   5,       2) /* ManaRate */
     , (490247,  12,     0.5) /* Shade */
     , (490247,  13, 0.85) /* ArmorModVsSlash */
     , (490247,  14,    0.85) /* ArmorModVsPierce */
     , (490247,  15,    0.85) /* ArmorModVsBludgeon */
     , (490247,  16,       1) /* ArmorModVsCold */
     , (490247,  17,       1) /* ArmorModVsFire */
     , (490247,  18,       1) /* ArmorModVsAcid */
     , (490247,  19,       1) /* ArmorModVsElectric */
     , (490247,  31,      20) /* VisualAwarenessRange */
     , (490247,  34,       2) /* PowerupTime */
     , (490247,  36,       1) /* ChargeSpeed */
     , (490247,  39,     0.85) /* DefaultScale */
     , (490247,  64, 1) /* ResistSlash */
     , (490247,  65, 1) /* ResistPierce */
     , (490247,  66, 1) /* ResistBludgeon */
     , (490247,  67, 1) /* ResistFire */
     , (490247,  68,    0.75) /* ResistCold */
     , (490247,  69, 1) /* ResistAcid */
     , (490247,  70,    0.75) /* ResistElectric */
     , (490247,  71,       1) /* ResistHealthBoost */
     , (490247,  72,       1) /* ResistStaminaDrain */
     , (490247,  73,       1) /* ResistStaminaBoost */
     , (490247,  74,       1) /* ResistManaDrain */
     , (490247,  75,       1) /* ResistManaBoost */
     , (490247, 104,      25) /* ObviousRadarRange */
     , (490247, 125,       1) /* ResistHealthDrain */
	 , (490247, 151,       1) /* IgnoreShield */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490247,   1, 'Maniacal Shreth') /* Name */
   , (490247,  45, 'ManiacalShrethKillTask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490247,   1, 0x020005A7) /* Setup */
     , (490247,   2, 0x09000080) /* MotionTable */
     , (490247,   3, 0x2000004A) /* SoundTable */
     , (490247,   4, 0x3000001F) /* CombatTable */
     , (490247,   6, 0x04000DFC) /* PaletteBase */
     , (490247,   7, 0x10000490) /* ClothingBase */
     , (490247,   8, 0x06001918) /* Icon */
     , (490247,  22, 0x34000065) /* PhysicsEffectTable */
     , (490247,  35,    10002) /* DeathTreasureType - Loot Tier: 8+ */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490247,   1, 600, 0, 0) /* Strength */
     , (490247,   2, 400, 0, 0) /* Endurance */
     , (490247,   3, 380, 0, 0) /* Quickness */
     , (490247,   4, 500, 0, 0) /* Coordination */
     , (490247,   5, 120, 0, 0) /* Focus */
     , (490247,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490247,   1,   15000, 0, 0, 15000) /* MaxHealth */
     , (490247,   3,   1400, 0, 0, 1400) /* MaxStamina */
     , (490247,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490247,  6, 0, 3, 0, 390, 0, 0) /* MeleeDefense        Specialized */
     , (490247,  7, 0, 3, 0, 390, 0, 0) /* MissileDefense      Specialized */
     , (490247, 15, 0, 3, 0, 395, 0, 0) /* MagicDefense        Specialized */
     , (490247, 20, 0, 3, 0,  20, 0, 0) /* Deception           Specialized */
     , (490247, 22, 0, 3, 0,  70, 0, 0) /* Jump                Specialized */
     , (490247, 24, 0, 3, 0, 150, 0, 0) /* Run                 Specialized */
     , (490247, 45, 0, 3, 0, 650, 0, 0) /* LightWeapons        Specialized */
     , (490247, 47, 0, 3, 0, 580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490247,  0,  4,  380,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490247,  1,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490247,  2,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490247,  3,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490247,  4,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490247,  5,  4, 380, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490247,  6,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490247,  7,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490247,  8,  4, 300, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,  0.025, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1000004D /* ChestBeat */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,  0.075, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,    0.1, NULL, 0x8000003C /* HandCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000052 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,  0.025, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x1000004D /* ChestBeat */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,  0.075, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000051 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490247,  5 /* HeartBeat */,    0.1, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x10000052 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490247, 9, 34276,  3, 0, 0.04, False) /* MMD */
     , (490247, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */
	 , (490247, 9, 490248,  0, 0, 0.05, False) /* 4200028 Set Randomizer Morph Gem */
	 , (490247, 9,     0,  0, 0, 0.95, False)    /* Create nothing for ContainTreasure */