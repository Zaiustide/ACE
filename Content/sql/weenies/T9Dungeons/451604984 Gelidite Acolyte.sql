DELETE FROM `weenie` WHERE `class_Id` = 451604984;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451604984, 'T9lichfrore', 10, '2026-04-30 07:51:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451604984,   1,         16) /* ItemType - Creature */
     , (451604984,   2,         14) /* CreatureType - Undead */
     , (451604984,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (451604984,   6,         -1) /* ItemsCapacity */
     , (451604984,   7,         -1) /* ContainersCapacity */
     , (451604984,  16,          1) /* ItemUseable - No */
     , (451604984,  25,        666) /* Level */
     , (451604984,  27,          0) /* ArmorType - None */
     , (451604984,  40,          1) /* CombatMode - NonCombat */
     , (451604984,  68,          3) /* TargetingTactic - Random, Focused */
     , (451604984,  81,          1) /* MaxGeneratedObjects */
     , (451604984,  82,          1) /* InitGeneratedObjects */
     , (451604984,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451604984, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451604984, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451604984, 140,          1) /* AiOptions - CanOpenDoors */
     , (451604984, 146,   50000000) /* XpOverride */
     , (451604984, 307,        120) /* DamageRating */
     , (451604984, 308,         30) /* DamageResistRating */
     , (451604984, 332,       5000) /* LuminanceAward */
     , (451604984, 386,         25) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451604984,   1, True ) /* Stuck */
     , (451604984,   6, True ) /* AiUsesMana */
     , (451604984,  11, False) /* IgnoreCollisions */
     , (451604984,  12, True ) /* ReportCollisions */
     , (451604984,  13, False) /* Ethereal */
     , (451604984,  14, True ) /* GravityStatus */
     , (451604984,  19, True ) /* Attackable */
     , (451604984,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451604984,   1,       5) /* HeartbeatInterval */
     , (451604984,   2,       0) /* HeartbeatTimestamp */
     , (451604984,   3,     0.8) /* HealthRate */
     , (451604984,   4,     0.5) /* StaminaRate */
     , (451604984,   5,       2) /* ManaRate */
     , (451604984,  12,     0.1) /* Shade */
     , (451604984,  13,       1) /* ArmorModVsSlash */
     , (451604984,  14,       1) /* ArmorModVsPierce */
     , (451604984,  15,       1) /* ArmorModVsBludgeon */
     , (451604984,  16,       1) /* ArmorModVsCold */
     , (451604984,  17,    0.75) /* ArmorModVsFire */
     , (451604984,  18,       1) /* ArmorModVsAcid */
     , (451604984,  19,       1) /* ArmorModVsElectric */
     , (451604984,  31,      18) /* VisualAwarenessRange */
     , (451604984,  34,       1) /* PowerupTime */
     , (451604984,  36,       1) /* ChargeSpeed */
     , (451604984,  64,       1) /* ResistSlash */
     , (451604984,  65,    0.52) /* ResistPierce */
     , (451604984,  66,    0.75) /* ResistBludgeon */
     , (451604984,  67,       1) /* ResistFire */
     , (451604984,  68,     0.1) /* ResistCold */
     , (451604984,  69,    0.75) /* ResistAcid */
     , (451604984,  70,    0.86) /* ResistElectric */
     , (451604984,  71,       1) /* ResistHealthBoost */
     , (451604984,  72,       1) /* ResistStaminaDrain */
     , (451604984,  73,       1) /* ResistStaminaBoost */
     , (451604984,  74,       1) /* ResistManaDrain */
     , (451604984,  75,       1) /* ResistManaBoost */
     , (451604984,  80,     2.6) /* AiUseMagicDelay */
     , (451604984, 104,      10) /* ObviousRadarRange */
     , (451604984, 125,       1) /* ResistHealthDrain */
     , (451604984, 151,       1) /* IgnoreShield */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451604984,   1, 'Gelidite Acolyte') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451604984,   1, 0x02000197) /* Setup */
     , (451604984,   2, 0x09000017) /* MotionTable */
     , (451604984,   3, 0x20000016) /* SoundTable */
     , (451604984,   4, 0x30000000) /* CombatTable */
     , (451604984,   6, 0x0400007E) /* PaletteBase */
     , (451604984,   7, 0x10000534) /* ClothingBase */
     , (451604984,   8, 0x06001226) /* Icon */
     , (451604984,  22, 0x34000028) /* PhysicsEffectTable */
     , (451604984,  35,      10022) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451604984,   1,2300, 0, 0) /* Strength */
     , (451604984,   2,2100, 0, 0) /* Endurance */
     , (451604984,   3, 850, 0, 0) /* Quickness */
     , (451604984,   4,1200, 0, 0) /* Coordination */
     , (451604984,   5,1250, 0, 0) /* Focus */
     , (451604984,   6, 650, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451604984,   1, 20950, 0, 0,22000) /* MaxHealth */
     , (451604984,   3, 12900, 0, 0,15000) /* MaxStamina */
     , (451604984,   5, 14350, 0, 0,15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451604984,  6, 0, 2, 0,  92, 0, 0) /* MeleeDefense             Trained */
     , (451604984,  7, 0, 2, 0, 365, 0, 0) /* MissileDefense           Trained */
     , (451604984, 14, 0, 3, 0, 150, 0, 0) /* ArcaneLore          Specialized */
     , (451604984, 15, 0, 3, 0, 209, 0, 0) /* MagicDefense         Specialized */
     , (451604984, 20, 0, 3, 0, 306, 0, 0) /* Deception            Specialized */
     , (451604984, 31, 0, 3, 0, 940, 0, 0) /* CreatureEnchantment Specialized */
     , (451604984, 33, 0, 3, 0, 940, 0, 0) /* LifeMagic           Specialized */
     , (451604984, 34, 0, 3, 0, 940, 0, 0) /* WarMagic            Specialized */
     , (451604984, 44, 0, 3, 0, 215, 0, 0) /* HeavyWeapons        Specialized */
     , (451604984, 45, 0, 3, 0, 215, 0, 0) /* LightWeapons        Specialized */
     , (451604984, 46, 0, 3, 0, 215, 0, 0) /* FinesseWeapons      Specialized */
     , (451604984, 47, 0, 3, 0, 100, 0, 0) /* MissileWeapons      Specialized */
     , (451604984, 48, 0, 3, 0, 215, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451604984,  0,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (451604984,  1,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (451604984,  2,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (451604984,  3,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (451604984,  4,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (451604984,  5,  4,100, 0.75,  245,  245,  245,  245,  245,  245,  245,  245,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (451604984,  6,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (451604984,  7,  4,  0,    0,  245,  245,  245,  245,  245,  245,  245,  245,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (451604984,  8,  4,100, 0.75,  245,  245,  245,  245,  245,  245,  245,  245,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451604984,  4208,    2.1) /* Spectral Flame */
     , (451604984,  4643,   2.02) /* Incantation of Drain Health Other */
     , (451604984,  4449,    2.1) /* Incantation of Frost Volley */
     , (451604984,  4448,    2.1) /* Incantation of Frost Streak */
     , (451604984,  4009,   2.04) /* Frost Wave */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451604984, 9,361847,  1, 0, 0.04, False) /* Create Frore Shard (361847) for ContainTreasure */
     , (451604984, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */;

