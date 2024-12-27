DELETE FROM `weenie` WHERE `class_Id` = 490371;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490371, 'ace490371-virindi', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490371,   1,         16) /* ItemType - Creature */
     , (490371,   2,         19) /* CreatureType - Ghost */
     , (490371,   6,         -1) /* ItemsCapacity */
     , (490371,   7,         -1) /* ContainersCapacity */
     , (490371,  16,          1) /* ItemUseable - No */
     , (490371,  25,        200) /* Level */
     , (490371,  68,         64) /* TargetingTactic - Nearest */
     , (490371,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490371, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490371, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490371,   1, True ) /* Stuck */
     , (490371,  12, True ) /* ReportCollisions */
     , (490371,  13, True ) /* Ethereal */
     , (490371,  14, True ) /* GravityStatus */
     , (490371,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490371,  31,      25) /* VisualAwarenessRange */
     , (490371,  39,     1.1) /* DefaultScale */
     , (490371,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490371,   1, 'Virindi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490371,   1, 0x020009F6) /* Setup */
     , (490371,   2, 0x09000028) /* MotionTable */
     , (490371,   3, 0x20000012) /* SoundTable */
     , (490371,   4, 0x3000000D) /* CombatTable */
     , (490371,   6, 0x040009B2) /* PaletteBase */
     , (490371,   7, 0x100000C1) /* ClothingBase */
     , (490371,   8, 0x06001227) /* Icon */
     , (490371,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490371,   1, 210, 0, 0) /* Strength */
     , (490371,   2, 240, 0, 0) /* Endurance */
     , (490371,   3, 250, 0, 0) /* Quickness */
     , (490371,   4, 160, 0, 0) /* Coordination */
     , (490371,   5, 170, 0, 0) /* Focus */
     , (490371,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490371,   1,  1250, 0, 0, 1370) /* MaxHealth */
     , (490371,   3,  1500, 0, 0, 1740) /* MaxStamina */
     , (490371,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490371,  6, 0, 3, 0, 570, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490371,  7, 0, 3, 0, 570, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490371, 15, 0, 3, 0, 570, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490371, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490371, 45, 0, 3, 0, 570, 0, 313.36962890625) /* LightWeapons        Specialized */
     , (490371, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490371,  0, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490371,  1, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490371,  2, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490371,  3, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23,  0.3,    0, 0.23,  0.3,    0, 0.23,  0.3,    0, 0.23,  0.3,    0) /* UpperArm */
     , (490371,  4, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490371,  5, 1, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490371,  17, 1, 925, 0.75,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Tail */;

