DELETE FROM `weenie` WHERE `class_Id` = 490526;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490526, 'ace490526-TuskerMercenary', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490526,   1,         16) /* ItemType - Creature */
     , (490526,   2,          8) /* CreatureType - Tusker */
     , (490526,   3,         64) /* PaletteTemplate - OrangeBrown */
     , (490526,   6,         -1) /* ItemsCapacity */
     , (490526,   7,         -1) /* ContainersCapacity */
     , (490526,  16,          1) /* ItemUseable - No */
     , (490526,  25,        200) /* Level */
     , (490526,  40,          1) /* CombatMode - NonCombat */
     , (490526,  68,         64) /* TargetingTactic - Nearest */
     , (490526,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490526, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490526, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490526,   1, True ) /* Stuck */
     , (490526,  12, True ) /* ReportCollisions */
     , (490526,  13, True ) /* Ethereal */
     , (490526,  14, True ) /* GravityStatus */
	 , (490526,  15, True ) /* LightsStatus */
     , (490526,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490526,  12,     0.5) /* Shade */
     , (490526,  31,      25) /* VisualAwarenessRange */
     , (490526,  77,       1) /* PhysicsScriptIntensity */
	 , (490526,  39,     1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490526,   1, 'Tusker Mercenary') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490526,   1, 0x02000964) /* Setup */
     , (490526,   2, 0x0900000C) /* MotionTable */
     , (490526,   3, 0x20000011) /* SoundTable */
     , (490526,   4, 0x3000000B) /* CombatTable */
     , (490526,   6, 0x0400102F) /* PaletteBase */
     , (490526,   7, 0x1000025F) /* ClothingBase */
     , (490526,   8, 0x06001033) /* Icon */
     , (490526,  22, 0x34000027) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490526,   1, 210, 0, 0) /* Strength */
     , (490526,   2, 240, 0, 0) /* Endurance */
     , (490526,   3, 250, 0, 0) /* Quickness */
     , (490526,   4, 160, 0, 0) /* Coordination */
     , (490526,   5, 170, 0, 0) /* Focus */
     , (490526,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490526,   1,  3250, 0, 0, 3370) /* MaxHealth */
     , (490526,   3,  2500, 0, 0, 2740) /* MaxStamina */
     , (490526,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490526,  6, 0, 3, 0, 670, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490526,  7, 0, 3, 0, 670, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490526, 15, 0, 3, 0, 670, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490526, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490526, 45, 0, 3, 0, 670, 0, 313.36962890625) /* LightWeapons        Specialized */
     , (490526, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490526,  0, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490526,  1, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490526,  2, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490526,  3, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490526,  4, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490526,  5, 4, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490526,  6, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490526,  7, 4,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490526,  8, 4, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;