DELETE FROM `weenie` WHERE `class_Id` = 490179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490179, 'ace490179-deathtail', 10, '2023-03-23 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490179,   1,         16) /* ItemType - Creature */
     , (490179,   2,         10) /* CreatureType - Rat */
	 , (490179,   3,         61) /* PaletteTemplate - White */
     , (490179,   6,         -1) /* ItemsCapacity */
     , (490179,   7,         -1) /* ContainersCapacity */
     , (490179,  16,          1) /* ItemUseable - No */
     , (490179,  25,        300) /* Level */
     , (490179,  40,          2) /* CombatMode - Melee */
     , (490179,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (490179,  81,          10)/* MaxGeneratedObjects */
     , (490179,  82,          10) /* InitGeneratedObjects */
     , (490179,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490179, 103,          3) /* GeneratorDestructionType - Kill */
     , (490179, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490179, 146,   18750000) /* XpOverride */
	 , (490179, 332,   1000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490179,   1, True ) /* Stuck */
     , (490179,  11, False) /* IgnoreCollisions */
     , (490179,  12, True ) /* ReportCollisions */
     , (490179,  13, False) /* Ethereal */
     , (490179,  14, True ) /* GravityStatus */
     , (490179,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490179,   1,       5) /* HeartbeatInterval */
     , (490179,   2,       0) /* HeartbeatTimestamp */
     , (490179,   3,   0.067) /* HealthRate */
     , (490179,   4,       5) /* StaminaRate */
     , (490179,   5,       2) /* ManaRate */
     , (490179,  13,    0.97) /* ArmorModVsSlash */
     , (490179,  14,    0.96) /* ArmorModVsPierce */
     , (490179,  15,    0.78) /* ArmorModVsBludgeon */
     , (490179,  16,    0.96) /* ArmorModVsCold */
     , (490179,  17,    0.97) /* ArmorModVsFire */
     , (490179,  18,    0.97) /* ArmorModVsAcid */
     , (490179,  19,    0.82) /* ArmorModVsElectric */
     , (490179,  31,      15) /* VisualAwarenessRange */
     , (490179,  34,       2) /* PowerupTime */
     , (490179,  36,       1) /* ChargeSpeed */
     , (490179,  39,       4) /* DefaultScale */
     , (490179,  41,      15) /* RegenerationInterval */
     , (490179,  43,       5) /* GeneratorRadius */
     , (490179,  64,     0.5) /* ResistSlash */
     , (490179,  65,     0.5) /* ResistPierce */
     , (490179,  66,    0.92) /* ResistBludgeon */
     , (490179,  67,     0.5) /* ResistFire */
     , (490179,  68,     0.5) /* ResistCold */
     , (490179,  69,     0.5) /* ResistAcid */
     , (490179,  70,    0.89) /* ResistElectric */
     , (490179,  76,     0) /* Translucency */
     , (490179,  77,       1) /* PhysicsScriptIntensity */
     , (490179, 104,      10) /* ObviousRadarRange */
     , (490179, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490179,   1, 'Razor Tooth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490179,   1, 0x0200003D) /* Setup */
     , (490179,   2, 0x0900000E) /* MotionTable */
     , (490179,   3, 0x2000000F) /* SoundTable */
     , (490179,   4, 0x30000013) /* CombatTable */
     , (490179,   6, 0x040001B4) /* PaletteBase */
     , (490179,   7, 0x10000063) /* ClothingBase */
     , (490179,   8, 0x0600103B) /* Icon */
     , (490179,  30,         86) /* PhysicsScript - BreatheAcid */
     , (490179,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490179,   1, 500, 0, 0) /* Strength */
     , (490179,   2, 500, 0, 0) /* Endurance */
     , (490179,   3, 380, 0, 0) /* Quickness */
     , (490179,   4, 400, 0, 0) /* Coordination */
     , (490179,   5, 200, 0, 0) /* Focus */
     , (490179,   6, 190, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490179,   1, 200000, 0, 0, 200250) /* MaxHealth */
     , (490179,   3,  5700, 0, 0, 6200) /* MaxStamina */
     , (490179,   5,  3500, 0, 0, 3690) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490179,  6, 0, 2, 0, 360, 0, 0) /* MeleeDefense        Trained */
     , (490179,  7, 0, 2, 0, 256, 0, 0) /* MissileDefense      Trained */
     , (490179, 15, 0, 2, 0, 156, 0, 0) /* MagicDefense        Trained */
     , (490179, 44, 0, 2, 0, 650, 0, 0) /* HeavyWeapons        Trained */
     , (490179, 45, 0, 2, 0, 650, 0, 0) /* LightWeapons        Trained */
     , (490179, 46, 0, 2, 0, 650, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490179,  0,  2, 320, 0.75,  430,  417,  413,  335,  413,  417,  417,  353,    0, 1, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0) /* Head */
     , (490179, 16,  4, 320, 0.75,  430,  417,  413,  335,  413,  417,  417,  353,    0, 2, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75) /* Torso */
     , (490179, 17,  4, 300,    0,  430,  417,  413,  335,  413,  417,  417,  353,    0, 3,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25) /* Tail */
     , (490179, 22, 32, 300,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */
, (490179, 9, 490239,  0, 0, 0, False) /* Create DeathTail's Fang (36171) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (490179, -1, 490257, 10, 10, 10, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Grave Rat (35100) (x4 up to max of 4) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
