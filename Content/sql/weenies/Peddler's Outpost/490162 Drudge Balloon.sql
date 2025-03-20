DELETE FROM `weenie` WHERE `class_Id` = 490162;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490162, 'ace490162-drudgescoutballoonoutpost', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490162,   1,         16) /* ItemType - Creature */
     , (490162,   2,          3) /* CreatureType - Drudge */
     , (490162,   6,         -1) /* ItemsCapacity */
     , (490162,   7,         -1) /* ContainersCapacity */
     , (490162,  16,          1) /* ItemUseable - No */
     , (490162,  25,        200) /* Level */
     , (490162,  27,          0) /* ArmorType - None */
     , (490162,  40,          2) /* CombatMode - Melee */
	  , (490162,  81,          4) /* MaxGeneratedObjects */
     , (490162,  82,          4) /* InitGeneratedObjects */
     , (490162,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (490162,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490162, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (490162, 146,     2500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490162,   1, True ) /* Stuck */
     , (490162,   6, True ) /* AiUsesMana */
     , (490162,  11, False) /* IgnoreCollisions */
     , (490162,  12, True ) /* ReportCollisions */
     , (490162,  13, False) /* Ethereal */
     , (490162,  14, True ) /* GravityStatus */
     , (490162,  19, True ) /* Attackable */
     , (490162,  29, True ) /* NoCorpse */
     , (490162,  50, True ) /* NeverFailCasting */
     , (490162,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490162,   1,       5) /* HeartbeatInterval */
     , (490162,   2,       0) /* HeartbeatTimestamp */
     , (490162,   3,     0.9) /* HealthRate */
     , (490162,   4,       3) /* StaminaRate */
     , (490162,   5,       1) /* ManaRate */
     , (490162,  12,     0.5) /* Shade */
     , (490162,  13,    0.82) /* ArmorModVsSlash */
     , (490162,  14,    0.44) /* ArmorModVsPierce */
     , (490162,  15,    0.83) /* ArmorModVsBludgeon */
     , (490162,  16,    0.72) /* ArmorModVsCold */
     , (490162,  17,    0.83) /* ArmorModVsFire */
     , (490162,  18,    0.72) /* ArmorModVsAcid */
     , (490162,  19,     0.9) /* ArmorModVsElectric */
     , (490162,  31,      50) /* VisualAwarenessRange */
     , (490162,  34,       1) /* PowerupTime */
	 , (490162,  41,     600) /* RegenerationInterval */
	 , (490162,  43,       5) /* GeneratorRadius */
     , (490162,  36,       1) /* ChargeSpeed */
     , (490162,  64,     0.9) /* ResistSlash */
     , (490162,  65,    0.56) /* ResistPierce */
     , (490162,  66,    0.96) /* ResistBludgeon */
     , (490162,  67,    0.96) /* ResistFire */
     , (490162,  68,    0.85) /* ResistCold */
     , (490162,  69,    0.85) /* ResistAcid */
     , (490162,  70,    0.18) /* ResistElectric */
     , (490162,  71,       1) /* ResistHealthBoost */
     , (490162,  72,       1) /* ResistStaminaDrain */
     , (490162,  73,       1) /* ResistStaminaBoost */
     , (490162,  74,       1) /* ResistManaDrain */
     , (490162,  75,       1) /* ResistManaBoost */
     , (490162,  80,       3) /* AiUseMagicDelay */
     , (490162, 104,      50) /* ObviousRadarRange */
     , (490162, 122,       2) /* AiAcquireHealth */
     , (490162, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490162,   1, 'Drudge Scouting Balloon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490162,   1, 0x020016F1) /* Setup */
     , (490162,   2, 0x090001CD) /* MotionTable */
     , (490162,   3, 0x20000049) /* SoundTable */
	 , (490162,   4, 0x30000004) /* CombatTable */
     , (490162,   8, 0x06003711) /* Icon */
     , (490162,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490162,   1, 180, 0, 0) /* Strength */
     , (490162,   2, 205, 0, 0) /* Endurance */
     , (490162,   3, 190, 0, 0) /* Quickness */
     , (490162,   4, 170, 0, 0) /* Coordination */
     , (490162,   5, 400, 0, 0) /* Focus */
     , (490162,   6, 400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490162,   1,   8000, 0, 0, 8000) /* MaxHealth */
     , (490162,   3,  10000, 0, 0, 12005) /* MaxStamina */
     , (490162,   5,  10000, 0, 0, 11600) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490162,  6, 0, 3, 0, 280, 0, 0) /* MeleeDefense        Specialized */
     , (490162,  7, 0, 3, 0, 215, 0, 0) /* MissileDefense      Specialized */
     , (490162, 14, 0, 3, 0, 350, 0, 0) /* ArcaneLore          Specialized */
     , (490162, 15, 0, 3, 0, 249, 0, 0) /* MagicDefense        Specialized */
     , (490162, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (490162, 24, 0, 3, 0,  55, 0, 0) /* Run                 Specialized */
     , (490162, 31, 0, 3, 0, 100, 0, 0) /* CreatureEnchantment Specialized */
     , (490162, 33, 0, 3, 0, 600, 0, 0) /* LifeMagic           Specialized */
     , (490162, 34, 0, 3, 0, 600, 0, 0) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490162,  0,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490162,  1,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490162,  2,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490162,  3,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490162,  4,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490162,  5,  4, 1000, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490162,  6,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490162,  7,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490162,  8,  4, 1000, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490162,    3880,      3)  /* Lightning Bolt VI */
, (490162,    4483,      3)  /* Lightning Bolt VI */;


