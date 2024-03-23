DELETE FROM `weenie` WHERE `class_Id` = 490261;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490261, 'ace490261-Venomousmoar', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490261,   1,         16) /* ItemType - Creature */
     , (490261,   2,         86) /* CreatureType - Moar */
     , (490261,   3,          23) /* PaletteTemplate - DeepGreen */
     , (490261,   6,         -1) /* ItemsCapacity */
     , (490261,   7,         -1) /* ContainersCapacity */
     , (490261,  16,          1) /* ItemUseable - No */
     , (490261,  25,        220) /* Level */
     , (490261,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490261, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490261, 146,    2400000) /* XpOverride */
	 , (490261, 386,         10) /* Overpower */
	 , (490261, 332,        200) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490261,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490261,   1,       5) /* HeartbeatInterval */
     , (490261,   2,       0) /* HeartbeatTimestamp */
     , (490261,   3,       2) /* HealthRate */
     , (490261,   4,       5) /* StaminaRate */
     , (490261,   5,       2) /* ManaRate */
     , (490261,  13,    0.65) /* ArmorModVsSlash */
     , (490261,  14,    0.85) /* ArmorModVsPierce */
     , (490261,  15,    0.85) /* ArmorModVsBludgeon */
     , (490261,  16,    0.65) /* ArmorModVsCold */
     , (490261,  17,    0.85) /* ArmorModVsFire */
     , (490261,  18,    0.65) /* ArmorModVsAcid */
     , (490261,  19,    0.75) /* ArmorModVsElectric */
     , (490261,  31,      18) /* VisualAwarenessRange */
     , (490261,  34,       1) /* PowerupTime */
     , (490261,  36,       1) /* ChargeSpeed */
     , (490261,  39,       2.5) /* DefaultScale */
     , (490261,  55,      60) /* HomeRadius */
     , (490261,  62,     1.5) /* WeaponOffense */
     , (490261,  64,     0.9) /* ResistSlash */
     , (490261,  65,    0.55) /* ResistPierce */
     , (490261,  66,     0.4) /* ResistBludgeon */
     , (490261,  67,     0.4) /* ResistFire */
     , (490261,  68,    0.85) /* ResistCold */
     , (490261,  69,    0.85) /* ResistAcid */
     , (490261,  70,       1) /* ResistElectric */
     , (490261,  71,       1) /* ResistHealthBoost */
     , (490261,  72,       1) /* ResistStaminaDrain */
     , (490261,  73,       1) /* ResistStaminaBoost */
     , (490261,  74,       1) /* ResistManaDraain */
     , (490261,  75,       1) /* ResistManaBoost */
     , (490261,  77,       1) /* PhysicsScriptIntensity */
     , (490261, 104,      10) /* ObviousRadarRange */
     , (490261, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490261,   1, 'Venomous Moar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490261,   1, 0x0200149F) /* Setup */
     , (490261,   2, 0x09000192) /* MotionTable */
     , (490261,   3, 0x2000006A) /* SoundTable */
     , (490261,   4, 0x30000023) /* CombatTable */
     , (490261,   6, 0x04001ECC) /* PaletteBase */
     , (490261,   7, 0x10000638) /* ClothingBase */
     , (490261,   8, 0x06001ED1) /* Icon */
     , (490261,  22, 0x340000B7) /* PhysicsEffectTable */
     , (490261,  30,         86) /* PhysicsScript - BreatheAcid */
     , (490261,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490261,   1, 360, 0, 0) /* Strength */
     , (490261,   2, 340, 0, 0) /* Endurance */
     , (490261,   3, 360, 0, 0) /* Quickness */
     , (490261,   4, 360, 0, 0) /* Coordination */
     , (490261,   5, 320, 0, 0) /* Focus */
     , (490261,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490261,   1,  5300, 0, 0, 5420) /* MaxHealth */
     , (490261,   3,  1100, 0, 0, 1340) /* MaxStamina */
     , (490261,   5,   100, 0, 0, 320) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490261,  6, 0, 3, 0, 280, 0, 0) /* MeleeDefense        Specialized */
     , (490261,  7, 0, 3, 0, 367, 0, 0) /* MissileDefense      Specialized */
     , (490261, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense        Specialized */
     , (490261, 20, 0, 3, 0, 420, 0, 0) /* Deception           Specialized */
     , (490261, 33, 0, 3, 0, 350, 0, 0) /* LifeMagic           Specialized */
     , (490261, 34, 0, 3, 0, 350, 0, 0) /* WarMagic            Specialized */
     , (490261, 44, 0, 3, 0, 530, 0, 0) /* HeavyWeapons        Specialized */
     , (490261, 45, 0, 3, 0, 530, 0, 0) /* LightWeapons        Specialized */
     , (490261, 46, 0, 3, 0, 530, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490261,  0,  0, 100, 0.75,  420,  273,  357,  357,  273,  357,  273,  315,    0, 2,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (490261, 10,  2, 300,  0.3,  400,  260,  340,  340,  260,  340,  260,  300,    0, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (490261, 13,  2, 300,  0.3,  400,  260,  340,  340,  260,  340,  260,  300,    0, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (490261, 16,  2, 300, 0.75,  420,  273,  357,  357,  273,  357,  273,  315,    0, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.8,  0.6,  0.3,  0.8,  0.6,  0.3) /* Torso */
     , (490261, 17,  2, 300,  0.9,  420,  273,  357,  357,  273,  357,  273,  315,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */
     , (490261, 22, 16, 350,  0.4,  425,  276,  361,  361,  276,  361,  276,  319,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490261, 9, 34277,  1, 0, 0.10, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */
     , (490261, 9,     0,  0, 0, 0.90, False) /* Create nothing for ContainTreasure */;
