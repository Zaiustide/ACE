DELETE FROM `weenie` WHERE `class_Id` = 490253;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490253, 'ancientgolem', 10, '2019-09-13 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490253,   1,         16) /* ItemType - Creature */
     , (490253,   2,         13) /* CreatureType - Golem */
	 , (490253,   3,          39) /* PaletteTemplate - Brown */
     , (490253,   6,         -1) /* ItemsCapacity */
     , (490253,   7,         -1) /* ContainersCapacity */
     , (490253,  16,          1) /* ItemUseable - No */
     , (490253,  25,        400) /* Level */
     , (490253,  27,          32) /* ArmorType - Metal */
     , (490253,  40,          2) /* CombatMode - Melee */
     , (490253,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (490253,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490253, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (490253, 386,         10) /* Overpower */
     , (490253, 146,   15000000) /* XpOverride */
     , (490253, 332,   200); /* LuminanceAward */

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490253,   1, True ) /* Stuck */
     , (490253,   6, True ) /* AiUsesMana */
     , (490253,  11, False) /* IgnoreCollisions */
     , (490253,  12, True ) /* ReportCollisions */
     , (490253,  13, False) /* Ethereal */
     , (490253,  14, True ) /* GravityStatus */
     , (490253,  19, True ) /* Attackable */
     , (490253,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490253,   1,       5) /* HeartbeatInterval */
     , (490253,   2,       0) /* HeartbeatTimestamp */
     , (490253,   3,     0.9) /* HealthRate */
     , (490253,   4,     0.5) /* StaminaRate */
     , (490253,   5,       2) /* ManaRate */
     , (490253,   6,     0.1) /* HealthUponResurrection */
     , (490253,   7,    0.25) /* StaminaUponResurrection */
     , (490253,   8,     0.3) /* ManaUponResurrection */
     , (490253,  12,     0.5) /* Shade */
     , (490253,  13,     1.7) /* ArmorModVsSlash */
     , (490253,  14,     1.7) /* ArmorModVsPierce */
     , (490253,  15,     1.7) /* ArmorModVsBludgeon */
     , (490253,  16,     1.7) /* ArmorModVsCold */
     , (490253,  17,     1.7) /* ArmorModVsFire */
     , (490253,  18,     1.7) /* ArmorModVsAcid */
     , (490253,  19,     1.7) /* ArmorModVsElectric */
     , (490253,  31,      15) /* VisualAwarenessRange */
     , (490253,  34,       1) /* PowerupTime */
     , (490253,  39,     1.3) /* DefaultScale */
     , (490253,  64,     1.4) /* ResistSlash */
     , (490253,  65,     1.4) /* ResistPierce */
     , (490253,  66,     1.4) /* ResistBludgeon */
     , (490253,  67,     1.4) /* ResistFire */
     , (490253,  68,     1.4) /* ResistCold */
     , (490253,  69,     1.4) /* ResistAcid */
     , (490253,  70,     1.4) /* ResistElectric */
     , (490253,  71,       1) /* ResistHealthBoost */
     , (490253,  72,       1) /* ResistStaminaDrain */
     , (490253,  73,       1) /* ResistStaminaBoost */
     , (490253,  74,       1) /* ResistManaDrain */
     , (490253,  75,       1) /* ResistManaBoost */
     , (490253,  80,       3) /* AiUseMagicDelay */
     , (490253, 104,       5) /* ObviousRadarRange */
     , (490253, 122,       2) /* AiAcquireHealth */
     , (490253, 125,       1) /* ResistHealthDrain */
     , (490253, 166,       1.8) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490253,   1, 'Ancient Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490253,   1, 0x02001496) /* Setup */
     , (490253,   2, 0x09000190) /* MotionTable */
     , (490253,   3, 0x20000015) /* SoundTable */
     , (490253,   4, 0x30000008) /* CombatTable */
     , (490253,   6, 0x04001EC3) /* PaletteBase */
     , (490253,   7, 0x10000637) /* ClothingBase */
     , (490253,   8, 0x06001224) /* Icon */
     , (490253,  22, 0x34000064) /* PhysicsEffectTable */
     , (490253,  35,       10002) /* DeathTreasureType - Loot Tier: 7 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490253,   1, 500, 0, 0) /* Strength */
     , (490253,   2, 850, 0, 0) /* Endurance */
     , (490253,   3, 520, 0, 0) /* Quickness */
     , (490253,   4, 620, 0, 0) /* Coordination */
     , (490253,   5, 850, 0, 0) /* Focus */
     , (490253,   6, 900, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490253,   1,   22000, 0, 0, 22000) /* MaxHealth */
     , (490253,   3,   8000, 0, 0, 8000) /* MaxStamina */
     , (490253,   5,   10000, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490253,  6, 0, 3, 0, 280, 0, 1982.44181784858) /* MeleeDefense        Specialized */
     , (490253,  7, 0, 3, 0, 358, 0, 1982.44181784858) /* MissileDefense      Specialized */
     , (490253, 13, 0, 3, 0, 250, 0, 1982.44181784858) /* UnarmedCombat       Specialized */
     , (490253, 14, 0, 2, 0, 300, 0, 1982.44181784858) /* ArcaneLore          Trained */
     , (490253, 15, 0, 3, 0, 150, 0, 1982.44181784858) /* MagicDefense        Specialized */
     , (490253, 20, 0, 2, 0,  50, 0, 1982.44181784858) /* Deception           Trained */
     , (490253, 22, 0, 2, 0,  10, 0, 1982.44181784858) /* Jump                Trained */
     , (490253, 24, 0, 2, 0,  50, 0, 1982.44181784858) /* Run                 Trained */
     , (490253, 31, 0, 3, 0, 9000, 0, 1982.44181784858) /* CreatureEnchantment Specialized */
     , (490253, 33, 0, 3, 0, 9000, 0, 1982.44181784858) /* LifeMagic           Specialized */
     , (490253, 34, 0, 3, 0, 600, 0, 1982.44181784858) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490253,  0,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490253,  1,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490253,  2,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490253,  3,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490253,  4,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490253,  5,  4,  200, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490253,  6,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490253,  7,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490253,  8,  4,  200, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490253,  1343,   2.03)  /* Weakness Other VI */
     , (490253,  1839,   2.01)  /* Blistering Creeper */
	 , (490253,  1832,   2.01)  /* Torrential Acid */
     , (490253,  4312,   2.03)  /* Incantation Imperil */
     , (490253,  4433,   2.08)  /* Incantation of Acid Stream */
     , (490253,  4473,   2.03)  /* Incantation Acid Vuln */
     , (490253,  4421,   2.10)  /* Acid Arc VIII */
     , (490253,  4432,   2.01)  /* Incantation of Acid Streak */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490253,  5 /* HeartBeat */,  0.075, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490253,  5 /* HeartBeat */,      1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519043 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 1090519060 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490253, 9, 34277,  2, 0, 0.10, False) /* Trinket */
	 , (490253, 9,     0,  0, 0, 0.85, False) /* Create nothing for ContainTreasure */;
