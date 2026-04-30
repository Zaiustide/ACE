DELETE FROM `weenie` WHERE `class_Id` = 451600199;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600199, 'T9_deathgolem', 10, '2026-04-30 01:39:07') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600199,   1,         16) /* ItemType - Creature */
     , (451600199,   2,         13) /* CreatureType - Golem */
     , (451600199,   3,         27) /* PaletteTemplate - Green */
     , (451600199,   6,         -1) /* ItemsCapacity */
     , (451600199,   7,         -1) /* ContainersCapacity */
     , (451600199,  16,          1) /* ItemUseable - No */
     , (451600199,  25,        666) /* Level */
     , (451600199,  27,          0) /* ArmorType - None */
     , (451600199,  40,          2) /* CombatMode - Melee */
     , (451600199,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (451600199,  81,          1) /* MaxGeneratedObjects */
     , (451600199,  82,          1) /* InitGeneratedObjects */
     , (451600199,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600199, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600199, 146,   35000000) /* XpOverride */
     , (451600199, 307,         25) /* DamageRating */
     , (451600199, 308,         25) /* DamageResistRating */
     , (451600199, 332,       5000) /* LuminanceAward */
     , (451600199, 386,         35) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600199,   1, True ) /* Stuck */
     , (451600199,   6, True ) /* AiUsesMana */
     , (451600199,  11, False) /* IgnoreCollisions */
     , (451600199,  12, True ) /* ReportCollisions */
     , (451600199,  13, False) /* Ethereal */
     , (451600199,  14, True ) /* GravityStatus */
     , (451600199,  19, True ) /* Attackable */
     , (451600199,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600199,   1,       5) /* HeartbeatInterval */
     , (451600199,   2,       0) /* HeartbeatTimestamp */
     , (451600199,   3,     0.5) /* HealthRate */
     , (451600199,   4,     0.5) /* StaminaRate */
     , (451600199,   5,       2) /* ManaRate */
     , (451600199,   6,     0.1) /* HealthUponResurrection */
     , (451600199,   7,    0.25) /* StaminaUponResurrection */
     , (451600199,   8,     0.3) /* ManaUponResurrection */
     , (451600199,  12,    0.25) /* Shade */
     , (451600199,  13,     0.8) /* ArmorModVsSlash */
     , (451600199,  14,     0.8) /* ArmorModVsPierce */
     , (451600199,  15,     0.8) /* ArmorModVsBludgeon */
     , (451600199,  16,     0.8) /* ArmorModVsCold */
     , (451600199,  17,     0.8) /* ArmorModVsFire */
     , (451600199,  18,     0.8) /* ArmorModVsAcid */
     , (451600199,  19,       1) /* ArmorModVsElectric */
     , (451600199,  31,      25) /* VisualAwarenessRange */
     , (451600199,  34,     2.5) /* PowerupTime */
     , (451600199,  39,     1.5) /* DefaultScale */
     , (451600199,  43,       3) /* GeneratorRadius */
     , (451600199,  64,    0.33) /* ResistSlash */
     , (451600199,  65,     0.5) /* ResistPierce */
     , (451600199,  66,       1) /* ResistBludgeon */
     , (451600199,  67,     0.2) /* ResistFire */
     , (451600199,  68,     0.2) /* ResistCold */
     , (451600199,  69,       1) /* ResistAcid */
     , (451600199,  70,       1) /* ResistElectric */
     , (451600199,  71,       1) /* ResistHealthBoost */
     , (451600199,  72,       1) /* ResistStaminaDrain */
     , (451600199,  73,       1) /* ResistStaminaBoost */
     , (451600199,  74,       1) /* ResistManaDrain */
     , (451600199,  75,       1) /* ResistManaBoost */
     , (451600199,  76,     0.5) /* Translucency */
     , (451600199,  80,       3) /* AiUseMagicDelay */
     , (451600199, 104,      10) /* ObviousRadarRange */
     , (451600199, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600199,   1, 'Death Golem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600199,   1, 0x02000001) /* Setup */
     , (451600199,   2, 0x0900020E) /* MotionTable */
     , (451600199,   3, 0x20000015) /* SoundTable */
     , (451600199,   4, 0x30000000) /* CombatTable */
     , (451600199,   6, 0x0400007E) /* PaletteBase */
     , (451600199,   7, 0x10000832) /* ClothingBase */
     , (451600199,   8, 0x06001036) /* Icon */
     , (451600199,  22, 0x34000025) /* PhysicsEffectTable */
     , (451600199,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600199,   1, 700, 0, 0) /* Strength */
     , (451600199,   2, 600, 0, 0) /* Endurance */
     , (451600199,   3, 500, 0, 0) /* Quickness */
     , (451600199,   4, 900, 0, 0) /* Coordination */
     , (451600199,   5,1200, 0, 0) /* Focus */
     , (451600199,   6,1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600199,   1, 22000, 0, 0,32000) /* MaxHealth */
     , (451600199,   3,     0, 0, 0,20000) /* MaxStamina */
     , (451600199,   5, 13600, 0, 0,15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600199,  6, 0, 3, 0, 214, 0, 0) /* MeleeDefense         Specialized */
     , (451600199,  7, 0, 3, 0, 460, 0, 0) /* MissileDefense       Specialized */
     , (451600199, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (451600199, 15, 0, 3, 0,  58, 0, 0) /* MagicDefense         Specialized */
     , (451600199, 20, 0, 3, 0, 400, 0, 0) /* Deception            Specialized */
     , (451600199, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (451600199, 24, 0, 2, 0, 910, 0, 0) /* Run                 Trained */
     , (451600199, 31, 0, 3, 0,2110, 0, 0) /* CreatureEnchantment Specialized */
     , (451600199, 33, 0, 3, 0, 100, 0, 0) /* LifeMagic            Specialized */
     , (451600199, 43, 0, 3, 0, 100, 0, 0) /* VoidMagic            Specialized */
     , (451600199, 45, 0, 3, 0, 467, 0, 0) /* LightWeapons         Specialized */
     , (451600199, 51, 0, 3, 0, 134, 0, 0) /* SneakAttack          Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600199,  0,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Nether */
     , (451600199,  1,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Nether */
     , (451600199,  2,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Nether */
     , (451600199,  3,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Nether */
     , (451600199,  4,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Nether */
     , (451600199,  5,1024,100, 0.75,   90,   39,   52,   78,   30,   30,   72,   90,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Nether */
     , (451600199,  6,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Nether */
     , (451600199,  7,1024,  0,    0,   90,   39,   52,   78,   30,   30,   72,   90,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Nether */
     , (451600199,  8,1024,110, 0.75,   90,   39,   52,   78,   30,   30,   72,   90,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Nether */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600199,  5402,   2.05) /* Incantation of Corruption */
     , (451600199,  5338,   2.05) /* Incantation of Destructive Curse */
     , (451600199,  4633,   2.04) /* Incantation of Vulnerability Other */
     , (451600199,  4643,   2.06) /* Incantation of Drain Health Other */
     , (451600199,  5386,   2.06) /* Incantation of Weakening Curse */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451600199, 2, 21159,  1,93,    0, False) /* Create Covenant Tassets (21159) for Wield */
     , (451600199, 2, 21152,  1,93,    0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (451600199, 2, 21157,  1,93,    0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (451600199, 2, 21151,  1,93,    0, False) /* Create Covenant Bracers (21151) for Wield */
     , (451600199, 2, 21153,  1,93,    0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (451600199, 2, 21154,  1,93,    0, False) /* Create Covenant Girth (21154) for Wield */
     , (451600199, 2, 21155,  1,93,    0, False) /* Create Covenant Greaves (21155) for Wield */
     , (451600199, 2, 21150,  1,93,    0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (451600199, 2, 87038,  1,93,    0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (451600199, 2,  2597,  1,92,    0, False) /* Create Flared Pants (2597) for Wield */
     , (451600199, 2,  2588,  1,14,    0, False) /* Create Flared Shirt (2588) for Wield */
     , (451600199, 9,361848,  1, 0, 0.04, False) /* Create Golem Burial Ground Shard (361848) for ContainTreasure */
     , (451600199, 9,     0,  0, 0, 0.96, False) /* Create nothing for ContainTreasure */;

