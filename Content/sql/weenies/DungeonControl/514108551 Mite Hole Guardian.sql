DELETE FROM `weenie` WHERE `class_Id` = 514108551;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (514108551, 'miteholedcguardian', 10, '2019-09-13 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (514108551,   1,         16) /* ItemType - Creature */
     , (514108551,   2,          7) /* CreatureType - Mite */
     , (514108551,   3,          5) /* PaletteTemplate - Brown */
     , (514108551,   6,         -1) /* ItemsCapacity */
     , (514108551,   7,         -1) /* ContainersCapacity */
     , (514108551,  16,          1) /* ItemUseable - No */
     , (514108551,  25,        335) /* Level */
     , (514108551,  27,          0) /* ArmorType - None */
     , (514108551,  40,          2) /* CombatMode - Melee */
     , (514108551,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (514108551,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (514108551, 101,        129) /* AiAllowedCombatStyle - Unarmed, ThrownWeapon */
     , (514108551, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (514108551, 146,   15000000) /* XpOverride */
	 , (514108551, 307,       1000) /* DamageRating */
	 , (514108551, 308,       1000) /* DamageResistRating */
	 , (514108551, 332,        200) /* LuminanceAward */
	 , (514108551, 386,         30) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (514108551,   1, True ) /* Stuck */
     , (514108551,  11, False) /* IgnoreCollisions */
     , (514108551,  12, True ) /* ReportCollisions */
     , (514108551,  13, True) /* Ethereal */
     , (514108551,  14, True ) /* GravityStatus */
     , (514108551,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (514108551,   1,       5) /* HeartbeatInterval */
     , (514108551,   2,       0) /* HeartbeatTimestamp */
     , (514108551,   3,       0) /* HealthRate */
     , (514108551,   4,       0) /* StaminaRate */
     , (514108551,   5,       0) /* ManaRate */
     , (514108551,  12,     1.5) /* Shade */
     , (514108551,  13,    0.85) /* ArmorModVsSlash */
     , (514108551,  14,    0.85) /* ArmorModVsPierce */
     , (514108551,  15,    0.85) /* ArmorModVsBludgeon */
     , (514108551,  16,       1) /* ArmorModVsCold */
     , (514108551,  17,       1) /* ArmorModVsFire */
     , (514108551,  18,       1) /* ArmorModVsAcid */
     , (514108551,  19,       1) /* ArmorModVsElectric */
     , (514108551,  31,      16) /* VisualAwarenessRange */
     , (514108551,  34,       1) /* PowerupTime */
     , (514108551,  36,       1) /* ChargeSpeed */
     , (514108551,  39,     2.5) /* DefaultScale */
     , (514108551,  64,       1) /* ResistSlash */
     , (514108551,  65,       1) /* ResistPierce */
     , (514108551,  66,       1) /* ResistBludgeon */
     , (514108551,  67,       1) /* ResistFire */
     , (514108551,  68,    0.75) /* ResistCold */
     , (514108551,  69,       1) /* ResistAcid */
     , (514108551,  70,    0.75) /* ResistElectric */
     , (514108551,  71,       1) /* ResistHealthBoost */
     , (514108551,  72,       1) /* ResistStaminaDrain */
     , (514108551,  73,       1) /* ResistStaminaBoost */
     , (514108551,  74,       1) /* ResistManaDrain */
     , (514108551,  75,       1) /* ResistManaBoost */
     , (514108551, 104,      30) /* ObviousRadarRange */
     , (514108551, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (514108551,   1, 'Mite Hole Guardian') /* Name */
   , (514108551,  45, 'MiteKillTask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (514108551,   1,   33558656) /* Setup */
     , (514108551,   2,  150994955) /* MotionTable */
     , (514108551,   3,  536870923) /* SoundTable */
     , (514108551,   4,  805306384) /* CombatTable */
     , (514108551,   6,   67115137) /* PaletteBase */
     , (514108551,   7,  268436816) /* ClothingBase */
     , (514108551,   8,  100667448) /* Icon */
     , (514108551,  22,  872415263) /* PhysicsEffectTable */
     , (514108551,  35,      10002) /* DeathTreasureType - Loot Tier: 8+ */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (514108551,   1, 360, 0, 0) /* Strength */
     , (514108551,   2, 400, 0, 0) /* Endurance */
     , (514108551,   3, 380, 0, 0) /* Quickness */
     , (514108551,   4, 360, 0, 0) /* Coordination */
     , (514108551,   5, 120, 0, 0) /* Focus */
     , (514108551,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (514108551,   1, 1500000, 0, 0, 1500000) /* MaxHealth */
     , (514108551,   3, 1500000, 0, 0, 1500000) /* MaxStamina */
     , (514108551,   5, 1500000, 0, 0, 1500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (514108551,  6, 0, 3, 0, 390, 0, 0) /* MeleeDefense        Specialized */
     , (514108551,  7, 0, 3, 0, 390, 0, 0) /* MissileDefense      Specialized */
     , (514108551, 15, 0, 3, 0, 395, 0, 0) /* MagicDefense        Specialized */
     , (514108551, 20, 0, 3, 0,  20, 0, 0) /* Deception           Specialized */
     , (514108551, 22, 0, 3, 0,  70, 0, 0) /* Jump                Specialized */
     , (514108551, 24, 0, 3, 0, 150, 0, 0) /* Run                 Specialized */
     , (514108551, 45, 0, 3, 0, 550, 0, 0) /* LightWeapons        Specialized */
     , (514108551, 47, 0, 3, 0, 580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (514108551,  0,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (514108551,  1,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (514108551,  2,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (514108551,  3,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (514108551,  4,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (514108551,  5,  4, 350, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (514108551,  6,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (514108551,  7,  4,  0,    0,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (514108551,  8,  4, 350, 0.35,  425,  276,  319,  319,  425,  425,  425,  425,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (514108551, 9, 490244,  0, 0, 0.05, False) /* 4200028 Set Randomizer Morph Gem */
	 , (514108551, 9,     0,  0, 0, 0.95, False)    /* Create nothing for ContainTreasure */;