DELETE FROM `weenie` WHERE `class_Id` = 490518;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490518, 'ace490518-acidmercenary', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490518,   1,         16) /* ItemType - Creature */
     , (490518,   2,         60) /* CreatureType - AcidElemental */
     , (490518,   3,          8) /* PaletteTemplate - Green */
     , (490518,   6,         -1) /* ItemsCapacity */
     , (490518,   7,         -1) /* ContainersCapacity */
     , (490518,  16,          1) /* ItemUseable - No */
     , (490518,  25,        200) /* Level */
     , (490518,  40,          1) /* CombatMode - NonCombat */
     , (490518,  68,         64) /* TargetingTactic - Nearest */
     , (490518,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490518, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490518, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490518,   1, True ) /* Stuck */
     , (490518,  12, True ) /* ReportCollisions */
     , (490518,  13, True ) /* Ethereal */
     , (490518,  14, True ) /* GravityStatus */
	 , (490518,  15, True ) /* LightsStatus */
     , (490518,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490518,  12,     0.5) /* Shade */
     , (490518,  31,      25) /* VisualAwarenessRange */
     , (490518,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490518,   1, 'Acid Mercenary') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490518,   1, 0x02000D5D) /* Setup */
     , (490518,   2, 0x0900008F) /* MotionTable */
     , (490518,   3, 0x2000005A) /* SoundTable */
     , (490518,   4, 0x30000000) /* CombatTable */
     , (490518,   6, 0x0400007E) /* PaletteBase */
     , (490518,   7, 0x100003CF) /* ClothingBase */
     , (490518,   8, 0x06002401) /* Icon */
     , (490518,  22, 0x34000075) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490518,   1, 210, 0, 0) /* Strength */
     , (490518,   2, 240, 0, 0) /* Endurance */
     , (490518,   3, 250, 0, 0) /* Quickness */
     , (490518,   4, 160, 0, 0) /* Coordination */
     , (490518,   5, 170, 0, 0) /* Focus */
     , (490518,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490518,   1,  3250, 0, 0, 3370) /* MaxHealth */
     , (490518,   3,  2500, 0, 0, 2740) /* MaxStamina */
     , (490518,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490518,  6, 0, 3, 0, 670, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490518,  7, 0, 3, 0, 670, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490518, 15, 0, 3, 0, 670, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490518, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490518, 45, 0, 3, 0, 670, 0, 313.36962890625) /* LightWeapons        Specialized */
     , (490518, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490518,  0, 32, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490518,  1, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490518,  2, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490518,  3, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490518,  4, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490518,  5, 32, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490518,  6, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490518,  7, 32,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490518,  8, 32, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
