DELETE FROM `weenie` WHERE `class_Id` = 490185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490185, 'ace490185-Islandzefir', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490185,   1,         16) /* ItemType - Creature */
     , (490185,   2,         29) /* CreatureType - Zefir */
     , (490185,   3,          76) /* PaletteTemplate - Green */
     , (490185,   6,         -1) /* ItemsCapacity */
     , (490185,   7,         -1) /* ContainersCapacity */
     , (490185,  16,          1) /* ItemUseable - No */
     , (490185,  25,        295) /* Level */
     , (490185,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (490185,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (490185, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490185, 146,    2500000) /* XpOverride */
     , (490185, 332,        200) /* LuminanceAward */
     , (490185, 386,         20) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490185,   1, True ) /* Stuck */
     , (490185,   6, True ) /* AiUsesMana */
     , (490185,  12, True ) /* ReportCollisions */
     , (490185,  14, True ) /* GravityStatus */
     , (490185,  19, True ) /* Attackable */
     , (490185,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490185,   1,       5) /* HeartbeatInterval */
     , (490185,   2,       0) /* HeartbeatTimestamp */
     , (490185,   3,       4) /* HealthRate */
     , (490185,   4,      10) /* StaminaRate */
     , (490185,   5,       3) /* ManaRate */
     , (490185,  12,       0) /* Shade */
     , (490185,  13,     0.9) /* ArmorModVsSlash */
     , (490185,  14,     0.9) /* ArmorModVsPierce */
     , (490185,  15,     0.9) /* ArmorModVsBludgeon */
     , (490185,  16,     0.8) /* ArmorModVsCold */
     , (490185,  17,       1) /* ArmorModVsFire */
     , (490185,  18,     0.8) /* ArmorModVsAcid */
     , (490185,  19,       1) /* ArmorModVsElectric */
     , (490185,  31,      35) /* VisualAwarenessRange */
     , (490185,  34,     1.2) /* PowerupTime */
	 , (490185,  39,     2) /* DefaultScale */
     , (490185,  36,       1) /* ChargeSpeed */
     , (490185,  64,     0.7) /* ResistSlash */
     , (490185,  65,     0.6) /* ResistPierce */
     , (490185,  66,     0.7) /* ResistBludgeon */
     , (490185,  67,     0.4) /* ResistFire */
     , (490185,  68,     0.7) /* ResistCold */
     , (490185,  69,     0.7) /* ResistAcid */
     , (490185,  70,     0.4) /* ResistElectric */
     , (490185,  80,       3) /* AiUseMagicDelay */
     , (490185, 104,      35) /* ObviousRadarRange */
     , (490185, 122,       2) /* AiAcquireHealth */
     , (490185, 125,       1) /* ResistHealthDrain */
     , (490185, 166,       1) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490185,   1, 'Island Zefir') /* Name */
     , (490185,  45, 'KilltaskViridianZefir') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490185,   1, 0x02001C3B) /* Setup */
     , (490185,   2, 0x09000069) /* MotionTable */
     , (490185,   3, 0x2000003F) /* SoundTable */
     , (490185,   4, 0x3000001C) /* CombatTable */
     , (490185,   6, 0x040001B9) /* PaletteBase */
     , (490185,   7, 0x100004F9) /* ClothingBase */
     , (490185,   8, 0x060016C3) /* Icon */
     , (490185,  22, 0x3400002F) /* PhysicsEffectTable */
     , (490185,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490185,   1, 400, 0, 0) /* Strength */
     , (490185,   2, 400, 0, 0) /* Endurance */
     , (490185,   3, 400, 0, 0) /* Quickness */
     , (490185,   4, 400, 0, 0) /* Coordination */
     , (490185,   5, 500, 0, 0) /* Focus */
     , (490185,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490185,   1,  6000, 0, 0, 5) /* MaxHealth */
     , (490185,   3,  2600, 0, 0, 0) /* MaxStamina */
     , (490185,   5,  2500, 0, 0, 0) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490185,  6, 0, 2, 0, 540, 0, 0) /* MeleeDefense        Trained */
     , (490185,  7, 0, 2, 0, 550, 0, 0) /* MissileDefense      Trained */
     , (490185, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (490185, 16, 0, 2, 0, 280, 0, 0) /* ManaConversion      Trained */
     , (490185, 31, 0, 2, 0, 280, 0, 0) /* CreatureEnchantment Trained */
     , (490185, 33, 0, 2, 0, 280, 0, 0) /* LifeMagic           Trained */
     , (490185, 34, 0, 2, 0, 280, 0, 0) /* WarMagic            Trained */
     , (490185, 41, 0, 2, 0, 433, 0, 0) /* TwoHandedCombat     Trained */
     , (490185, 43, 0, 2, 0, 280, 0, 0) /* VoidMagic           Trained */
     , (490185, 44, 0, 2, 0, 433, 0, 0) /* HeavyWeapons        Trained */
     , (490185, 45, 0, 2, 0, 433, 0, 0) /* LightWeapons        Trained */
     , (490185, 46, 0, 2, 0, 433, 0, 0) /* FinesseWeapons      Trained */
     , (490185, 47, 0, 2, 0, 280, 0, 0) /* MissileWeapons      Trained */
     , (490185, 51, 0, 2, 0, 433, 0, 0) /* SneakAttack         Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490185,  0,  2, 1100,  0.5,  500,  450,  450,  450,  400,  500,  400,  500,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (490185, 16,  4,  0,    0,  500,  450,  450,  450,  400,  500,  400,  500,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (490185, 17,  1, 1100, 0.75,  500,  450,  450,  450,  400,  500,  400,  500,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (490185, 21,  4,  0,    0,  500,  450,  450,  450,  400,  500,  400,  500,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490185,  6159,   2.05)  /* Thorn Volley */
     , (490185,  6160,  2.053)  /* Thorns */
     , (490185,  4485,  2.056)  /* Incantation of Piercing Vulnerability Other */
     , (490185,  6162,  2.059)  /* Thorn Arc */
     , (490185,  6163,  2.063)  /* Ring of Thorns */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490185, 9, 34277,  1, 0, 0.20, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */
     , (490185, 9,     0,  0, 0, 0.80, False) /* Create nothing for ContainTreasure */;

