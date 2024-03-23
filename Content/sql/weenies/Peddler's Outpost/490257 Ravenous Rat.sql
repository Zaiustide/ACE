DELETE FROM `weenie` WHERE `class_Id` = 490257;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490257, 'ace490257-ravenousrat', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490257,   1,         16) /* ItemType - Creature */
     , (490257,   2,         10) /* CreatureType - Rat */
	 , (490257,   3,         61) /* PaletteTemplate - White */
     , (490257,   6,         -1) /* ItemsCapacity */
     , (490257,   7,         -1) /* ContainersCapacity */
     , (490257,  16,          1) /* ItemUseable - No */
     , (490257,  25,        220) /* Level */
     , (490257,  40,          2) /* CombatMode - Melee */
     , (490257,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (490257,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490257, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490257, 146,    2400000) /* XpOverride */
	 , (490257, 332,   100) /* LuminanceAward */
	 , (490257, 386,         10) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490257,   1, True ) /* Stuck */
     , (490257,  11, False) /* IgnoreCollisions */
     , (490257,  12, True ) /* ReportCollisions */
     , (490257,  13, False) /* Ethereal */
     , (490257,  14, True ) /* GravityStatus */
     , (490257,  19, True ) /* Attackable */
     , (490257,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490257,   1,       5) /* HeartbeatInterval */
     , (490257,   2,       0) /* HeartbeatTimestamp */
     , (490257,   3,   0.067) /* HealthRate */
     , (490257,   4,       5) /* StaminaRate */
     , (490257,   5,       2) /* ManaRate */
     , (490257,  13,    0.98) /* ArmorModVsSlash */
     , (490257,  14,    0.98) /* ArmorModVsPierce */
     , (490257,  15,    0.72) /* ArmorModVsBludgeon */
     , (490257,  16,    0.98) /* ArmorModVsCold */
     , (490257,  17,    0.98) /* ArmorModVsFire */
     , (490257,  18,    0.98) /* ArmorModVsAcid */
     , (490257,  19,    0.72) /* ArmorModVsElectric */
     , (490257,  31,      15) /* VisualAwarenessRange */
     , (490257,  34,       2) /* PowerupTime */
     , (490257,  36,       1) /* ChargeSpeed */
     , (490257,  39,       2) /* DefaultScale */
     , (490257,  64,     0.5) /* ResistSlash */
     , (490257,  65,     0.5) /* ResistPierce */
     , (490257,  66,    0.98) /* ResistBludgeon */
     , (490257,  67,     0.5) /* ResistFire */
     , (490257,  68,     0.5) /* ResistCold */
     , (490257,  69,     0.5) /* ResistAcid */
     , (490257,  70,    0.95) /* ResistElectric */
     , (490257,  77,       1) /* PhysicsScriptIntensity */
     , (490257, 104,      10) /* ObviousRadarRange */
     , (490257, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490257,   1, 'Ravenous Rat') /* Name */
     , (490257,  45, 'RavenousratKillTask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490257,   1, 0x0200003D) /* Setup */
     , (490257,   2, 0x0900000E) /* MotionTable */
     , (490257,   3, 0x2000000F) /* SoundTable */
     , (490257,   4, 0x30000013) /* CombatTable */
     , (490257,   6, 0x040001B4) /* PaletteBase */
     , (490257,   7, 0x10000063) /* ClothingBase */
     , (490257,   8, 0x0600103B) /* Icon */
     , (490257,  19, 0x00000056) /* ActivationAnimation */
     , (490257,  22, 0x34000023) /* PhysicsEffectTable */
     , (490257,  30,         86) /* PhysicsScript - BreatheAcid */
     , (490257,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490257,   1, 320, 0, 0) /* Strength */
     , (490257,   2, 300, 0, 0) /* Endurance */
     , (490257,   3, 380, 0, 0) /* Quickness */
     , (490257,   4, 400, 0, 0) /* Coordination */
     , (490257,   5, 200, 0, 0) /* Focus */
     , (490257,   6, 190, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490257,   1,  12000, 0, 0, 13500) /* MaxHealth */
     , (490257,   3,  5700, 0, 0, 6000) /* MaxStamina */
     , (490257,   5,  5000, 0, 0, 5190) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490257,  6, 0, 2, 0, 360, 0, 0) /* MeleeDefense        Trained */
     , (490257,  7, 0, 2, 0, 256, 0, 0) /* MissileDefense      Trained */
     , (490257, 15, 0, 2, 0, 400, 0, 0) /* MagicDefense        Trained */
     , (490257, 16, 0, 2, 0, 165, 0, 0) /* ManaConversion      Trained */
     , (490257, 31, 0, 2, 0, 198, 0, 0) /* CreatureEnchantment Trained */
     , (490257, 33, 0, 2, 0, 198, 0, 0) /* LifeMagic           Trained */
     , (490257, 34, 0, 2, 0, 198, 0, 0) /* WarMagic            Trained */
     , (490257, 44, 0, 2, 0, 650, 0, 0) /* HeavyWeapons        Trained */
     , (490257, 45, 0, 2, 0, 650, 0, 0) /* LightWeapons        Trained */
     , (490257, 46, 0, 2, 0, 650, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490257,  0,  2, 180, 0.75,  430,  421,  421,  310,  421,  421,  421,  310,    0, 1, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0, 0.33,  0.4,    0) /* Head */
     , (490257, 16,  4, 180, 0.75,  430,  421,  421,  310,  421,  421,  421,  310,    0, 2, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75, 0.67,  0.4, 0.75) /* Torso */
     , (490257, 17,  4, 180,    0,  430,  421,  421,  310,  421,  421,  421,  310,    0, 3,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25,    0,  0.2, 0.25) /* Tail */
     , (490257, 22, 32, 180,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490257,  4312,   2.04)  /* Gossamer Flesh */
     , (490257,  4473,   2.04)  /* Incantation of Acid Vulnerability Other */
	 , (490257,  4005,   2.04)  /* Incantation of Acid Vulnerability Other */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490257, 9, 490183,  1, 0, 0.20, False) /* MMD */
     , (490257, 9,     0,  0, 0, 0.90, False) /* Create nothing for ContainTreasure */
