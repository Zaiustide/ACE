DELETE FROM `weenie` WHERE `class_Id` = 490159;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (490159, 'Mythic Wasp Queen', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (490159,   1,         16) /* ItemType - Creature */
     , (490159,   2,         9) /* CreatureType - Hopeslayer */
     , (490159,   3,          39) /* PaletteTemplate - Grey */
     , (490159,   6,         -1) /* ItemsCapacity */
     , (490159,   7,         -1) /* ContainersCapacity */
     , (490159,  16,          1) /* ItemUseable - No */
     , (490159,  25,        899) /* Level */
	 , (490159, 103,          3) /* GeneratorDestructionType - Destroy */
	 , (490159,  72,         92) /* FriendType - Virindi */
	 , (490159,  81,          50) /* MaxGeneratedObjects */
     , (490159,  82,          50) /* InitGeneratedObjects */
     , (490159,  40,          1) /* CombatMode - NonCombat */
     , (490159,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (490159,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (490159, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (490159, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (490159, 146,      400000000) /* XpOverride */
	 , (490159, 386,         10) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (490159,   1, True ) /* Stuck */
     , (490159,   6, False) /* AiUsesMana */
     , (490159,  11, False) /* IgnoreCollisions */
     , (490159,  12, True ) /* ReportCollisions */
     , (490159,  13, False) /* Ethereal */
	 , (490159,  29, True ) /* NoCorpse */
     , (490159,  52, False) /* AiImmobile */
	 , (490159,  65, True ) /* IgnoreMagicResist */
     , (490159,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (490159,   1,       5) /* HeartbeatInterval */
     , (490159,   2,       0) /* HeartbeatTimestamp */
     , (490159,   3,     100) /* HealthRate */
     , (490159,   4,       100) /* StaminaRate */
     , (490159,   5,       2) /* ManaRate */
     , (490159,  13,    1.15) /* ArmorModVsSlash */
     , (490159,  14,     1.1) /* ArmorModVsPierce */
     , (490159,  15,     1.1) /* ArmorModVsBludgeon */
     , (490159,  16,    1.25) /* ArmorModVsCold */
     , (490159,  17,    1.25) /* ArmorModVsFire */
     , (490159,  18,    1.25) /* ArmorModVsAcid */
     , (490159,  19,    1.25) /* ArmorModVsElectric */
     , (490159,  31,      35) /* VisualAwarenessRange */
     , (490159,  34,       1) /* PowerupTime */
	 , (490159,  39,       3) /* DefaultScale */
     , (490159,  36,       1) /* ChargeSpeed */
	 , (490159,  55,      110) /* HomeRadius */
     , (490159,  64,    0.15) /* ResistSlash */
     , (490159,  65,    0.75) /* ResistPierce */
     , (490159,  66,    0.85) /* ResistBludgeon */
     , (490159,  67,     0.1) /* ResistFire */
     , (490159,  68,    0.05) /* ResistCold */
     , (490159,  69,    0.05) /* ResistAcid */
     , (490159,  70,     0.5) /* ResistElectric */
     , (490159,  77,       1) /* PhysicsScriptIntensity */
     , (490159, 104,      35) /* ObviousRadarRange */
	 , (490159,  80,       3) /* AiUseMagicDelay */
	 , (490159, 166,       1) /* ResistNether */
     , (490159, 125,       1) /* ResistHealthDrain */
     , (490159, 151,       0.80) /* IgnoreShield */
	 , (490159,  43,      20) /* GeneratorRadius */
	 , (490159,  41,     600) /* RegenerationInterval */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (490159,   1, 'Mythic Wasp Queen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (490159,   1, 0x02001121) /* Setup */
     , (490159,   2, 0x09000167) /* MotionTable */
     , (490159,   3, 0x2000000E) /* SoundTable */
     , (490159,   4, 0x30000011) /* CombatTable */
     , (490159,   6, 0x040018FE) /* PaletteBase */
     , (490159,   7, 0x10000564) /* ClothingBase */
     , (490159,   8, 0x0600103A) /* Icon */
     , (490159,  22, 0x34000022) /* PhysicsEffectTable */
     , (490159,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (490159,   1, 700, 0, 0) /* Strength */
     , (490159,   2, 700, 0, 0) /* Endurance */
     , (490159,   3, 700, 0, 0) /* Quickness */
     , (490159,   4, 700, 0, 0) /* Coordination */
     , (490159,   5, 700, 0, 0) /* Focus */
     , (490159,   6, 700, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (490159,   1, 499600, 0, 0, 500000) /* MaxHealth */
     , (490159,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (490159,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (490159,  6, 0, 2, 0, 100, 0, 0) /* MeleeDefense        Trained */
     , (490159,  7, 0, 2, 0, 100, 0, 0) /* MissileDefense      Trained */
     , (490159, 15, 0, 2, 0, 100, 0, 0) /* MagicDefense        Trained */
     , (490159, 16, 0, 2, 0, 300, 0, 0) /* ManaConversion      Trained */
     , (490159, 31, 0, 2, 0, 700, 0, 0) /* CreatureEnchantment Trained */
     , (490159, 33, 0, 2, 0, 700, 0, 0) /* LifeMagic           Trained */
     , (490159, 34, 0, 2, 0, 800, 0, 0) /* WarMagic            Trained */
     , (490159, 41, 0, 2, 0, 140, 0, 0) /* TwoHandedCombat     Trained */
     , (490159, 44, 0, 2, 0, 900, 0, 0) /* HeavyWeapons        Trained */
     , (490159, 45, 0, 2, 0, 900, 0, 0) /* LightWeapons        Trained */
     , (490159, 46, 0, 2, 0, 900, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (490159,  0,  2, 110, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (490159, 16,  4,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (490159, 18,  1, 110,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (490159, 19,  1,  0,    0,  700,  805,  770,  770,  875,  875,  875,  875,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (490159, 20,  1, 110, 0.75,  700,  805,  770,  770,  875,  875,  875,  875,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (490159, 22, 32, 110,  0.5,  700,  805,  770,  770,  875,  875,  875,  875,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (490159,  3877,   2.05)  /* Corrosive Strike */
     , (490159,  5443,   2.1)  /* Acid Spit Arc 2 */
	 , (490159,  4473,   2.20)  /* Incantation of Acid Vulnerability Other */;
	  
INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (490159, 414) /* PLAYER_DEATH_EVENT */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490159,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, '%s has struck down the Mythic Wasp Queen! The ground trembles as he falls. The remaining Olthoi retreat back to their tunnels as you hear their screams echo in the distance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (490159, 14 /* Taunt */,  0.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   7 /* PhysScript */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144 /* CampingMastery */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  17 /* LocalBroadcast */, 0, 1, NULL, 'The Mythic Wasp Queen is about to secrete a large ring of acid! WATCH OUT!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,   5 /* Motion */, 2, 1, 0x430000F2 /* AkimboState */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  19 /* CastSpellInstant */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3992 /* Heavy Acid Ring */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (490159, 9, 490074,  0, 0, 1, False) /* Create Splinter of Anger Gen (72104) for ContainTreasure */;