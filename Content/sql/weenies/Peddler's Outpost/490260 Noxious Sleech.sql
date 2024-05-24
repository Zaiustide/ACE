DELETE FROM `weenie` WHERE `class_Id` = 490260;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490260, 'ace490260-Noxioussleech', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490260,   1,         16) /* ItemType - Creature */
     , (490260,   2,         45) /* CreatureType - Niffis */
     , (490260,   3,         2) /* PaletteTemplate - PinkPurple */
     , (490260,   6,         -1) /* ItemsCapacity */
     , (490260,   7,         -1) /* ContainersCapacity */
     , (490260,  16,          1) /* ItemUseable - No */
     , (490260,  25,        185) /* Level */
     , (490260,  27,          0) /* ArmorType - None */
     , (490260,  40,          2) /* CombatMode - Melee */
     , (490260,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (490260,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490260, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (490260, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490260, 140,          1) /* AiOptions - CanOpenDoors */
     , (490260, 146,     290000) /* XpOverride */
	 , (490260, 386,         40) /* Overpower */
	 , (490260, 332,        200) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490260,   1, True ) /* Stuck */
     , (490260,   6, True ) /* AiUsesMana */
     , (490260,  11, False) /* IgnoreCollisions */
     , (490260,  12, True ) /* ReportCollisions */
     , (490260,  13, False) /* Ethereal */
     , (490260,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490260,   1,       5) /* HeartbeatInterval */
     , (490260,   2,       0) /* HeartbeatTimestamp */
     , (490260,   3,     0.6) /* HealthRate */
     , (490260,   4,       3) /* StaminaRate */
     , (490260,   5,       1) /* ManaRate */
     , (490260,  12,     0.5) /* Shade */
     , (490260,  13,       1) /* ArmorModVsSlash */
     , (490260,  14,    0.95) /* ArmorModVsPierce */
     , (490260,  15,    0.95) /* ArmorModVsBludgeon */
     , (490260,  16,       1) /* ArmorModVsCold */
     , (490260,  17,       1) /* ArmorModVsFire */
     , (490260,  18,       1) /* ArmorModVsAcid */
     , (490260,  19,       1) /* ArmorModVsElectric */
     , (490260,  31,      18) /* VisualAwarenessRange */
     , (490260,  34,       1) /* PowerupTime */
     , (490260,  36,       1) /* ChargeSpeed */
     , (490260,  39,     1.5) /* DefaultScale */
     , (490260,  64,     0.6) /* ResistSlash */
     , (490260,  65,     0.6) /* ResistPierce */
     , (490260,  66,     0.7) /* ResistBludgeon */
     , (490260,  67,     0.5) /* ResistFire */
     , (490260,  68,     0.5) /* ResistCold */
     , (490260,  69,     0.5) /* ResistAcid */
     , (490260,  70,     0.5) /* ResistElectric */
     , (490260,  71,       1) /* ResistHealthBoost */
     , (490260,  72,       1) /* ResistStaminaDrain */
     , (490260,  73,       1) /* ResistStaminaBoost */
     , (490260,  74,       1) /* ResistManaDrain */
     , (490260,  75,       1) /* ResistManaBoost */
     , (490260,  80,       2) /* AiUseMagicDelay */
     , (490260, 104,      10) /* ObviousRadarRange */
     , (490260, 125,       1) /* ResistHealthDrain */
     , (490260, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490260,   1, 'Noxious Sleech') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490260,   1, 0x020014A0) /* Setup */
     , (490260,   2, 0x09000193) /* MotionTable */
     , (490260,   3, 0x20000062) /* SoundTable */
     , (490260,   4, 0x3000002A) /* CombatTable */
     , (490260,   6, 0x04001EDC) /* PaletteBase */
     , (490260,   7, 0x10000639) /* ClothingBase */
     , (490260,   8, 0x06001DF1) /* Icon */
     , (490260,  22, 0x340000B8) /* PhysicsEffectTable */
     , (490260,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490260,   1, 360, 0, 0) /* Strength */
     , (490260,   2, 360, 0, 0) /* Endurance */
     , (490260,   3, 320, 0, 0) /* Quickness */
     , (490260,   4, 340, 0, 0) /* Coordination */
     , (490260,   5, 430, 0, 0) /* Focus */
     , (490260,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490260,   1,   5435, 0, 0, 5615) /* MaxHealth */
     , (490260,   3,   2500, 0, 0, 2860) /* MaxStamina */
     , (490260,   5,  5000, 0, 0, 5480) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490260,  6, 0, 3, 0, 380, 0, 0) /* MeleeDefense        Specialized */
     , (490260,  7, 0, 3, 0, 290, 0, 0) /* MissileDefense      Specialized */
     , (490260, 14, 0, 3, 0,  70, 0, 0) /* ArcaneLore          Specialized */
     , (490260, 15, 0, 3, 0, 275, 0, 0) /* MagicDefense        Specialized */
     , (490260, 20, 0, 3, 0,  50, 0, 0) /* Deception           Specialized */
     , (490260, 31, 0, 3, 0, 175, 0, 0) /* CreatureEnchantment Specialized */
     , (490260, 32, 0, 3, 0, 175, 0, 0) /* ItemEnchantment     Specialized */
     , (490260, 33, 0, 3, 0, 650, 0, 0) /* LifeMagic           Specialized */
     , (490260, 34, 0, 3, 0, 650, 0, 0) /* WarMagic            Specialized */
     , (490260, 45, 0, 3, 0, 800, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490260,  0,  4, 275, 0.75,  650,  650,  618,  618,  650,  650,  650,  650,    0, 1, 0.44,  0.3,    0,  0.4,  0.1,    0, 0.44,  0.3,    0,  0.4,  0.1,    0) /* Head */
     , (490260, 16,  4,  0,    0,  650,  650,  618,  618,  650,  650,  650,  650,    0, 2,  0.5, 0.48,  0.1,  0.5,  0.6,  0.1,  0.5, 0.48,  0.1,  0.5,  0.6, 0.22) /* Torso */
     , (490260, 21,  4,  0,    0,  650,  650,  618,  618,  650,  650,  650,  650,    0, 2,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0, 0.28) /* Wings */
     , (490260, 24,  4,  0,    0,  650,  650,  618,  618,  650,  650,  650,  650,    0, 2, 0.06, 0.22,  0.3,  0.1,  0.2,  0.3, 0.06, 0.22,  0.3,  0.1,  0.2, 0.22) /* UpperTentacle */
     , (490260, 25,  4, 275,  0.5,  650,  650,  618,  618,  650,  650,  650,  650,    0, 3,    0,    0,  0.3,    0,  0.1,  0.3,    0,    0,  0.3,    0,  0.1, 0.28) /* LowerTentacle */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490260,  4312,   2.15)  /* Gossamer Flesh */
     , (490260,  4433,   2.15)  /* Disintegration */
     , (490260,  4473,   2.02)  /* Olthoi's Gift */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490260, 9, 34277,  1, 0, 0.10, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */
     , (490260, 9,     0,  0, 0, 0.90, False) /* Create nothing for ContainTreasure */;
