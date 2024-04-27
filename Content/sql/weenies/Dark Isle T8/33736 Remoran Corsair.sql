DELETE FROM `weenie` WHERE `class_Id` = 33736;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (33736, 'ace33736-remorancorsair', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (33736,   1,         16) /* ItemType - Creature */
     , (33736,   2,         84) /* CreatureType - Remoran */
     , (33736,   3,         13) /* PaletteTemplate - Purple */
     , (33736,   6,         -1) /* ItemsCapacity */
     , (33736,   7,         -1) /* ContainersCapacity */
     , (33736,  16,          1) /* ItemUseable - No */
     , (33736,  25,        185) /* Level */
     , (33736,  27,          0) /* ArmorType - None */
     , (33736,  40,          2) /* CombatMode - Melee */
     , (33736,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (33736,  72,         34) /* FriendType - Moarsman */
     , (33736,  81,          1) /* MaxGeneratedObjects */
     , (33736,  82,          0) /* InitGeneratedObjects */
     , (33736,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (33736, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (33736, 146,     250000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (33736,   1, True ) /* Stuck */
     , (33736,   6, True ) /* AiUsesMana */
     , (33736,  12, True ) /* ReportCollisions */
     , (33736,  14, True ) /* GravityStatus */
     , (33736,  19, True ) /* Attackable */
     , (33736,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (33736,   1,       5) /* HeartbeatInterval */
     , (33736,   2,       0) /* HeartbeatTimestamp */
     , (33736,   3,     0.6) /* HealthRate */
     , (33736,   4,       3) /* StaminaRate */
     , (33736,   5,       1) /* ManaRate */
     , (33736,  12,       0) /* Shade */
     , (33736,  13,    0.95) /* ArmorModVsSlash */
     , (33736,  14,    0.75) /* ArmorModVsPierce */
     , (33736,  15,    0.65) /* ArmorModVsBludgeon */
     , (33736,  16,    0.95) /* ArmorModVsCold */
     , (33736,  17,    0.75) /* ArmorModVsFire */
     , (33736,  18,    0.95) /* ArmorModVsAcid */
     , (33736,  19,    0.85) /* ArmorModVsElectric */
     , (33736,  31,      20) /* VisualAwarenessRange */
     , (33736,  34,       1) /* PowerupTime */
     , (33736,  36,       1) /* ChargeSpeed */
     , (33736,  39,     1.1) /* DefaultScale */
     , (33736,  43,       4) /* GeneratorRadius */
     , (33736,  64,     0.1) /* ResistSlash */
     , (33736,  65,     0.3) /* ResistPierce */
     , (33736,  66,     0.3) /* ResistBludgeon */
     , (33736,  67,     0.1) /* ResistFire */
     , (33736,  68,     0.1) /* ResistCold */
     , (33736,  69,     0.1) /* ResistAcid */
     , (33736,  70,     0.1) /* ResistElectric */
     , (33736,  71,       1) /* ResistHealthBoost */
     , (33736,  72,       1) /* ResistStaminaDrain */
     , (33736,  73,       1) /* ResistStaminaBoost */
     , (33736,  74,       1) /* ResistManaDrain */
     , (33736,  75,       1) /* ResistManaBoost */
     , (33736,  80,       2) /* AiUseMagicDelay */
     , (33736, 104,      10) /* ObviousRadarRange */
     , (33736, 125,       1) /* ResistHealthDrain */
     , (33736, 166,     0.3) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (33736,   1, 'Remoran Corsair') /* Name */
     , (33736,  45, 'KillTaskMGHRemoran') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (33736,   1, 0x02001494) /* Setup */
     , (33736,   2, 0x0900018E) /* MotionTable */
     , (33736,   3, 0x200000BF) /* SoundTable */
     , (33736,   4, 0x3000001C) /* CombatTable */
     , (33736,   6, 0x04001EB6) /* PaletteBase */
     , (33736,   7, 0x10000636) /* ClothingBase */
     , (33736,   8, 0x06001221) /* Icon */
     , (33736,  22, 0x340000B6) /* PhysicsEffectTable */
     , (33736,  35,       1011) /* DeathTreasureType - Loot Tier: 7 */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (33736,   1, 400, 0, 0) /* Strength */
     , (33736,   2, 320, 0, 0) /* Endurance */
     , (33736,   3, 400, 0, 0) /* Quickness */
     , (33736,   4, 340, 0, 0) /* Coordination */
     , (33736,   5, 280, 0, 0) /* Focus */
     , (33736,   6, 340, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (33736,   1,   450, 0, 0, 610) /* MaxHealth */
     , (33736,   3,   300, 0, 0, 620) /* MaxStamina */
     , (33736,   5,   300, 0, 0, 640) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (33736,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (33736,  7, 0, 3, 0, 230, 0, 0) /* MissileDefense      Specialized */
     , (33736, 14, 0, 3, 0,  70, 0, 0) /* ArcaneLore          Specialized */
     , (33736, 15, 0, 3, 0, 230, 0, 0) /* MagicDefense        Specialized */
     , (33736, 20, 0, 3, 0,  50, 0, 0) /* Deception           Specialized */
     , (33736, 31, 0, 3, 0, 175, 0, 0) /* CreatureEnchantment Specialized */
     , (33736, 32, 0, 3, 0, 175, 0, 0) /* ItemEnchantment     Specialized */
     , (33736, 33, 0, 3, 0, 175, 0, 0) /* LifeMagic           Specialized */
     , (33736, 34, 0, 3, 0, 175, 0, 0) /* WarMagic            Specialized */
     , (33736, 45, 0, 3, 0, 228, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (33736,  0,  2, 130,  0.5,  625,  594,  469,  406,  594,  469,  594,  531,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (33736,  5,  4, 130,  0.4,  625,  594,  469,  406,  594,  469,  594,  531,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Hand */
     , (33736, 16,  1,  0,    0,  625,  594,  469,  406,  594,  469,  594,  531,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Torso */
     , (33736, 17,  1, 130, 0.75,  625,  594,  469,  406,  594,  469,  594,  531,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (33736, 19,  4,  0,    0,  625,  594,  469,  406,  594,  469,  594,  531,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Leg */
     , (33736, 21,  4,  0,    0,  625,  594,  469,  406,  594,  469,  594,  531,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (33736,  2174,   2.15)  /* Archer's Gift */
     , (33736,  2084,   2.18)  /* Belly of Lead */
     , (33736,  2068,   2.15)  /* Brittle Bones */
     , (33736,  2318,   2.15)  /* Gravity Well */
     , (33736,  2088,   2.15)  /* Senescence */
     , (33736,  2164,   2.03)  /* Swordsman's Gift */
     , (33736,  2054,   2.15)  /* Synaptic Misfire */
     , (33736,  2146,   2.02)  /* Evisceration */
     , (33736,  2132,   2.15)  /* The Spike */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (33736,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (33736, 9, 41979,  1, 0, 0.02, False) /* Create Shattered Mana Forge Key (41979) for ContainTreasure */
     , (33736, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (33736, 9, 34277,  1, 0, 0.02, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */
     , (33736, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (33736, -1, 33629, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Fouled Remoran (33629) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;