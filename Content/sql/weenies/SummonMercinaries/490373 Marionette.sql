DELETE FROM `weenie` WHERE `class_Id` = 490373;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490373, 'ace490373-Marionette', 71, '2022-12-04 19:04:52') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490373,   1,         16) /* ItemType - Creature */
     , (490373,   2,         54) /* CreatureType - Ghost */
     , (490373,   6,         -1) /* ItemsCapacity */
     , (490373,   7,         -1) /* ContainersCapacity */
     , (490373,  16,          1) /* ItemUseable - No */
     , (490373,  25,        200) /* Level */
	 , (490373,  40,          1) /* CombatMode - NonCombat */
     , (490373,  68,         1) /* TargetingTactic - Nearest */
     , (490373,  93,       1036) /* PhysicsState - Ethereal, ReportCollisions, Gravity */
     , (490373, 133,          1) /* ShowableOnRadar - ShowNever */
     , (490373, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490373,   1, True ) /* Stuck */
     , (490373,  12, True ) /* ReportCollisions */
     , (490373,  13, True ) /* Ethereal */
     , (490373,  14, True ) /* GravityStatus */
	 , (490373,  15, True ) /* LightsStatus */
     , (490373,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490373,  31,      30) /* VisualAwarenessRange */
     , (490373,  39,     1.1) /* DefaultScale */
     , (490373,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490373,   1, 'Marionette') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490373,   1, 0x0200100E) /* Setup */
     , (490373,   2, 0x0900009B) /* MotionTable */
     , (490373,   3, 0x20000070) /* SoundTable */
     , (490373,   4, 0x3000002A) /* CombatTable */
     , (490373,   8, 0x06001FBC) /* Icon */
     , (490373,  22, 0x3400008C) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490373,   1, 210, 0, 0) /* Strength */
     , (490373,   2, 240, 0, 0) /* Endurance */
     , (490373,   3, 250, 0, 0) /* Quickness */
     , (490373,   4, 160, 0, 0) /* Coordination */
     , (490373,   5, 200, 0, 0) /* Focus */
     , (490373,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490373,   1,  3250, 0, 0, 3370) /* MaxHealth */
     , (490373,   3,  1500, 0, 0, 1740) /* MaxStamina */
     , (490373,   5,   900, 0, 0, 1070) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490373,  6, 0, 3, 0, 570, 0, 313.36962890625) /* MeleeDefense        Specialized */
     , (490373,  7, 0, 3, 0, 570, 0, 313.36962890625) /* MissileDefense      Specialized */
     , (490373, 15, 0, 3, 0, 570, 0, 313.36962890625) /* MagicDefense        Specialized */
     , (490373, 20, 0, 3, 0, 570, 0, 313.36962890625) /* Deception           Specialized */
     , (490373, 33, 0, 3, 0, 570, 0, 313.36962890625) /*  Life Magic Specialized */
     , (490373, 51, 0, 3, 0, 570, 0, 313.36962890625) /* SneakAttack         Specialized */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490373,    4312,   3.0)  /* Incantation of Imperil Other */;


INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490373,  0, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490373,  16, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Torso */
     , (490373,  21, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Wings */
     , (490373,  24, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 1, 0.23,  0.3,    0, 0.23,  0.3,    0, 0.23,  0.3,    0, 0.23,  0.3,    0) /* UpperTentacle */
     , (490373,  25, 1,  0,    0,  570,  570,  570,  570,  570,  570,  570,  570,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerTentacle */;


