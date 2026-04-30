DELETE FROM `weenie` WHERE `class_Id` = 408590;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (408590, 'ace408590-greatwork', 10, '2026-04-29 10:29:23') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (408590,   1,         16) /* ItemType - Creature */
     , (408590,   2,         47) /* CreatureType - Crystal */
     , (408590,   6,         -1) /* ItemsCapacity */
     , (408590,   7,         -1) /* ContainersCapacity */
     , (408590,  16,          1) /* ItemUseable - No */
     , (408590,  25,        666) /* Level */
     , (408590,  40,          2) /* CombatMode - Melee */
     , (408590,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (408590,  81,          6) /* MaxGeneratedObjects */
     , (408590,  82,          6) /* InitGeneratedObjects */
     , (408590,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (408590, 307,        100) /* DamageRating */
     , (408590, 103,          3) /* GeneratorDestructionType - Kill */
     , (408590, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (408590,   1, True ) /* Stuck */
     , (408590,   6, True ) /* AiUsesMana */
     , (408590,  29, True ) /* NoCorpse */
     , (408590,  50, True ) /* NeverFailCasting */
     , (408590,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (408590,   1,       5) /* HeartbeatInterval */
     , (408590,   2,       0) /* HeartbeatTimestamp */
     , (408590,   3,       0) /* HealthRate */
     , (408590,   4,       5) /* StaminaRate */
     , (408590,   5,       1) /* ManaRate */
     , (408590,  13,       1) /* ArmorModVsSlash */
     , (408590,  14,       1) /* ArmorModVsPierce */
     , (408590,  15,       1) /* ArmorModVsBludgeon */
     , (408590,  16,       1) /* ArmorModVsCold */
     , (408590,  17,       1) /* ArmorModVsFire */
     , (408590,  18,       1) /* ArmorModVsAcid */
     , (408590,  19,       1) /* ArmorModVsElectric */
     , (408590,  31,      10) /* VisualAwarenessRange */
     , (408590,  34,       1) /* PowerupTime */
     , (408590,  36,       1) /* ChargeSpeed */
     , (408590,  39,       2) /* DefaultScale */
     , (408590,  41,      60) /* RegenerationInterval */
     , (408590,  43,      10) /* GeneratorRadius */
     , (408590,  64,    0.75) /* ResistSlash */
     , (408590,  65,    0.75) /* ResistPierce */
     , (408590,  66,    0.75) /* ResistBludgeon */
     , (408590,  67,     0.3) /* ResistFire */
     , (408590,  68,     0.3) /* ResistCold */
     , (408590,  69,     0.3) /* ResistAcid */
     , (408590,  70,     0.3) /* ResistElectric */
     , (408590,  71,       1) /* ResistHealthBoost */
     , (408590,  72,       1) /* ResistStaminaDrain */
     , (408590,  73,       1) /* ResistStaminaBoost */
     , (408590,  74,       1) /* ResistManaDrain */
     , (408590,  75,       1) /* ResistManaBoost */
     , (408590, 104,      10) /* ObviousRadarRange */
     , (408590, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (408590,   1, 'The Great Work') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (408590,   1, 0x020010A2) /* Setup */
     , (408590,   2, 0x0900015A) /* MotionTable */
     , (408590,   3, 0x20000059) /* SoundTable */
     , (408590,   4, 0x30000027) /* CombatTable */
     , (408590,   6, 0x04001394) /* PaletteBase */
     , (408590,   8, 0x06003344) /* Icon */
     , (408590,  22, 0x3400009D) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (408590,   1,4800, 0, 0) /* Strength */
     , (408590,   2, 800, 0, 0) /* Endurance */
     , (408590,   3, 650, 0, 0) /* Quickness */
     , (408590,   4, 800, 0, 0) /* Coordination */
     , (408590,   5,1200, 0, 0) /* Focus */
     , (408590,   6,1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (408590,   1,149600, 0, 0,150000) /* MaxHealth */
     , (408590,   3, 10000, 0, 0,10100) /* MaxStamina */
     , (408590,   5, 30000, 0, 0,30600) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (408590,  6, 0, 3, 0, 292, 0, 0) /* MeleeDefense         Specialized */
     , (408590,  7, 0, 3, 0, 485, 0, 0) /* MissileDefense       Specialized */
     , (408590, 15, 0, 3, 0, 133, 0, 0) /* MagicDefense         Specialized */
     , (408590, 34, 0, 3, 0, 150, 0, 0) /* WarMagic             Specialized */
     , (408590, 45, 0, 3, 0, 180, 0, 0) /* LightWeapons         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (408590,  0,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (408590,  1,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (408590,  2,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (408590,  3,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (408590,  4,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (408590,  5,  4,  1, 0.75,  250,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (408590,  6,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (408590,  7,  4,  0,    0,  250,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (408590,  8,  4,  1, 0.75,  250,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (408590,  4423,   2.23) /* Incantation of Flame Arc */
     , (408590,  4096,   2.06) /* Flame Chain */
     , (408590,  3115,   2.07) /* Sear Flesh */
     , (408590,  2127,   2.07) /* Silencia's Scorn */
     , (408590,  3883,   2.06) /* Pyroclastic Explosion */
     , (408590,  3948,   2.07) /* Flame Wave */
     , (408590,  2042,   2.04) /* Demon's Tongues */
     , (408590,  4439,   2.44) /* Incantation of Flame Bolt */
     , (408590,  4440,   2.83) /* Incantation of Flame Streak */
     , (408590,  4643,      3) /* Incantation of Drain Health Other */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */
     , (408590, 9, 361849,  0, 0,    1, False) /* Create Great Work Shard (408590) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (408590, -1, 4085901, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Great Work Satellite (4085901) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
