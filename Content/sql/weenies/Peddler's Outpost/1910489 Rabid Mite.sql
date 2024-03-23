DELETE FROM `weenie` WHERE `class_Id` = 1910489;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1910489, 'rabidmite', 10, '2019-09-13 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1910489,   1,         16) /* ItemType - Creature */
     , (1910489,   2,          7) /* CreatureType - Mite */
     , (1910489,   3,          5) /* PaletteTemplate - Brown */
     , (1910489,   6,         -1) /* ItemsCapacity */
     , (1910489,   7,         -1) /* ContainersCapacity */
     , (1910489,  16,          1) /* ItemUseable - No */
     , (1910489,  25,        335) /* Level */
     , (1910489,  27,          0) /* ArmorType - None */
     , (1910489,  40,          2) /* CombatMode - Melee */
     , (1910489,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (1910489,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (1910489, 101,        129) /* AiAllowedCombatStyle - Unarmed, ThrownWeapon */
     , (1910489, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (1910489, 146,    5000000) /* XpOverride */
	 , (1910489, 332,        200) /* LuminanceAward */
	 , (1910489, 386,         20) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1910489,   1, True ) /* Stuck */
     , (1910489,  11, False) /* IgnoreCollisions */
     , (1910489,  12, True ) /* ReportCollisions */
     , (1910489,  13, False) /* Ethereal */
     , (1910489,  14, True ) /* GravityStatus */
     , (1910489,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1910489,   1,       5) /* HeartbeatInterval */
     , (1910489,   2,       0) /* HeartbeatTimestamp */
     , (1910489,   3, 0.150000005960464) /* HealthRate */
     , (1910489,   4,       5) /* StaminaRate */
     , (1910489,   5,       2) /* ManaRate */
     , (1910489,  12,     0.5) /* Shade */
     , (1910489,  13, 0.85) /* ArmorModVsSlash */
     , (1910489,  14,    0.85) /* ArmorModVsPierce */
     , (1910489,  15,    0.85) /* ArmorModVsBludgeon */
     , (1910489,  16,       1) /* ArmorModVsCold */
     , (1910489,  17,       1) /* ArmorModVsFire */
     , (1910489,  18,       1) /* ArmorModVsAcid */
     , (1910489,  19,       1) /* ArmorModVsElectric */
     , (1910489,  31,      16) /* VisualAwarenessRange */
     , (1910489,  34,       2) /* PowerupTime */
     , (1910489,  36,       1) /* ChargeSpeed */
     , (1910489,  39,     2) /* DefaultScale */
     , (1910489,  64, 1) /* ResistSlash */
     , (1910489,  65, 1) /* ResistPierce */
     , (1910489,  66, 1) /* ResistBludgeon */
     , (1910489,  67, 1) /* ResistFire */
     , (1910489,  68,    0.75) /* ResistCold */
     , (1910489,  69, 1) /* ResistAcid */
     , (1910489,  70,    0.75) /* ResistElectric */
     , (1910489,  71,       1) /* ResistHealthBoost */
     , (1910489,  72,       1) /* ResistStaminaDrain */
     , (1910489,  73,       1) /* ResistStaminaBoost */
     , (1910489,  74,       1) /* ResistManaDrain */
     , (1910489,  75,       1) /* ResistManaBoost */
     , (1910489, 104,      10) /* ObviousRadarRange */
     , (1910489, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1910489,   1, 'Rabid Mite') /* Name */
   , (1910489,  45, 'MiteKillTask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1910489,   1,   33558656) /* Setup */
     , (1910489,   2,  150994955) /* MotionTable */
     , (1910489,   3,  536870923) /* SoundTable */
     , (1910489,   4,  805306384) /* CombatTable */
     , (1910489,   6,   67115137) /* PaletteBase */
     , (1910489,   7,  268436816) /* ClothingBase */
     , (1910489,   8,  100667448) /* Icon */
     , (1910489,  22,  872415263) /* PhysicsEffectTable */
     , (1910489,  35,    10002) /* DeathTreasureType - Loot Tier: 8+ */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (1910489,   1, 360, 0, 0) /* Strength */
     , (1910489,   2, 400, 0, 0) /* Endurance */
     , (1910489,   3, 380, 0, 0) /* Quickness */
     , (1910489,   4, 360, 0, 0) /* Coordination */
     , (1910489,   5, 120, 0, 0) /* Focus */
     , (1910489,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (1910489,   1,   15000, 0, 0, 15000) /* MaxHealth */
     , (1910489,   3,   5400, 0, 0, 5800) /* MaxStamina */
     , (1910489,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (1910489,  6, 0, 3, 0, 390, 0, 0) /* MeleeDefense        Specialized */
     , (1910489,  7, 0, 3, 0, 390, 0, 0) /* MissileDefense      Specialized */
     , (1910489, 15, 0, 3, 0, 395, 0, 0) /* MagicDefense        Specialized */
     , (1910489, 20, 0, 3, 0,  20, 0, 0) /* Deception           Specialized */
     , (1910489, 22, 0, 3, 0,  70, 0, 0) /* Jump                Specialized */
     , (1910489, 24, 0, 3, 0, 150, 0, 0) /* Run                 Specialized */
     , (1910489, 45, 0, 3, 0, 560, 0, 0) /* LightWeapons        Specialized */
     , (1910489, 47, 0, 3, 0, 580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (1910489,  0,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (1910489,  1,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (1910489,  2,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (1910489,  3,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (1910489,  4,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (1910489,  5,  4, 480, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (1910489,  6,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (1910489,  7,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (1910489,  8,  4, 400, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (1910489, 9, 490244,  0, 0, 0.05, False) /* 4200028 Set Randomizer Morph Gem */
	 , (1910489, 9,     0,  0, 0, 0.95, False)    /* Create nothing for ContainTreasure */;