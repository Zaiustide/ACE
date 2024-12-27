DELETE FROM `weenie` WHERE `class_Id` = 490522;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490522, 'ace490522-LightningMercinary', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490522,   1,         16) /* ItemType - Creature */
     , (490522,   2,         42) /* CreatureType - LightningElemental */
     , (490522,   3,         13) /* PaletteTemplate - Purple */
     , (490522,   6,         -1) /* ItemsCapacity */
     , (490522,   7,         -1) /* ContainersCapacity */
     , (490522,  16,          1) /* ItemUseable - No */
     , (490522,  25,        200) /* Level */
     , (490522,  40,          1) /* CombatMode - NonCombat */
     , (490522,  68,         64) /* TargetingTactic - Nearest */
     , (490522,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490522, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490522, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490522,   1, True ) /* Stuck */
     , (490522,  12, True ) /* ReportCollisions */
     , (490522,  13, True ) /* Ethereal */
     , (490522,  14, True ) /* GravityStatus */
	 , (490522,  15, True ) /* LightsStatus */
     , (490522,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490522,  12,     0.5) /* Shade */
     , (490522,  31,      25) /* VisualAwarenessRange */
     , (490522,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490522,   1, 'Lightning Mercinary') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490522,   1, 0x02000D60) /* Setup */
     , (490522,   2, 0x0900008F) /* MotionTable */
     , (490522,   3, 0x2000005A) /* SoundTable */
     , (490522,   4, 0x30000000) /* CombatTable */
     , (490522,   6, 0x0400007E) /* PaletteBase */
     , (490522,   7, 0x100003CF) /* ClothingBase */
     , (490522,   8, 0x06001C75) /* Icon */
     , (490522,  22, 0x34000075) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490522,   1, 210, 0, 0) /* Strength */
     , (490522,   2, 240, 0, 0) /* Endurance */
     , (490522,   3, 250, 0, 0) /* Quickness */
     , (490522,   4, 160, 0, 0) /* Coordination */
     , (490522,   5, 170, 0, 0) /* Focus */
     , (490522,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490522,   1,  3250, 0, 0, 3370) /* MaxHealth */
     , (490522,   3,  2500, 0, 0, 2740) /* MaxStamina */
     , (490522,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490522,  6, 0, 3, 0, 670, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490522,  7, 0, 3, 0, 670, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490522, 15, 0, 3, 0, 670, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490522, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490522, 45, 0, 3, 0, 670, 0, 313.36962890625) /* LightWeapons        Specialized */
     , (490522, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490522,  0, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490522,  1, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490522,  2, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490522,  3, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490522,  4, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490522,  5, 64, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490522,  6, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490522,  7, 64,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490522,  8, 64, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;