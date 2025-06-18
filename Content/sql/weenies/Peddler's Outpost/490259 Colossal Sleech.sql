DELETE FROM `weenie` WHERE `class_Id` = 490259;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490259, 'ace490259-Colossal sleech', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490259,   1,         16) /* ItemType - Creature */
     , (490259,   2,         45) /* CreatureType - Niffis */
     , (490259,   3,         14) /* PaletteTemplate - Red */
     , (490259,   6,         -1) /* ItemsCapacity */
     , (490259,   7,         -1) /* ContainersCapacity */
     , (490259,  16,          1) /* ItemUseable - No */
     , (490259,  25,        185) /* Level */
     , (490259,  27,          0) /* ArmorType - None */
     , (490259,  40,          2) /* CombatMode - Melee */
     , (490259,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (490259,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490259, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (490259, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490259, 140,          1) /* AiOptions - CanOpenDoors */
     , (490259, 146,     5000000) /* XpOverride */
	 , (490259, 386,         20) /* Overpower */
	 , (490259, 332,        400) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490259,   1, True ) /* Stuck */
     , (490259,   6, True ) /* AiUsesMana */
     , (490259,  11, False) /* IgnoreCollisions */
     , (490259,  12, True ) /* ReportCollisions */
     , (490259,  13, False) /* Ethereal */
     , (490259,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490259,   1,       5) /* HeartbeatInterval */
     , (490259,   2,       0) /* HeartbeatTimestamp */
     , (490259,   3,     0.6) /* HealthRate */
     , (490259,   4,       3) /* StaminaRate */
     , (490259,   5,       1) /* ManaRate */
     , (490259,  12,     0.5) /* Shade */
     , (490259,  13,       1) /* ArmorModVsSlash */
     , (490259,  14,    0.55) /* ArmorModVsPierce */
     , (490259,  15,    0.45) /* ArmorModVsBludgeon */
     , (490259,  16,    0.95) /* ArmorModVsCold */
     , (490259,  17,    0.85) /* ArmorModVsFire */
     , (490259,  18,    0.95) /* ArmorModVsAcid */
     , (490259,  19,    0.85) /* ArmorModVsElectric */
	 , (490259,  55,      100) /* HomeRadius */
     , (490259,  31,      30) /* VisualAwarenessRange */
     , (490259,  34,       1) /* PowerupTime */
     , (490259,  36,       1) /* ChargeSpeed */
     , (490259,  39,     3) /* DefaultScale */
     , (490259,  64,     0.7) /* ResistSlash */
     , (490259,  65,     0.7) /* ResistPierce */
     , (490259,  66,     0.8) /* ResistBludgeon */
     , (490259,  67,     0.5) /* ResistFire */
     , (490259,  68,     0.5) /* ResistCold */
     , (490259,  69,     0.5) /* ResistAcid */
     , (490259,  70,     0.5) /* ResistElectric */
     , (490259,  71,       1) /* ResistHealthBoost */
     , (490259,  72,       1) /* ResistStaminaDrain */
     , (490259,  73,       1) /* ResistStaminaBoost */
     , (490259,  74,       1) /* ResistManaDrain */
     , (490259,  75,       1) /* ResistManaBoost */
     , (490259,  80,       2) /* AiUseMagicDelay */
     , (490259, 104,      30) /* ObviousRadarRange */
     , (490259, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490259,   1, 'Colossal Sleech') /* Name */
   , (490259,  45, 'ColossalSleechKillTask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490259,   1, 0x020014A0) /* Setup */
     , (490259,   2, 0x09000193) /* MotionTable */
     , (490259,   3, 0x20000062) /* SoundTable */
     , (490259,   4, 0x3000002A) /* CombatTable */
     , (490259,   6, 0x04001EDC) /* PaletteBase */
     , (490259,   7, 0x10000639) /* ClothingBase */
     , (490259,   8, 0x06001DF1) /* Icon */
     , (490259,  22, 0x340000B8) /* PhysicsEffectTable */
     , (490259,  35,       10002) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490259,   1, 360, 0, 0) /* Strength */
     , (490259,   2, 360, 0, 0) /* Endurance */
     , (490259,   3, 320, 0, 0) /* Quickness */
     , (490259,   4, 340, 0, 0) /* Coordination */
     , (490259,   5, 430, 0, 0) /* Focus */
     , (490259,   6, 480, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490259,   1,  19000, 0, 0, 19180) /* MaxHealth */
     , (490259,   3,  13000, 0, 0, 13360) /* MaxStamina */
     , (490259,   5,  11000, 0, 0, 11480) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490259,  6, 0, 3, 0, 400, 0, 0) /* MeleeDefense        Specialized */
     , (490259,  7, 0, 3, 0, 300, 0, 0) /* MissileDefense      Specialized */
     , (490259, 14, 0, 3, 0,  70, 0, 0) /* ArcaneLore          Specialized */
     , (490259, 15, 0, 3, 0, 300, 0, 0) /* MagicDefense        Specialized */
     , (490259, 20, 0, 3, 0,  50, 0, 0) /* Deception           Specialized */
     , (490259, 31, 0, 3, 0, 175, 0, 0) /* CreatureEnchantment Specialized */
     , (490259, 32, 0, 3, 0, 175, 0, 0) /* ItemEnchantment     Specialized */
     , (490259, 33, 0, 3, 0, 600, 0, 0) /* LifeMagic           Specialized */
     , (490259, 34, 0, 3, 0, 600, 0, 0) /* WarMagic            Specialized */
     , (490259, 45, 0, 3, 0, 500, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490259,  0,  4, 350, 0.75,  650,  650,  358,  293,  618,  553,  618,  553,    0, 1, 0.44,  0.3,    0,  0.4,  0.1,    0, 0.44,  0.3,    0,  0.4,  0.1,    0) /* Head */
     , (490259, 16,  4,  0,    0,  650,  650,  358,  293,  618,  553,  618,  553,    0, 2,  0.5, 0.48,  0.1,  0.5,  0.6,  0.1,  0.5, 0.48,  0.1,  0.5,  0.6, 0.22) /* Torso */
     , (490259, 21,  4,  0,    0,  650,  650,  358,  293,  618,  553,  618,  553,    0, 2,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0, 0.28) /* Wings */
     , (490259, 24,  4,  0,    0,  650,  650,  358,  293,  618,  553,  618,  553,    0, 2, 0.06, 0.22,  0.3,  0.1,  0.2,  0.3, 0.06, 0.22,  0.3,  0.1,  0.2, 0.22) /* UpperTentacle */
     , (490259, 25,  4, 350,  0.5,  650,  650,  358,  293,  618,  553,  618,  553,    0, 3,    0,    0,  0.3,    0,  0.1,  0.3,    0,    0,  0.3,    0,  0.1, 0.28) /* LowerTentacle */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490259,  4312,   2.15)  /* Gossamer Flesh */
     , (490259,  4433,   2.15)  /* Disintegration */
     , (490259,  4473,   2.02)  /* Incantation of Acid Vulnerability Other */
	 , (490259,  4475,   2.02)  /* Incantation of Blade Vulnerability Other */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES  (490259, 9, 34277,  1, 0, 1, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */;


