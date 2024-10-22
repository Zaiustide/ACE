DELETE FROM `weenie` WHERE `class_Id` = 49009000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (49009000, 'worldbossaerbax', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (49009000,   1,         16) /* ItemType - Creature */
     , (49009000,   2,         96) /* CreatureType - Aerbax */
     , (49009000,   6,         -1) /* ItemsCapacity */
     , (49009000,   7,         -1) /* ContainersCapacity */
     , (49009000,  16,          1) /* ItemUseable - No */
     , (49009000,  25,        899) /* Level */
	 , (49009000,  72,         48) /* FriendType - Virindi */
     , (49009000,  27,          0) /* ArmorType - None */
	 , (49009000, 103,          3) /* GeneratorDestructionType - Destroy */
	 , (49009000,  81,          50) /* MaxGeneratedObjects */
     , (49009000,  82,          50) /* InitGeneratedObjects */
     , (49009000,  40,          1) /* CombatMode - NonCombat */
     , (49009000,  68,          1) /* TargetingTactic - Random */
     , (49009000,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (49009000, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (49009000, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (49009000, 146,      400000000) /* XpOverride */
	 , (49009000, 307,         1) /* DamageRating */
     , (49009000, 308,         1) /* DamageResistRating */
	 , (49009000, 386,         10) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (49009000,   1, True ) /* Stuck */
     , (49009000,   6, False) /* AiUsesMana */
     , (49009000,  11, False) /* IgnoreCollisions */
     , (49009000,  12, True ) /* ReportCollisions */
	 , (49009000,  29, True ) /* NoCorpse */
     , (49009000,  13, False) /* Ethereal */
     , (49009000,  52, True ) /* AiImmobile */
	 , (49009000,  65, True ) /* IgnoreMagicResist */
     , (49009000,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (49009000,   1,     1.5) /* HeartbeatInterval */
     , (49009000,   2,       0) /* HeartbeatTimestamp */
     , (49009000,   3,       1) /* HealthRate */
     , (49009000,   4,  750000) /* StaminaRate */
     , (49009000,   5,      50) /* ManaRate */
     , (49009000,  13,       5) /* ArmorModVsSlash */
     , (49009000,  14,       5) /* ArmorModVsPierce */
     , (49009000,  15,       5) /* ArmorModVsBludgeon */
     , (49009000,  16,       5) /* ArmorModVsCold */
     , (49009000,  17,       5) /* ArmorModVsFire */
     , (49009000,  18,       5) /* ArmorModVsAcid */
     , (49009000,  19,    1.25) /* ArmorModVsElectric */
     , (49009000,  31,      50) /* VisualAwarenessRange */
     , (49009000,  34,       1) /* PowerupTime */
     , (49009000,  36,       1) /* ChargeSpeed */
     , (49009000,  39,       1) /* DefaultScale */
	 , (49009000,  55,       50) /* HomeRadius */
     , (49009000,  64,       0.1) /* ResistSlash */
     , (49009000,  65,       0.1) /* ResistPierce */
     , (49009000,  66,       0.1) /* ResistBludgeon */
     , (49009000,  67,       0.1) /* ResistFire */
     , (49009000,  68,       0.1) /* ResistCold */
     , (49009000,  69,       0.1) /* ResistAcid */
     , (49009000,  70,       0.5) /* ResistElectric */
     , (49009000,  71,       1) /* ResistHealthBoost */
     , (49009000,  72,       0) /* ResistStaminaDrain */
     , (49009000,  73,       1) /* ResistStaminaBoost */
     , (49009000,  74,       0) /* ResistManaDrain */
     , (49009000,  75,       1) /* ResistManaBoost */
     , (49009000,  80,       1) /* AiUseMagicDelay */
     , (49009000, 104,      50) /* ObviousRadarRange */
     , (49009000, 122,       0) /* AiAcquireHealth */
	 , (49009000, 166,      1) /* ResistNether */
     , (49009000, 125,      1) /* ResistHealthDrain */
     , (49009000, 127,       2) /* AiCounteractEnchantment */
	 , (49009000,  43,      20) /* GeneratorRadius */
	 , (49009000, 151,    0.80) /* IgnoreShield */
	 , (49009000,  41,     600) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (49009000,   1, 'Aerbax') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (49009000,   1, 0x020017F5) /* Setup */
     , (49009000,   2, 0x090001D1) /* MotionTable */
     , (49009000,   3, 0x20000012) /* SoundTable */
     , (49009000,   4, 0x3000000D) /* CombatTable */
     , (49009000,   8, 0x06001227) /* Icon */
     , (49009000,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (49009000,   1, 900, 0, 0) /* Strength */
     , (49009000,   2, 900, 0, 0) /* Endurance */
     , (49009000,   3, 900, 0, 0) /* Quickness */
     , (49009000,   4, 900, 0, 0) /* Coordination */
     , (49009000,   5, 1200, 0, 0) /* Focus */
     , (49009000,   6, 1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (49009000,   1,  84252, 0, 0, 84252) /* MaxHealth */
     , (49009000,   3,  1000000, 0, 0,  1000000) /* MaxStamina */
     , (49009000,   5,  1000000, 0, 0, 1000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (49009000,  6, 0, 3, 0,   200, 0, 608.0722585280382) /* MeleeDefense        Specialized */
     , (49009000,  7, 0, 3, 0, 200, 0, 608.0722585280382) /* MissileDefense      Specialized */
     , (49009000, 13, 0, 3, 0, 900, 0, 608.0722585280382) /* Heavy Weapon      Specialized */
     , (49009000, 15, 0, 3, 0,  200, 0, 608.0722585280382) /* MagicDefense        Specialized */
     , (49009000, 20, 0, 3, 0, 100, 0, 608.0722585280382) /* Deception           Specialized */
     , (49009000, 24, 0, 3, 0, 200, 0, 608.0722585280382) /* Run                 Specialized */
     , (49009000, 31, 0, 3, 0, 900, 0, 608.0722585280382) /* CreatureEnchantment Specialized */
     , (49009000, 33, 0, 3, 0, 900, 0, 608.0722585280382) /* LifeMagic           Specialized */
     , (49009000, 34, 0, 3, 0, 1200, 0, 608.0722585280382) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (49009000,  0,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (49009000,  1,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (49009000,  2,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (49009000,  3,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (49009000,  4,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (49009000,  5,  4, 120, 0.75,  900, 700, 700, 700, 700, 700, 700, 700,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (49009000,  6,  4,  0,    0,  950, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (49009000,  7,  4,  0,    0,  900, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (49009000,  8,  4, 120, 0.75,  900, 700, 700, 700, 700, 700, 700, 700,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (49009000,  4483,   2.2)  /* Incantation of Lightning Vuln */
     , (49009000,  111,    2.25)  /* Lightning Blast III */
     , (49009000,  4426,   2.3)  /* Incantation of Lightning Arc */     
	 , (49009000,  2773,   2.25)  /* Martyr's Tenacity VII */
;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (49009000, 9, 49009200,  0, 0, 1, False) /* Create Aerbax Loot Gen for ContainTreasure */;