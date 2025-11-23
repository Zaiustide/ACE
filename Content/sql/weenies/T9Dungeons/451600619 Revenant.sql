DELETE FROM `weenie` WHERE `class_Id` = 451600619;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600619, 'T9_zombierevenant', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600619,   1,         16) /* ItemType - Creature */
     , (451600619,   2,         14) /* CreatureType - Undead */
     , (451600619,   3,         67) /* PaletteTemplate - GreenSlime */
     , (451600619,   6,         -1) /* ItemsCapacity */
     , (451600619,   7,         -1) /* ContainersCapacity */
     , (451600619,  16,          1) /* ItemUseable - No */
     , (451600619,  25,        666) /* Level */
     , (451600619,  27,          0) /* ArmorType - None */
     , (451600619,  40,          1) /* CombatMode - NonCombat */
     , (451600619,  68,          3) /* TargetingTactic - Random, Focused */
	 , (451600619,  81,          1) /* MaxGeneratedObjects */
     , (451600619,  82,          1) /* InitGeneratedObjects */  
     , (451600619,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600619, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451600619, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600619, 140,          1) /* AiOptions - CanOpenDoors */
     , (451600619, 146,   12417500) /* XpOverride */
	 , (451600619, 307,        962) /* DamageRating */
	 , (451600619, 308,         42) /* DamageResistRating */
	 , (451600619, 332,       5200) /* LuminanceAward */     
	 , (451600619, 386,         18) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600619,   1, True ) /* Stuck */
     , (451600619,   6, True ) /* AiUsesMana */
     , (451600619,  11, False) /* IgnoreCollisions */
     , (451600619,  12, True ) /* ReportCollisions */
     , (451600619,  13, False) /* Ethereal */
     , (451600619,  14, True ) /* GravityStatus */
     , (451600619,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600619,   1,       5) /* HeartbeatInterval */
     , (451600619,   2,       0) /* HeartbeatTimestamp */
     , (451600619,   3,     0.6) /* HealthRate */
     , (451600619,   4,     0.5) /* StaminaRate */
     , (451600619,   5,       2) /* ManaRate */
     , (451600619,  12,     0.5) /* Shade */
     , (451600619,  13,     0.8) /* ArmorModVsSlash */
     , (451600619,  14,    0.47) /* ArmorModVsPierce */
     , (451600619,  15,    0.65) /* ArmorModVsBludgeon */
     , (451600619,  16,    0.03) /* ArmorModVsCold */
     , (451600619,  17,     0.5) /* ArmorModVsFire */
     , (451600619,  18,    0.65) /* ArmorModVsAcid */
     , (451600619,  19,    0.72) /* ArmorModVsElectric */
     , (451600619,  31,      18) /* VisualAwarenessRange */
     , (451600619,  34,       1) /* PowerupTime */
     , (451600619,  36,       1) /* ChargeSpeed */
     , (451600619,  39,     1.1) /* DefaultScale */
	 , (451600619,  43,       3) /* GeneratorRadius */
     , (451600619,  64,       1) /* ResistSlash */
     , (451600619,  65,    0.52) /* ResistPierce */
     , (451600619,  66,    0.75) /* ResistBludgeon */
     , (451600619,  67,       1) /* ResistFire */
     , (451600619,  68,     0.1) /* ResistCold */
     , (451600619,  69,    0.75) /* ResistAcid */
     , (451600619,  70,    0.86) /* ResistElectric */
     , (451600619,  71,       1) /* ResistHealthBoost */
     , (451600619,  72,       1) /* ResistStaminaDrain */
     , (451600619,  73,       1) /* ResistStaminaBoost */
     , (451600619,  74,       1) /* ResistManaDrain */
     , (451600619,  75,       1) /* ResistManaBoost */
     , (451600619,  80,       3) /* AiUseMagicDelay */
     , (451600619, 104,      10) /* ObviousRadarRange */
     , (451600619, 122,       2) /* AiAcquireHealth */
     , (451600619, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600619,   1, 'Revenant') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600619,   1, 0x0200100D) /* Setup */
     , (451600619,   2, 0x09000017) /* MotionTable */
     , (451600619,   3, 0x20000016) /* SoundTable */
     , (451600619,   4, 0x30000000) /* CombatTable */
     , (451600619,   6, 0x040016C4) /* PaletteBase */
     , (451600619,   7, 0x100004F6) /* ClothingBase */
     , (451600619,   8, 0x06001226) /* Icon */
     , (451600619,  22, 0x34000028) /* PhysicsEffectTable */
     , (451600619,  32,        250) /* WieldedTreasureType */
     , (451600619,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600619,   1, 4110, 0, 0) /* Strength */
     , (451600619,   2, 11000, 0, 0) /* Endurance */
     , (451600619,   3, 490, 0, 0) /* Quickness */
     , (451600619,   4, 640, 0, 0) /* Coordination */
     , (451600619,   5, 3125, 0, 0) /* Focus */
     , (451600619,   6, 155, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600619,   1,   31235, 0, 0, 31235) /* MaxHealth */
     , (451600619,   3,   31235, 0, 0, 31235) /* MaxStamina */
     , (451600619,   5,   31235, 0, 0, 31235) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600619,  6, 0, 3, 0, 0, 0, 0) /* MeleeDefense        Specialized */
     , (451600619,  7, 0, 3, 0, 0, 0, 0) /* MissileDefense      Specialized */
     , (451600619, 14, 0, 3, 0, 230, 0, 0) /* ArcaneLore          Specialized */
     , (451600619, 15, 0, 3, 0, 0, 0, 0) /* MagicDefense        Specialized */
     , (451600619, 20, 0, 3, 0,  90, 0, 0) /* Deception           Specialized */
     , (451600619, 31, 0, 3, 0,  870, 0, 0) /* CreatureEnchantment Specialized */
     , (451600619, 33, 0, 3, 0,  870, 0, 0) /* LifeMagic           Specialized */
     , (451600619, 34, 0, 3, 0, 11270, 0, 0) /* WarMagic            Specialized */
     , (451600619, 44, 0, 3, 0, 8200, 0, 0) /* HeavyWeapons        Specialized */
     , (451600619, 45, 0, 3, 0, 8200, 0, 0) /* LightWeapons        Specialized */
     , (451600619, 46, 0, 3, 0, 8120, 0, 0) /* FinesseWeapons      Specialized */
     , (451600619, 47, 0, 3, 0, 8150, 0, 0) /* MissileWeapons      Specialized */
     , (451600619, 48, 0, 3, 0, 200, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600619,  0,  4,  0,    0,  150,  120,   71,   98,    5,   75,   98,  108,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451600619,  1,  4,  0,    0,  150,  120,   71,   98,    5,   75,   98,  108,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451600619,  2,  4,  0,    0,  150,  120,   71,   98,    5,   75,   98,  108,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451600619,  3,  4,  0,    0,  150,  120,   71,   98,    5,   75,   98,  108,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451600619,  4,  4,  0,    0,  150,  120,   71,   98,    5,   75,   98,  108,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451600619,  5,  4,  2, 0.75,  150,  120,   71,   98,    5,   75,   98,  108,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451600619,  6,  4,  0,    0,  160,  128,   75,  104,    5,   80,  104,  115,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451600619,  7,  4,  0,    0,  160,  128,   75,  104,    5,   80,  104,  115,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451600619,  8,  4,  3, 0.75,  160,  128,   75,  104,    5,   80,  104,  115,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600619,    60,  2.028)  /* Acid Stream III */
     , (451600619,    66,  2.028)  /* Shock Wave III */
     , (451600619,    71,  2.028)  /* Frost Bolt III */
     , (451600619,    77,  2.028)  /* Lightning Bolt III */
     , (451600619,    82,  2.028)  /* Flame Bolt III */
     , (451600619,    88,  2.028)  /* Force Bolt III */
     , (451600619,    94,  2.028)  /* Whirling Blade III */
     , (451600619,   127,  2.028)  /* Acid Volley III */
     , (451600619,   135,  2.028)  /* Frost Volley III */
     , (451600619,   139,  2.028)  /* Lightning Volley III */
     , (451600619,   143,  2.028)  /* Flame Volley III */
     , (451600619,   167,   2.03)  /* Regeneration Self III */
     , (451600619,   173,  2.013)  /* Fester Other III */
     , (451600619,  1239,   2.03)  /* Drain Health Other III */
     , (451600619,  1251,   2.03)  /* Drain Stamina Other III */
     , (451600619,  1262,   2.03)  /* Drain Mana Other III */
     , (451600619,  1340,  2.013)  /* Weakness Other III */
     , (451600619,  1369,  2.013)  /* Frailty Other III */
     , (451600619,  1393,  2.013)  /* Clumsiness Other III */
     , (451600619,  1417,  2.013)  /* Slowness Other III */
     , (451600619,  1441,  2.013)  /* Bafflement Other III */
     , (451600619,  1465,  2.013)  /* Feeblemind Other III */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (451600619,  94)
     , (451600619, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600619,  3 /* Death */,  0.0125, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451600619, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600619,  3 /* Death */,   0.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'As it collapses into a mass of bone and rot, the ancient mage mutters, "Enjoy your triumph, outlander, but your time in the light is fleeting. This world belongs to us..."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600619,  3 /* Death */,   0.04, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  17 /* LocalBroadcast */, 0, 0, NULL, 'As it collapses into a mass of bone and rot, the ancient mage moans, "All our powers come to dust. Is this how it shall end for proud Dericost?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (451600619, 9,  7041,  0, 0, 0.03, False) /* Create Undead Thighbone (7041) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (451600619, 9,  5873,  0, 0, 0.01, False) /* Create Seal (5873) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */
     , (451600619, 9,  6876,  0, 0, 0.01, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */
     , (451600619, 9,  9310,  0, 0, 0.03, False) /* Create A Large Mnemosyne (9310) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */
     , (451600619, 9, 28875,  0, 0, 0.05, False) /* Create Armored Undead Legs (28875) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451600619, 9, 28872,  0, 0, 0.05, False) /* Create Armored Undead Arm  (28872) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */
     , (451600619, 9, 28893,  0, 0, 0.05, False) /* Create Armored Undead Torso (28893) for ContainTreasure */
     , (451600619, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */;
