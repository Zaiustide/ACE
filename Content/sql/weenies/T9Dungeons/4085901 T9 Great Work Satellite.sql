DELETE FROM `weenie` WHERE `class_Id` = 4085901;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4085901, 'ace4085901-gwsatellite', 10, '2026-04-30 08:04:32') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4085901,   1,         16) /* ItemType - Creature */
     , (4085901,   2,         47) /* CreatureType - Crystal */
     , (4085901,   3,         83) /* PaletteTemplate - Amber */
     , (4085901,   6,         -1) /* ItemsCapacity */
     , (4085901,   7,         -1) /* ContainersCapacity */
     , (4085901,  16,          1) /* ItemUseable - No */
     , (4085901,  25,        666) /* Level */
     , (4085901,  40,          2) /* CombatMode - Melee */
     , (4085901,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (4085901,  81,          4) /* MaxGeneratedObjects */
     , (4085901,  82,          4) /* InitGeneratedObjects */
     , (4085901,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (4085901, 103,          3) /* GeneratorDestructionType - Kill */
     , (4085901, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (4085901, 307,         80) /* DamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4085901,   1, True ) /* Stuck */
     , (4085901,   6, True ) /* AiUsesMana */
     , (4085901,  29, True ) /* NoCorpse */
     , (4085901,  50, True ) /* NeverFailCasting */
     , (4085901,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4085901,   1,       5) /* HeartbeatInterval */
     , (4085901,   2,       0) /* HeartbeatTimestamp */
     , (4085901,   3,      50) /* HealthRate */
     , (4085901,   4,       5) /* StaminaRate */
     , (4085901,   5,       1) /* ManaRate */
     , (4085901,  13,       1) /* ArmorModVsSlash */
     , (4085901,  14,       1) /* ArmorModVsPierce */
     , (4085901,  15,       1) /* ArmorModVsBludgeon */
     , (4085901,  16,       1) /* ArmorModVsCold */
     , (4085901,  17,       1) /* ArmorModVsFire */
     , (4085901,  18,       1) /* ArmorModVsAcid */
     , (4085901,  19,       1) /* ArmorModVsElectric */
     , (4085901,  31,       5) /* VisualAwarenessRange */
     , (4085901,  34,       1) /* PowerupTime */
     , (4085901,  36,       1) /* ChargeSpeed */
     , (4085901,  39,     1.5) /* DefaultScale */
     , (4085901,  41,       5) /* RegenerationInterval */
     , (4085901,  43,      15) /* GeneratorRadius */
     , (4085901,  64,    0.75) /* ResistSlash */
     , (4085901,  65,    0.75) /* ResistPierce */
     , (4085901,  66,       1) /* ResistBludgeon */
     , (4085901,  67,     0.3) /* ResistFire */
     , (4085901,  68,     0.3) /* ResistCold */
     , (4085901,  69,     0.3) /* ResistAcid */
     , (4085901,  70,     0.3) /* ResistElectric */
     , (4085901,  71,       1) /* ResistHealthBoost */
     , (4085901,  72,       1) /* ResistStaminaDrain */
     , (4085901,  73,       1) /* ResistStaminaBoost */
     , (4085901,  74,       1) /* ResistManaDrain */
     , (4085901,  75,       1) /* ResistManaBoost */
     , (4085901, 104,      25) /* ObviousRadarRange */
     , (4085901, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4085901,   1, 'Great Work Satellite') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4085901,   1, 0x02000700) /* Setup */
     , (4085901,   2, 0x09000097) /* MotionTable */
     , (4085901,   3, 0x20000059) /* SoundTable */
     , (4085901,   4, 0x30000027) /* CombatTable */
     , (4085901,   6, 0x04000BEF) /* PaletteBase */
     , (4085901,   7, 0x10000193) /* ClothingBase */
     , (4085901,   8, 0x06001B4B) /* Icon */
     , (4085901,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (4085901,   1, 800, 0, 0) /* Strength */
     , (4085901,   2,2100, 0, 0) /* Endurance */
     , (4085901,   3, 650, 0, 0) /* Quickness */
     , (4085901,   4, 800, 0, 0) /* Coordination */
     , (4085901,   5, 600, 0, 0) /* Focus */
     , (4085901,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (4085901,   1,  5000, 0, 0, 5000) /* MaxHealth */
     , (4085901,   3,  1000, 0, 0, 1100) /* MaxStamina */
     , (4085901,   5, 30000, 0, 0,30600) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (4085901,  6, 0, 2, 0, 292, 0, 0) /* MeleeDefense             Trained */
     , (4085901,  7, 0, 2, 0, 485, 0, 0) /* MissileDefense           Trained */
     , (4085901, 15, 0, 2, 0, 304, 0, 0) /* MagicDefense             Trained */
     , (4085901, 34, 0, 3, 0, 250, 0, 0) /* WarMagic             Specialized */
     , (4085901, 45, 0, 3, 0, 180, 0, 0) /* LightWeapons         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (4085901,  0,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (4085901,  1,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (4085901,  2,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (4085901,  3,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (4085901,  4,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (4085901,  5,  4,  1, 0.75,  180,  180,  180,  180,  180,  180,  180,  180,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (4085901,  6,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (4085901,  7,  4,  0,    0,  180,  180,  180,  180,  180,  180,  180,  180,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (4085901,  8,  4,  1, 0.75,  180,  180,  180,  180,  180,  180,  180,  180,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (4085901,  4421,   2.25) /* Incantation of Acid Arc */
     , (4085901,  4425,   2.33) /* Incantation of Frost Arc */
     , (4085901,  4426,    2.5) /* Incantation of Lightning Arc */
     , (4085901,  4423,      3) /* Incantation of Flame Arc */;

