DELETE FROM `weenie` WHERE `class_Id` = 451605868;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451605868, 'T9lichlordfrore', 10, '2026-04-30 07:51:55') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451605868,   1,         16) /* ItemType - Creature */
     , (451605868,   2,         14) /* CreatureType - Undead */
     , (451605868,   3,          1) /* PaletteTemplate - AquaBlue */
     , (451605868,   6,         -1) /* ItemsCapacity */
     , (451605868,   7,         -1) /* ContainersCapacity */
     , (451605868,  16,          1) /* ItemUseable - No */
     , (451605868,  25,        666) /* Level */
     , (451605868,  27,          0) /* ArmorType - None */
     , (451605868,  40,          1) /* CombatMode - NonCombat */
     , (451605868,  68,          3) /* TargetingTactic - Random, Focused */
     , (451605868,  81,          1) /* MaxGeneratedObjects */
     , (451605868,  82,          1) /* InitGeneratedObjects */
     , (451605868,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451605868, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451605868, 103,          3) /* GeneratorDestructionType - Kill */
     , (451605868, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451605868, 140,          1) /* AiOptions - CanOpenDoors */
     , (451605868, 146,   80000000) /* XpOverride */
     , (451605868, 307,        140) /* DamageRating */
     , (451605868, 308,         30) /* DamageResistRating */
     , (451605868, 332,       6000) /* LuminanceAward */
     , (451605868, 386,         45) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451605868,   1, True ) /* Stuck */
     , (451605868,   6, True ) /* AiUsesMana */
     , (451605868,  11, False) /* IgnoreCollisions */
     , (451605868,  12, True ) /* ReportCollisions */
     , (451605868,  13, False) /* Ethereal */
     , (451605868,  14, True ) /* GravityStatus */
     , (451605868,  19, True ) /* Attackable */
     , (451605868,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451605868,   1,       5) /* HeartbeatInterval */
     , (451605868,   2,       0) /* HeartbeatTimestamp */
     , (451605868,   3,     0.8) /* HealthRate */
     , (451605868,   4,     0.5) /* StaminaRate */
     , (451605868,   5,       2) /* ManaRate */
     , (451605868,  12,     0.1) /* Shade */
     , (451605868,  13,       1) /* ArmorModVsSlash */
     , (451605868,  14,       1) /* ArmorModVsPierce */
     , (451605868,  15,       1) /* ArmorModVsBludgeon */
     , (451605868,  16,       1) /* ArmorModVsCold */
     , (451605868,  17,    0.75) /* ArmorModVsFire */
     , (451605868,  18,       1) /* ArmorModVsAcid */
     , (451605868,  19,       1) /* ArmorModVsElectric */
     , (451605868,  31,      18) /* VisualAwarenessRange */
     , (451605868,  34,     1.1) /* PowerupTime */
     , (451605868,  36,       1) /* ChargeSpeed */
     , (451605868,  41,      60) /* RegenerationInterval */
     , (451605868,  43,      10) /* GeneratorRadius */
     , (451605868,  64,     0.9) /* ResistSlash */
     , (451605868,  65,    0.52) /* ResistPierce */
     , (451605868,  66,    0.75) /* ResistBludgeon */
     , (451605868,  67,       1) /* ResistFire */
     , (451605868,  68,     0.1) /* ResistCold */
     , (451605868,  69,    0.75) /* ResistAcid */
     , (451605868,  70,    0.86) /* ResistElectric */
     , (451605868,  71,       1) /* ResistHealthBoost */
     , (451605868,  72,       1) /* ResistStaminaDrain */
     , (451605868,  73,       1) /* ResistStaminaBoost */
     , (451605868,  74,       1) /* ResistManaDrain */
     , (451605868,  75,       1) /* ResistManaBoost */
     , (451605868,  80,       3) /* AiUseMagicDelay */
     , (451605868, 104,      10) /* ObviousRadarRange */
     , (451605868, 125,       1) /* ResistHealthDrain */
     , (451605868, 151,       1) /* IgnoreShield */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451605868,   1, 'Gelidite Lord') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451605868,   1, 0x02000197) /* Setup */
     , (451605868,   2, 0x09000017) /* MotionTable */
     , (451605868,   3, 0x20000016) /* SoundTable */
     , (451605868,   4, 0x30000000) /* CombatTable */
     , (451605868,   6, 0x0400007E) /* PaletteBase */
     , (451605868,   7, 0x10000534) /* ClothingBase */
     , (451605868,   8, 0x06001226) /* Icon */
     , (451605868,  22, 0x34000028) /* PhysicsEffectTable */
     , (451605868,  35,      10022) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451605868,   1,2300, 0, 0) /* Strength */
     , (451605868,   2,2100, 0, 0) /* Endurance */
     , (451605868,   3, 850, 0, 0) /* Quickness */
     , (451605868,   4,1200, 0, 0) /* Coordination */
     , (451605868,   5,1600, 0, 0) /* Focus */
     , (451605868,   6,1600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451605868,   1, 23950, 0, 0,25000) /* MaxHealth */
     , (451605868,   3, 12900, 0, 0,15000) /* MaxStamina */
     , (451605868,   5, 13400, 0, 0,15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451605868,  6, 0, 2, 0,  92, 0, 0) /* MeleeDefense             Trained */
     , (451605868,  7, 0, 3, 0, 390, 0, 0) /* MissileDefense       Specialized */
     , (451605868, 14, 0, 3, 0, 240, 0, 0) /* ArcaneLore          Specialized */
     , (451605868, 15, 0, 2, 0,  28, 0, 0) /* MagicDefense             Trained */
     , (451605868, 20, 0, 3, 0, 306, 0, 0) /* Deception            Specialized */
     , (451605868, 31, 0, 3, 0,1220, 0, 0) /* CreatureEnchantment Specialized */
     , (451605868, 33, 0, 3, 0,1220, 0, 0) /* LifeMagic           Specialized */
     , (451605868, 34, 0, 3, 0,1220, 0, 0) /* WarMagic            Specialized */
     , (451605868, 44, 0, 3, 0,1280, 0, 0) /* HeavyWeapons        Specialized */
     , (451605868, 45, 0, 3, 0,1280, 0, 0) /* LightWeapons        Specialized */
     , (451605868, 46, 0, 3, 0,1280, 0, 0) /* FinesseWeapons      Specialized */
     , (451605868, 47, 0, 3, 0,1160, 0, 0) /* MissileWeapons      Specialized */
     , (451605868, 48, 0, 3, 0,1280, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451605868,  0,  4,  0,    0,  249,  249,  249,  249,  249,  249,  249,  249,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (451605868,  1,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (451605868,  2,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (451605868,  3,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (451605868,  4,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (451605868,  5,  4, 80, 0.75,  238,  238,  238,  238,  238,  238,  238,  238,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (451605868,  6,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (451605868,  7,  4,  0,    0,  238,  238,  238,  238,  238,  238,  238,  238,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (451605868,  8,  4, 80, 0.75,  238,  238,  238,  238,  238,  238,  238,  238,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451605868,  4208,   2.08) /* Spectral Flame */
     , (451605868,  4449,   2.05) /* Incantation of Frost Volley */
     , (451605868,  4643,   2.02) /* Incantation of Drain Health Other */
     , (451605868,  4448,   2.06) /* Incantation of Frost Streak */
     , (451605868,  6193,   2.04) /* Halo of Frost II */
     , (451605868,  4009,   2.04) /* Frost Wave */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451605868, 9,361847,  1, 0, 0.04, False) /* Create Frore Shard (361847) for ContainTreasure */
     , (451605868, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */;

