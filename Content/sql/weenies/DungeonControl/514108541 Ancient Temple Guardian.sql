DELETE FROM `weenie` WHERE `class_Id` = 514108541;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (514108541, 'ancienttempledcguardian', 10, '2019-09-13 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (514108541,   1,         16) /* ItemType - Creature */
     , (514108541,   2,         13) /* CreatureType - Golem */
	 , (514108541,   3,         39) /* PaletteTemplate - Brown */
     , (514108541,   6,         -1) /* ItemsCapacity */
     , (514108541,   7,         -1) /* ContainersCapacity */
     , (514108541,  16,          1) /* ItemUseable - No */
     , (514108541,  25,        999) /* Level */
     , (514108541,  27,         32) /* ArmorType - Metal */
     , (514108541,  40,          2) /* CombatMode - Melee */
     , (514108541,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (514108541,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (514108541, 133,          2) /* ShowableOnRadar - ShowMovement */
	 , (514108541, 146,  150000000) /* XpOverride */
	 , (514108541, 307,       2000) /* DamageRating */
	 , (514108541, 308,       2000) /* DamageResistRating */
	 , (514108541, 332,     250000) /* LuminanceAward */
	 , (514108541, 386,        100) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (514108541,   1, True ) /* Stuck */
     , (514108541,   6, True ) /* AiUsesMana */
     , (514108541,  11, False) /* IgnoreCollisions */
     , (514108541,  12, True ) /* ReportCollisions */
     , (514108541,  13, True) /* Ethereal */
     , (514108541,  14, True ) /* GravityStatus */
     , (514108541,  19, True ) /* Attackable */
     , (514108541,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (514108541,   1,       5) /* HeartbeatInterval */
     , (514108541,   2,       0) /* HeartbeatTimestamp */
     , (514108541,   3,       0) /* HealthRate */
     , (514108541,   4,       0) /* StaminaRate */
     , (514108541,   5,       2) /* ManaRate */
     , (514108541,   6,     0.1) /* HealthUponResurrection */
     , (514108541,   7,    0.25) /* StaminaUponResurrection */
     , (514108541,   8,     0.3) /* ManaUponResurrection */
     , (514108541,  12,     0.5) /* Shade */
     , (514108541,  13,     1.7) /* ArmorModVsSlash */
     , (514108541,  14,     1.7) /* ArmorModVsPierce */
     , (514108541,  15,     1.7) /* ArmorModVsBludgeon */
     , (514108541,  16,     1.7) /* ArmorModVsCold */
     , (514108541,  17,     1.7) /* ArmorModVsFire */
     , (514108541,  18,     1.7) /* ArmorModVsAcid */
     , (514108541,  19,     1.7) /* ArmorModVsElectric */
     , (514108541,  31,      50) /* VisualAwarenessRange */
     , (514108541,  34,       1) /* PowerupTime */
     , (514108541,  39,     0.4) /* DefaultScale */
     , (514108541,  64,     1.4) /* ResistSlash */
     , (514108541,  65,     1.4) /* ResistPierce */
     , (514108541,  66,     1.4) /* ResistBludgeon */
     , (514108541,  67,     1.4) /* ResistFire */
     , (514108541,  68,     1.4) /* ResistCold */
     , (514108541,  69,     1.4) /* ResistAcid */
     , (514108541,  70,     1.4) /* ResistElectric */
     , (514108541,  71,       1) /* ResistHealthBoost */
     , (514108541,  72,       1) /* ResistStaminaDrain */
     , (514108541,  73,       1) /* ResistStaminaBoost */
     , (514108541,  74,       1) /* ResistManaDrain */
     , (514108541,  75,       1) /* ResistManaBoost */
     , (514108541,  80,       3) /* AiUseMagicDelay */
     , (514108541, 104,      50) /* ObviousRadarRange */
     , (514108541, 122,       0) /* AiAcquireHealth */
     , (514108541, 125,       1) /* ResistHealthDrain */
     , (514108541, 166,       1.8) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (514108541,   1, 'Ancient Temple Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (514108541,   1, 0x02001496) /* Setup */
     , (514108541,   2, 0x09000190) /* MotionTable */
     , (514108541,   3, 0x20000015) /* SoundTable */
     , (514108541,   4, 0x30000008) /* CombatTable */
     , (514108541,   6, 0x04001EC3) /* PaletteBase */
     , (514108541,   7, 0x10000637) /* ClothingBase */
     , (514108541,   8, 0x06001224) /* Icon */
     , (514108541,  22, 0x34000064) /* PhysicsEffectTable */
     , (514108541,  35,      10002) /* DeathTreasureType - Loot Tier: 7 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (514108541,   1, 500, 0, 0) /* Strength */
     , (514108541,   2, 850, 0, 0) /* Endurance */
     , (514108541,   3, 520, 0, 0) /* Quickness */
     , (514108541,   4, 620, 0, 0) /* Coordination */
     , (514108541,   5, 850, 0, 0) /* Focus */
     , (514108541,   6, 900, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (514108541,   1, 1500000, 0, 0, 1500000) /* MaxHealth */
     , (514108541,   3, 1500000, 0, 0, 1500000) /* MaxStamina */
     , (514108541,   5, 1500000, 0, 0, 1500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (514108541,  6, 0, 3, 0, 280, 0, 1982.44181784858) /* MeleeDefense        Specialized */
     , (514108541,  7, 0, 3, 0, 358, 0, 1982.44181784858) /* MissileDefense      Specialized */
     , (514108541, 13, 0, 3, 0, 250, 0, 1982.44181784858) /* UnarmedCombat       Specialized */
     , (514108541, 14, 0, 2, 0, 300, 0, 1982.44181784858) /* ArcaneLore          Trained */
     , (514108541, 15, 0, 3, 0, 150, 0, 1982.44181784858) /* MagicDefense        Specialized */
     , (514108541, 20, 0, 2, 0,  50, 0, 1982.44181784858) /* Deception           Trained */
     , (514108541, 22, 0, 2, 0,  10, 0, 1982.44181784858) /* Jump                Trained */
     , (514108541, 24, 0, 2, 0,  50, 0, 1982.44181784858) /* Run                 Trained */
     , (514108541, 31, 0, 3, 0, 9000, 0, 1982.44181784858) /* CreatureEnchantment Specialized */
     , (514108541, 33, 0, 3, 0, 9000, 0, 1982.44181784858) /* LifeMagic           Specialized */
     , (514108541, 34, 0, 3, 0, 600, 0, 1982.44181784858) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (514108541,  0,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (514108541,  1,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (514108541,  2,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (514108541,  3,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (514108541,  4,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (514108541,  5,  4,  200, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (514108541,  6,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (514108541,  7,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (514108541,  8,  4,  200, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (514108541,  1343,   2.03)  /* Weakness Other VI */
     , (514108541,  1839,   2.01)  /* Blistering Creeper */
	 , (514108541,  1832,   2.01)  /* Torrential Acid */
     , (514108541,  4312,   2.03)  /* Incantation Imperil */
     , (514108541,  4433,   2.08)  /* Incantation of Acid Stream */
     , (514108541,  4473,   2.03)  /* Incantation Acid Vuln */
     , (514108541,  4421,   2.10)  /* Acid Arc VIII */
     , (514108541,  4432,   2.01)  /* Incantation of Acid Streak */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (514108541,  5 /* HeartBeat */,  0.075, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (514108541,  5 /* HeartBeat */,      1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519043 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 1090519060 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (514108541, 9, 34277,  2, 0, 0.10, False) /* Trinket */
	 , (514108541, 9,     0,  0, 0, 0.85, False) /* Create nothing for ContainTreasure */;
