DELETE FROM `weenie` WHERE `class_Id` = 490256;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490256, 'ace490256-Drudgeaviatorisland', 10, '2022-12-28 05:57:21') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490256,   1,         16) /* ItemType - Creature */
     , (490256,   2,         3) /* CreatureType - Virindi */
     , (490256,   6,         -1) /* ItemsCapacity */
	 , (490256,   3,          16) /* PaletteTemplate - Brown */
     , (490256,   7,         -1) /* ContainersCapacity */
     , (490256,  16,          1) /* ItemUseable - No */
     , (490256,  25,        300) /* Level */
	 , (490256,  81,          1) /* MaxGeneratedObjects */
     , (490256,  82,          1 ) /* InitGeneratedObjects */
     , (490256,  68,          3) /* TargetingTactic - Random, Focused */
     , (490256,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (490256, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490256, 146,    5000000) /* XpOverride */
     , (490256, 307,         20) /* DamageRating */
	 , (490256, 386,         20) /* Overpower */
     , (490256, 332,        280) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490256,   1, True ) /* Stuck */
     , (490256,   6, False) /* AiUsesMana */
     , (490256,  11, False) /* IgnoreCollisions */
     , (490256,  12, True ) /* ReportCollisions */
     , (490256,  13, False) /* Ethereal */
     , (490256,  14, True ) /* GravityStatus */
     , (490256,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490256,   1,       5) /* HeartbeatInterval */
     , (490256,   2,       0) /* HeartbeatTimestamp */
     , (490256,   3,     0.6) /* HealthRate */
     , (490256,   4,     0.5) /* StaminaRate */
     , (490256,   5,       2) /* ManaRate */
     , (490256,  12,       0) /* Shade */
     , (490256,  13,     0.9) /* ArmorModVsSlash */
     , (490256,  14,       1) /* ArmorModVsPierce */
     , (490256,  15,       1) /* ArmorModVsBludgeon */
     , (490256,  16,       1) /* ArmorModVsCold */
     , (490256,  17,     0.9) /* ArmorModVsFire */
     , (490256,  18,     0.9) /* ArmorModVsAcid */
     , (490256,  19,       1) /* ArmorModVsElectric */
     , (490256,  31,      40) /* VisualAwarenessRange */
	 , (490256,  39,     1.4) /* DefaultScale */
	 , (490256,  55,      70) /* HomeRadius */
     , (490256,  34,       1) /* PowerupTime */
     , (490256,  36,       1) /* ChargeSpeed */
     , (490256,  64,     0.7) /* ResistSlash */
     , (490256,  65,     0.6) /* ResistPierce */
     , (490256,  66,     0.6) /* ResistBludgeon */
     , (490256,  67,     0.7) /* ResistFire */
     , (490256,  68,     0.4) /* ResistCold */
     , (490256,  69,     0.7) /* ResistAcid */
     , (490256,  70,     0.4) /* ResistElectric */
     , (490256,  80,       3) /* AiUseMagicDelay */
     , (490256, 104,      40) /* ObviousRadarRange */
     , (490256, 122,       2) /* AiAcquireHealth */
     , (490256, 125,       1) /* ResistHealthDrain */
     , (490256, 165,       1) /* ArmorModVsNether */
     , (490256, 166,       1) /* ResistNether */
	 , (490256,  41,     180) /* RegenerationInterval */
     , (490256,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490256,   1, 'Drudge Aviator Captain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490256,   1, 0x020007DD) /* Setup */
     , (490256,   2, 0x09000008) /* MotionTable */
     , (490256,   3, 0x20000007) /* SoundTable */
     , (490256,   4, 0x30000004) /* CombatTable */
     , (490256,   6, 0x04000F6C) /* PaletteBase */
     , (490256,   7, 0x10000486) /* ClothingBase */
     , (490256,   8, 0x06001035) /* Icon */
     , (490256,  22, 0x3400001A) /* PhysicsEffectTable */
     , (490256,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490256,   1, 350, 0, 0) /* Strength */
     , (490256,   2, 350, 0, 0) /* Endurance */
     , (490256,   3, 320, 0, 0) /* Quickness */
     , (490256,   4, 380, 0, 0) /* Coordination */
     , (490256,   5, 480, 0, 0) /* Focus */
     , (490256,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490256,   1,  95000, 0, 0, 50000) /* MaxHealth */
     , (490256,   3,  30000, 0, 0, 50) /* MaxStamina */
     , (490256,   5,  48000, 0, 0, 30) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490256,  6, 0, 2, 0, 550, 0, 0) /* MeleeDefense        Trained */
     , (490256,  7, 0, 2, 0, 440, 0, 0) /* MissileDefense      Trained */
     , (490256, 15, 0, 2, 0, 370, 0, 0) /* MagicDefense        Trained */
     , (490256, 16, 0, 2, 0, 430, 0, 0) /* ManaConversion      Trained */
     , (490256, 31, 0, 2, 0, 430, 0, 0) /* CreatureEnchantment Trained */
     , (490256, 33, 0, 2, 0, 430, 0, 0) /* LifeMagic           Trained */
     , (490256, 34, 0, 2, 0, 430, 0, 0) /* WarMagic            Trained */
     , (490256, 41, 0, 2, 0, 450, 0, 0) /* TwoHandedCombat     Trained */
     , (490256, 43, 0, 2, 0, 430, 0, 0) /* VoidMagic           Trained */
     , (490256, 44, 0, 2, 0, 450, 0, 0) /* HeavyWeapons        Trained */
     , (490256, 45, 0, 2, 0, 450, 0, 0) /* LightWeapons        Trained */
     , (490256, 46, 0, 2, 0, 450, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490256,  0, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490256,  1, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490256,  2, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490256,  3, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490256,  4, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490256,  5, 64, 200,  0.5,  650,  585,  650,  650,  650,  585,  585,  650,  650, 2,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0) /* Hand */
     , (490256,  6, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490256,  7, 64,  0,    0,  650,  585,  650,  650,  650,  585,  585,  650,  650, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490256,  8, 64, 200,  0.5,  650,  585,  650,  650,  650,  585,  585,  650,  650, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490256,  3940,   2.21)  /* Exsanguinating Wave */
     , (490256,  3941,  2.266)  /* Heavy Lightning Ring */
     , (490256,  3989,  2.414)  /* Dark Lightning */
     , (490256,  4312,  2.206)  /* Incantation of Imperil Other */
     , (490256,  4483,  2.259)  /* Incantation of Lightning Vulnerability Other */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490256, -1, 490162, 1800, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Blighted Coral Golem (40153) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490256, 1, 490175,  1, 0, 0, False) /* Create Bonecrunch's Chest Key (35592) for Contain */;