DELETE FROM `weenie` WHERE `class_Id` = 490520;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490520, 'ace490520-FireMercenary', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490520,   1,         16) /* ItemType - Creature */
     , (490520,   2,         38) /* CreatureType - FireElemental */
     , (490520,   3,         14) /* PaletteTemplate - Red */
     , (490520,   6,         -1) /* ItemsCapacity */
     , (490520,   7,         -1) /* ContainersCapacity */
     , (490520,  16,          1) /* ItemUseable - No */
     , (490520,  25,        200) /* Level */
     , (490520,  40,          1) /* CombatMode - NonCombat */
     , (490520,  68,         64) /* TargetingTactic - Nearest */
     , (490520,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490520, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490520, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490520,   1, True ) /* Stuck */
     , (490520,  12, True ) /* ReportCollisions */
     , (490520,  13, True ) /* Ethereal */
     , (490520,  14, True ) /* GravityStatus */
	 , (490520,  15, True ) /* LightsStatus */
     , (490520,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490520,  12,     0.5) /* Shade */
     , (490520,  31,      25) /* VisualAwarenessRange */
     , (490520,  77,       1) /* PhysicsScriptIntensity */
	 , (490520,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490520,   1, 'Fire Mercenary') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490520,   1, 0x02000D5E) /* Setup */
     , (490520,   2, 0x0900008F) /* MotionTable */
     , (490520,   3, 0x20000056) /* SoundTable */
     , (490520,   4, 0x30000000) /* CombatTable */
     , (490520,   6, 0x0400007E) /* PaletteBase */
     , (490520,   7, 0x100003CF) /* ClothingBase */
     , (490520,   8, 0x06001B42) /* Icon */
     , (490520,  22, 0x34000070) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490520,   1, 210, 0, 0) /* Strength */
     , (490520,   2, 240, 0, 0) /* Endurance */
     , (490520,   3, 250, 0, 0) /* Quickness */
     , (490520,   4, 160, 0, 0) /* Coordination */
     , (490520,   5, 170, 0, 0) /* Focus */
     , (490520,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490520,   1,  3250, 0, 0, 3370) /* MaxHealth */
     , (490520,   3,  2500, 0, 0, 2740) /* MaxStamina */
     , (490520,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490520,  6, 0, 3, 0, 670, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490520,  7, 0, 3, 0, 670, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490520, 15, 0, 3, 0, 670, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490520, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490520, 45, 0, 3, 0, 670, 0, 313.36962890625) /* LightWeapons        Specialized */
     , (490520, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490520,  0, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490520,  1, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490520,  2, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490520,  3, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490520,  4, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490520,  5, 16, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490520,  6, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490520,  7, 16,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490520,  8, 16, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;