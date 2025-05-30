DELETE FROM `weenie` WHERE `class_Id` = 86753005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (86753005, 'seasonstownguardian', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (86753005,   1,         16) /* ItemType - Creature */
     , (86753005,   2,         13) /* CreatureType - Golem */
     , (86753005,   6,         -1) /* ItemsCapacity */
     , (86753005,   7,         -1) /* ContainersCapacity */
     , (86753005,  16,          1) /* ItemUseable - No */
     , (86753005,  25,        750) /* Level */
     , (86753005,  27,         32) /* ArmorType - Metal */
     , (86753005,  40,          2) /* CombatMode - Melee */
     , (86753005,  67,          0) /* Tolerance - None */
     , (86753005,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (86753005,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (86753005, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (86753005, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (86753005, 146,          1) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (86753005,   1, True ) /* Stuck */
     , (86753005,  11, False) /* IgnoreCollisions */
     , (86753005,  12, True ) /* ReportCollisions */
     , (86753005,  13, False) /* Ethereal */
     , (86753005,  14, True ) /* GravityStatus */
     , (86753005,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (86753005,   1,       8) /* HeartbeatInterval */
     , (86753005,   2,       0) /* HeartbeatTimestamp */
     , (86753005,   3,    1000) /* HealthRate */
     , (86753005,   4,     250) /* StaminaRate */
     , (86753005,   5,     150) /* ManaRate */
     , (86753005,  13,     1.9) /* ArmorModVsSlash */
     , (86753005,  14,     1.9) /* ArmorModVsPierce */
     , (86753005,  15,     1.9) /* ArmorModVsBludgeon */
     , (86753005,  16,     1.9) /* ArmorModVsCold */
     , (86753005,  17,     1.9) /* ArmorModVsFire */
     , (86753005,  18,     1.9) /* ArmorModVsAcid */
     , (86753005,  19,     1.9) /* ArmorModVsElectric */
     , (86753005,  20,       2) /* CombatSpeed */
     , (86753005,  31,      70) /* VisualAwarenessRange */
     , (86753005,  34,       1) /* PowerupTime */
     , (86753005,  36,       1) /* ChargeSpeed */
     , (86753005,  39,     0.8) /* DefaultScale */
     , (86753005,  64,     1.9) /* ResistSlash */
     , (86753005,  65,     1.9) /* ResistPierce */
     , (86753005,  66,     1.9) /* ResistBludgeon */
     , (86753005,  67,     1.9) /* ResistFire */
     , (86753005,  68,     1.9) /* ResistCold */
     , (86753005,  69,     1.9) /* ResistAcid */
     , (86753005,  70,     1.9) /* ResistElectric */
     , (86753005,  71,       1) /* ResistHealthBoost */
     , (86753005,  72,       1) /* ResistStaminaDrain */
     , (86753005,  73,       1) /* ResistStaminaBoost */
     , (86753005,  74,       1) /* ResistManaDrain */
     , (86753005,  75,       1) /* ResistManaBoost */
     , (86753005, 104,       8) /* ObviousRadarRange */
     , (86753005, 117,     0.7) /* FocusedProbability */
     , (86753005, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (86753005,   1, 'Town Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (86753005,   1, 0x020016D7) /* Setup */
     , (86753005,   2, 0x09000186) /* MotionTable */
     , (86753005,   3, 0x20000015) /* SoundTable */
     , (86753005,   4, 0x30000000) /* CombatTable */
     , (86753005,   7, 0x1000049A) /* ClothingBase */
     , (86753005,   8, 0x06002B2E) /* Icon */
     , (86753005,  22, 0x34000025) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (86753005,   1, 900, 0, 0) /* Strength */
     , (86753005,   2, 9000, 0, 0) /* Endurance */
     , (86753005,   3, 900, 0, 0) /* Quickness */
     , (86753005,   4, 900, 0, 0) /* Coordination */
     , (86753005,   5, 900, 0, 0) /* Focus */
     , (86753005,   6, 900, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (86753005,   1, 999500, 0, 0, 900000) /* MaxHealth */
     , (86753005,   3, 19000, 0, 0, 20000) /* MaxStamina */
     , (86753005,   5,  9500, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (86753005,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (86753005,  7, 0, 2, 0, 300, 0, 0) /* MissileDefense      Trained */
     , (86753005, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (86753005, 41, 0, 3, 0, 600, 0, 0) /* TwoHandedCombat     Specialized */
     , (86753005, 44, 0, 3, 0, 300, 0, 0) /* HeavyWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (86753005,  0,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (86753005,  1,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (86753005,  2,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (86753005,  3,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (86753005,  4,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (86753005,  5,  4,  2, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (86753005,  6,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (86753005,  7,  4,  0,    0,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (86753005,  8,  4,  2, 0.75,  650,  845,  845,  845,  780,  780,  455,  715,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (86753005, 10, 35297,  1, 0, 1, False) /* Create Greatsword of Flame and Light (35297) for WieldTreasure */;
