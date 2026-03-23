DELETE FROM `weenie` WHERE `class_Id` = 451601630;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451601630, 'T9_zombielichlord', 10, '2026-03-23 10:16:42') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451601630,   1,         16) /* ItemType - Creature */
     , (451601630,   2,         14) /* CreatureType - Undead */
     , (451601630,   3,         68) /* PaletteTemplate - BlueSlime */
     , (451601630,   6,         -1) /* ItemsCapacity */
     , (451601630,   7,         -1) /* ContainersCapacity */
     , (451601630,  16,          1) /* ItemUseable - No */
     , (451601630,  25,        666) /* Level */
     , (451601630,  27,          0) /* ArmorType - None */
     , (451601630,  40,          1) /* CombatMode - NonCombat */
     , (451601630,  68,          3) /* TargetingTactic - Random, Focused */
     , (451601630,  81,          1) /* MaxGeneratedObjects */
     , (451601630,  82,          1) /* InitGeneratedObjects */
     , (451601630,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451601630, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451601630, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451601630, 140,          1) /* AiOptions - CanOpenDoors */
     , (451601630, 146,   60000000) /* XpOverride */
     , (451601630, 307,        325) /* DamageRating */
     , (451601630, 308,        125) /* DamageResistRating */
     , (451601630, 332,       6000) /* LuminanceAward */
     , (451601630, 386,         35) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, True ) /* Stuck */
     , (451601630,   6, True ) /* AiUsesMana */
     , (451601630,  11, False) /* IgnoreCollisions */
     , (451601630,  12, True ) /* ReportCollisions */
     , (451601630,  13, False) /* Ethereal */
     , (451601630,  14, True ) /* GravityStatus */
     , (451601630,  19, True ) /* Attackable */
     , (451601630,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451601630,   1,       5) /* HeartbeatInterval */
     , (451601630,   2,       0) /* HeartbeatTimestamp */
     , (451601630,   3,    0.45) /* HealthRate */
     , (451601630,   4,     0.5) /* StaminaRate */
     , (451601630,   5,       2) /* ManaRate */
     , (451601630,  12,     0.5) /* Shade */
     , (451601630,  13,     0.8) /* ArmorModVsSlash */
     , (451601630,  14,    0.42) /* ArmorModVsPierce */
     , (451601630,  15,    0.62) /* ArmorModVsBludgeon */
     , (451601630,  16,    0.38) /* ArmorModVsCold */
     , (451601630,  17,     0.5) /* ArmorModVsFire */
     , (451601630,  18,    0.62) /* ArmorModVsAcid */
     , (451601630,  19,     0.7) /* ArmorModVsElectric */
     , (451601630,  31,      18) /* VisualAwarenessRange */
     , (451601630,  34,     1.1) /* PowerupTime */
     , (451601630,  36,       1) /* ChargeSpeed */
     , (451601630,  43,       3) /* GeneratorRadius */
     , (451601630,  64,       1) /* ResistSlash */
     , (451601630,  65,    0.52) /* ResistPierce */
     , (451601630,  66,    0.75) /* ResistBludgeon */
     , (451601630,  67,       1) /* ResistFire */
     , (451601630,  68,     0.2) /* ResistCold */
     , (451601630,  69,    0.75) /* ResistAcid */
     , (451601630,  70,    0.86) /* ResistElectric */
     , (451601630,  71,       1) /* ResistHealthBoost */
     , (451601630,  72,       1) /* ResistStaminaDrain */
     , (451601630,  73,       1) /* ResistStaminaBoost */
     , (451601630,  74,       1) /* ResistManaDrain */
     , (451601630,  75,       1) /* ResistManaBoost */
     , (451601630,  80,       3) /* AiUseMagicDelay */
     , (451601630, 104,      10) /* ObviousRadarRange */
     , (451601630, 122,       2) /* AiAcquireHealth */
     , (451601630, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, 'Dread Lich Lord') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451601630,   1, 0x020016A1) /* Setup */
     , (451601630,   2, 0x09000017) /* MotionTable */
     , (451601630,   3, 0x20000016) /* SoundTable */
     , (451601630,   4, 0x30000000) /* CombatTable */
     , (451601630,   6, 0x04000742) /* PaletteBase */
     , (451601630,   7, 0x10000066) /* ClothingBase */
     , (451601630,   8, 0x06001226) /* Icon */
     , (451601630,  22, 0x34000028) /* PhysicsEffectTable */
     , (451601630,  32,        249) /* WieldedTreasureType */
     , (451601630,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451601630,   1,1200, 0, 0) /* Strength */
     , (451601630,   2,2400, 0, 0) /* Endurance */
     , (451601630,   3, 850, 0, 0) /* Quickness */
     , (451601630,   4,1400, 0, 0) /* Coordination */
     , (451601630,   5,1600, 0, 0) /* Focus */
     , (451601630,   6,1600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451601630,   1, 34800, 0, 0,36000) /* MaxHealth */
     , (451601630,   3, 27600, 0, 0,30000) /* MaxStamina */
     , (451601630,   5, 28400, 0, 0,30000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451601630,  6, 0, 3, 0, 100, 0, 0) /* MeleeDefense         Specialized */
     , (451601630,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense       Specialized */
     , (451601630, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (451601630, 15, 0, 3, 0,  63, 0, 0) /* MagicDefense         Specialized */
     , (451601630, 20, 0, 3, 0, 400, 0, 0) /* Deception            Specialized */
     , (451601630, 31, 0, 3, 0, 400, 0, 0) /* CreatureEnchantment  Specialized */
     , (451601630, 33, 0, 3, 0, 400, 0, 0) /* LifeMagic            Specialized */
     , (451601630, 34, 0, 3, 0,1000, 0, 0) /* WarMagic             Specialized */
     , (451601630, 44, 0, 3, 0,6125, 0, 0) /* HeavyWeapons        Specialized */
     , (451601630, 45, 0, 3, 0,6125, 0, 0) /* LightWeapons        Specialized */
     , (451601630, 46, 0, 3, 0,6125, 0, 0) /* FinesseWeapons      Specialized */
     , (451601630, 47, 0, 3, 0,3980, 0, 0) /* MissileWeapons       Specialized */
     , (451601630, 48, 0, 3, 0, 125, 0, 0) /* Shield              Specialized */
     , (451601630, 51, 0, 3, 0,   0, 0, 0) /* SneakAttack          Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451601630,  0,  4,  0,    0,  363,  290,  151,  224,  138,  181,  224,  254,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head - Bludgeon */
     , (451601630,  1,  4,  0,    0,  396,  316,  165,  244,  151,  198,  244,  277,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest - Bludgeon */
     , (451601630,  2,  4,  0,    0,  396,  316,  165,  244,  151,  198,  244,  277,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen - Bludgeon */
     , (451601630,  3,  4,  0,    0,  363,  290,  151,  224,  138,  181,  224,  254,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm - Bludgeon */
     , (451601630,  4,  4,  0,    0,  396,  316,  165,  244,  151,  198,  244,  277,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm - Bludgeon */
     , (451601630,  5,  4,  2, 0.75,  429,  343,  181,  267,  161,  214,  267,  300,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand - Bludgeon */
     , (451601630,  6,  4,  0,    0,  429,  343,  181,  267,  161,  214,  267,  300,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg - Bludgeon */
     , (451601630,  7,  4,  0,    0,  429,  343,  181,  267,  161,  214,  267,  300,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg - Bludgeon */
     , (451601630,  8,  4,  3, 0.75,  429,  343,  181,  267,  161,  214,  267,  300,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot - Bludgeon */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451601630,  4433,   2.04) /* Incantation of Acid Stream */
     , (451601630,  4455,   2.04) /* Incantation of Shock Wave */
     , (451601630,  4447,   2.04) /* Incantation of Frost Bolt */
     , (451601630,  4451,   2.04) /* Incantation of Lightning Bolt */
     , (451601630,  4439,   2.04) /* Incantation of Flame Bolt */
     , (451601630,  4443,   2.04) /* Incantation of Force Bolt */
     , (451601630,  4457,   2.04) /* Incantation of Whirling Blade */
     , (451601630,  4431,   2.04) /* Incantation of Acid Blast */
     , (451601630,  4446,   2.04) /* Incantation of Frost Blast */
     , (451601630,  4450,   2.04) /* Incantation of Lightning Blast */
     , (451601630,  4438,   2.04) /* Incantation of Flame Blast */
     , (451601630,  4643,   2.04) /* Incantation of Drain Health Other */;

