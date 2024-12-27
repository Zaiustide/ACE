DELETE FROM `weenie` WHERE `class_Id` = 490501;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490501, 'ace490501-Void Lord', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490501,   1,         16) /* ItemType - Creature */
     , (490501,   2,         22) /* CreatureType - Shadow */
     , (490501,   6,         -1) /* ItemsCapacity */
     , (490501,   7,         -1) /* ContainersCapacity */
     , (490501,  16,          1) /* ItemUseable - No */
     , (490501,  25,        200) /* Level */
	 , (490501,  40,        8) /* Combat Mode Magic */
     , (490501,  68,         64) /* TargetingTactic - Nearest */
	 , (490501, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (490501,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490501, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490501, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490501,   1, True ) /* Stuck */
     , (490501,  12, True ) /* ReportCollisions */
     , (490501,  13, True ) /* Ethereal */
     , (490501,  14, True ) /* GravityStatus */
     , (490501,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490501,  31,      25) /* VisualAwarenessRange */
     , (490501,  39,     1.3) /* DefaultScale */
     , (490501,  77,       1) /* PhysicsScriptIntensity */
     , (490501,  12,     0.5) /* Shade */
     , (490501,  76,     0.5) /* Translucency */;


INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490501,   1, 'Void Lord') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490501,   1, 0x020013F1) /* Setup */
     , (490501,   2, 0x09000001) /* MotionTable */
     , (490501,   3, 0x20000001) /* SoundTable */
     , (490501,   4, 0x30000028) /* CombatTable */
     , (490501,   8, 0x06001BBE) /* Icon */
     , (490501,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490501,   1, 340, 0, 0) /* Strength */
     , (490501,   2, 400, 0, 0) /* Endurance */
     , (490501,   3, 340, 0, 0) /* Quickness */
     , (490501,   4, 380, 0, 0) /* Coordination */
     , (490501,   5, 500, 0, 0) /* Focus */
     , (490501,   6, 520, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490501,   1,  2000, 0, 0, 2200) /* MaxHealth */
     , (490501,   3,  2000, 0, 0, 2400) /* MaxStamina */
     , (490501,   5,  2000, 0, 0, 2520) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490501,  6, 0, 3, 0, 540, 0, 0) /* MeleeDefense        Specialized */
     , (490501,  7, 0, 3, 0, 606, 0, 0) /* MissileDefense      Specialized */
     , (490501, 14, 0, 3, 0, 320, 0, 0) /* ArcaneLore          Specialized */
     , (490501, 15, 0, 3, 0, 335, 0, 0) /* MagicDefense        Specialized */
     , (490501, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (490501, 31, 0, 3, 0, 165, 0, 0) /* CreatureEnchantment Specialized */
     , (490501, 33, 0, 3, 0, 570, 0, 0) /* LifeMagic           Specialized */
     , (490501, 43, 0, 3, 0, 575, 0, 0) /* VoidMagic           Specialized */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES  (490501,  5368,   3.02)  /* Incantation of Nether Arc VIII */;
	 
INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490501,  0,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490501,  1,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490501,  2,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490501,  3,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490501,  4,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490501,  5,  4, 400, 0.75,  580,  580,  812,  783,  812,  476,  986,  783,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490501,  6,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490501,  7,  4,  0,    0,  580,  580,  812,  783,  812,  476,  986,  783,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490501,  8,  4, 400, 0.75,  580,  580,  812,  783,  812,  476,  986,  783,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES  (490501, 2, 52744,  0, 0, 0, False) /* Nether Society Orb for Wield */;
