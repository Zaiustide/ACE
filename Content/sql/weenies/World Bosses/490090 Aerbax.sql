DELETE FROM `weenie` WHERE `class_Id` = 490090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490090, 'worldbossaerbax', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490090,   1,         16) /* ItemType - Creature */
     , (490090,   2,         96) /* CreatureType - Aerbax */
     , (490090,   6,         -1) /* ItemsCapacity */
     , (490090,   7,         -1) /* ContainersCapacity */
     , (490090,  16,          1) /* ItemUseable - No */
     , (490090,  25,        899) /* Level */
	 , (490090,  72,         48) /* FriendType - Virindi */
     , (490090,  27,          0) /* ArmorType - None */
	 , (490090, 103,          3) /* GeneratorDestructionType - Destroy */
	 , (490090,  81,          50) /* MaxGeneratedObjects */
     , (490090,  82,          50) /* InitGeneratedObjects */
     , (490090,  40,          1) /* CombatMode - NonCombat */
     , (490090,  68,         40) /* TargetingTactic - Nearest */
     , (490090,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490090, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (490090, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490090, 146,      400000000) /* XpOverride */
	 , (490090, 307,         18) /* DamageRating */
     , (490090, 308,         23) /* DamageResistRating */
	 , (490090, 386,         10) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490090,   1, True ) /* Stuck */
     , (490090,   6, False) /* AiUsesMana */
     , (490090,  11, False) /* IgnoreCollisions */
     , (490090,  12, True ) /* ReportCollisions */
	 , (490090,  29, True ) /* NoCorpse */
     , (490090,  13, False) /* Ethereal */
     , (490090,  52, True ) /* AiImmobile */
	 , (490090,  65, True ) /* IgnoreMagicResist */
     , (490090,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490090,   1,     1.5) /* HeartbeatInterval */
     , (490090,   2,       0) /* HeartbeatTimestamp */
     , (490090,   3,       1) /* HealthRate */
     , (490090,   4,  750000) /* StaminaRate */
     , (490090,   5,      50) /* ManaRate */
     , (490090,  13,       5) /* ArmorModVsSlash */
     , (490090,  14,       5) /* ArmorModVsPierce */
     , (490090,  15,       5) /* ArmorModVsBludgeon */
     , (490090,  16,       5) /* ArmorModVsCold */
     , (490090,  17,       5) /* ArmorModVsFire */
     , (490090,  18,       5) /* ArmorModVsAcid */
     , (490090,  19,    1.25) /* ArmorModVsElectric */
     , (490090,  31,      50) /* VisualAwarenessRange */
     , (490090,  34,       1) /* PowerupTime */
     , (490090,  36,       1) /* ChargeSpeed */
     , (490090,  39,       1) /* DefaultScale */
	 , (490090,  55,       50) /* HomeRadius */
     , (490090,  64,       0.1) /* ResistSlash */
     , (490090,  65,       0.1) /* ResistPierce */
     , (490090,  66,       0.1) /* ResistBludgeon */
     , (490090,  67,       0.1) /* ResistFire */
     , (490090,  68,       0.1) /* ResistCold */
     , (490090,  69,       0.1) /* ResistAcid */
     , (490090,  70,       0.5) /* ResistElectric */
     , (490090,  71,       1) /* ResistHealthBoost */
     , (490090,  72,       0) /* ResistStaminaDrain */
     , (490090,  73,       1) /* ResistStaminaBoost */
     , (490090,  74,       0) /* ResistManaDrain */
     , (490090,  75,       1) /* ResistManaBoost */
     , (490090,  80,       1) /* AiUseMagicDelay */
     , (490090, 104,      50) /* ObviousRadarRange */
     , (490090, 122,       0) /* AiAcquireHealth */
	 , (490090, 166,      85) /* ResistNether */
     , (490090, 125,      85) /* ResistHealthDrain */
     , (490090, 127,       2) /* AiCounteractEnchantment */
	 , (490090,  43,      20) /* GeneratorRadius */
	 , (490090, 151,    0.80) /* IgnoreShield */
	 , (490090,  41,     600) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490090,   1, 'Aerbax') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490090,   1, 0x020017F5) /* Setup */
     , (490090,   2, 0x090001D1) /* MotionTable */
     , (490090,   3, 0x20000012) /* SoundTable */
     , (490090,   4, 0x3000000D) /* CombatTable */
     , (490090,   8, 0x06001227) /* Icon */
     , (490090,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490090,   1, 900, 0, 0) /* Strength */
     , (490090,   2, 900, 0, 0) /* Endurance */
     , (490090,   3, 900, 0, 0) /* Quickness */
     , (490090,   4, 900, 0, 0) /* Coordination */
     , (490090,   5, 900, 0, 0) /* Focus */
     , (490090,   6, 900, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490090,   1,  1000000, 0, 0, 1000000) /* MaxHealth */
     , (490090,   3,  1000000, 0, 0,  1000000) /* MaxStamina */
     , (490090,   5,  1000000, 0, 0, 1000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490090,  6, 0, 3, 0,   200, 0, 608.0722585280382) /* MeleeDefense        Specialized */
     , (490090,  7, 0, 3, 0, 200, 0, 608.0722585280382) /* MissileDefense      Specialized */
     , (490090, 13, 0, 3, 0, 900, 0, 608.0722585280382) /* Heavy Weapon      Specialized */
     , (490090, 15, 0, 3, 0,  200, 0, 608.0722585280382) /* MagicDefense        Specialized */
     , (490090, 20, 0, 3, 0, 100, 0, 608.0722585280382) /* Deception           Specialized */
     , (490090, 24, 0, 3, 0, 200, 0, 608.0722585280382) /* Run                 Specialized */
     , (490090, 31, 0, 3, 0, 900, 0, 608.0722585280382) /* CreatureEnchantment Specialized */
     , (490090, 33, 0, 3, 0, 900, 0, 608.0722585280382) /* LifeMagic           Specialized */
     , (490090, 34, 0, 3, 0, 900, 0, 608.0722585280382) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490090,  0,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (490090,  1,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (490090,  2,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (490090,  3,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (490090,  4,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (490090,  5,  4, 120, 0.75,  900, 700, 700, 700, 700, 700, 700, 700,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (490090,  6,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (490090,  7,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (490090,  8,  4, 120, 0.75,  900, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490090,  4483,   2.2)  /* Incantation of Lightning Vuln */
     , (490090,  111,    2.25)  /* Lightning Blast III */
     , (490090,  4426,   2.3)  /* Incantation of Lightning Arc */     
	 , (490090,  2773,   2.25)  /* Martyr's Tenacity VII */
;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490090, 9, 490092,  0, 0, 1, False) /* Create Aerbax Loot Gen for ContainTreasure */;