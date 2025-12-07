DELETE FROM `weenie` WHERE `class_Id` = 451600204;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (451600204, 'T9_zombielich', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (451600204,   1,         16) /* ItemType - Creature */
     , (451600204,   2,         14) /* CreatureType - Undead */
     , (451600204,   3,         67) /* PaletteTemplate - GreenSlime */
     , (451600204,   6,         -1) /* ItemsCapacity */
     , (451600204,   7,         -1) /* ContainersCapacity */
     , (451600204,  16,          1) /* ItemUseable - No */
     , (451600204,  25,        666) /* Level */
     , (451600204,  27,          0) /* ArmorType - None */
     , (451600204,  40,          1) /* CombatMode - NonCombat */
     , (451600204,  68,          3) /* TargetingTactic - Random, Focused */
	 , (451600204,  81,          1) /* MaxGeneratedObjects */
     , (451600204,  82,          1) /* InitGeneratedObjects */
     , (451600204,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (451600204, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (451600204, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (451600204, 140,          1) /* AiOptions - CanOpenDoors */
	 , (451600204, 146,    9000000) /* XpOverride */
	 , (451600204, 307,         148) /* DamageRating */
	 , (451600204, 308,          1) /* DamageResistRating */
	 , (451600204, 332,       4000) /* LuminanceAward */     
	 , (451600204, 386,         15) /* Overpower */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (451600204,   1, True ) /* Stuck */
     , (451600204,   6, True ) /* AiUsesMana */
     , (451600204,  11, False) /* IgnoreCollisions */
     , (451600204,  12, True ) /* ReportCollisions */
     , (451600204,  13, False) /* Ethereal */
     , (451600204,  14, True ) /* GravityStatus */
     , (451600204,  19, True ) /* Attackable */
     , (451600204,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (451600204,   1,       5) /* HeartbeatInterval */
     , (451600204,   2,       0) /* HeartbeatTimestamp */
     , (451600204,   3,     0.3) /* HealthRate */
     , (451600204,   4,     0.5) /* StaminaRate */
     , (451600204,   5,       2) /* ManaRate */
     , (451600204,  12,     0.5) /* Shade */
     , (451600204,  13,     0.8) /* ArmorModVsSlash */
     , (451600204,  14,     0.3) /* ArmorModVsPierce */
     , (451600204,  15,    0.55) /* ArmorModVsBludgeon */
     , (451600204,  16,    0.18) /* ArmorModVsCold */
     , (451600204,  17,     0.5) /* ArmorModVsFire */
     , (451600204,  18,    0.55) /* ArmorModVsAcid */
     , (451600204,  19,    0.67) /* ArmorModVsElectric */
     , (451600204,  31,      18) /* VisualAwarenessRange */
     , (451600204,  34,       1) /* PowerupTime */
     , (451600204,  36,       1) /* ChargeSpeed */
	 , (451600204,  43,       3) /* GeneratorRadius */
     , (451600204,  64,       1) /* ResistSlash */
     , (451600204,  65,    0.52) /* ResistPierce */
     , (451600204,  66,    0.75) /* ResistBludgeon */
     , (451600204,  67,       1) /* ResistFire */
     , (451600204,  68,     0.2) /* ResistCold */
     , (451600204,  69,    0.75) /* ResistAcid */
     , (451600204,  70,    0.86) /* ResistElectric */
     , (451600204,  71,       1) /* ResistHealthBoost */
     , (451600204,  72,       1) /* ResistStaminaDrain */
     , (451600204,  73,       1) /* ResistStaminaBoost */
     , (451600204,  74,       1) /* ResistManaDrain */
     , (451600204,  75,       1) /* ResistManaBoost */
     , (451600204,  80,     2.6) /* AiUseMagicDelay */
     , (451600204, 104,      10) /* ObviousRadarRange */
     , (451600204, 122,       2) /* AiAcquireHealth */
     , (451600204, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (451600204,   1, 'Lich') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (451600204,   1, 0x02000197) /* Setup */
     , (451600204,   2, 0x09000017) /* MotionTable */
     , (451600204,   3, 0x20000016) /* SoundTable */
     , (451600204,   4, 0x30000000) /* CombatTable */
     , (451600204,   6, 0x04000742) /* PaletteBase */
     , (451600204,   7, 0x10000066) /* ClothingBase */
     , (451600204,   8, 0x06001226) /* Icon */
     , (451600204,  22, 0x34000028) /* PhysicsEffectTable */
     , (451600204,  32,        248) /* WieldedTreasureType */
     , (451600204,  35,      10021) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (451600204,   1, 10000, 0, 0) /* Strength */
     , (451600204,   2,  850, 0, 0) /* Endurance */
     , (451600204,   3,  850, 0, 0) /* Quickness */
     , (451600204,   4, 10000, 0, 0) /* Coordination */
     , (451600204,   5,  650, 0, 0) /* Focus */
     , (451600204,   6,  650, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (451600204,   1,     9000, 0, 0, 9000) /* MaxHealth */
     , (451600204,   3,      700, 0, 0,  700) /* MaxStamina */
     , (451600204,   5,      700, 0, 0,  700) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (451600204,  6, 0, 3, 0, 330, 0, 0) /* MeleeDefense        Specialized */
     , (451600204,  7, 0, 3, 0, 330, 0, 0) /* MissileDefense      Specialized */
     , (451600204, 14, 0, 3, 0,  50, 0, 0) /* ArcaneLore          Specialized */
     , (451600204, 15, 0, 3, 0, 315, 0, 0) /* MagicDefense        Specialized */
     , (451600204, 20, 0, 3, 0, 180, 0, 0) /* Deception           Specialized */
     , (451600204, 31, 0, 3, 0, 580, 0, 0) /* CreatureEnchantment Specialized */
     , (451600204, 33, 0, 3, 0, 580, 0, 0) /* LifeMagic           Specialized */
     , (451600204, 34, 0, 3, 0, 580, 0, 0) /* WarMagic            Specialized */
     , (451600204, 44, 0, 3, 0, 9800, 0, 0) /* HeavyWeapons        Specialized */
     , (451600204, 45, 0, 3, 0, 9800, 0, 0) /* LightWeapons        Specialized */
     , (451600204, 46, 0, 3, 0, 9800, 0, 0) /* FinesseWeapons      Specialized */
     , (451600204, 47, 0, 3, 0, 7500, 0, 0) /* MissileWeapons      Specialized */
     , (451600204, 48, 0, 3, 0, 580, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (451600204,  0,  4,  0,    0,   70,   56,   21,   39,   13,   35,   39,   47,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (451600204,  1,  4,  0,    0,   80,   64,   24,   44,   14,   40,   44,   54,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (451600204,  2,  4,  0,    0,   80,   64,   24,   44,   14,   40,   44,   54,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (451600204,  3,  4,  0,    0,   70,   56,   21,   39,   13,   35,   39,   47,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (451600204,  4,  4,  0,    0,   80,   64,   24,   44,   14,   40,   44,   54,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (451600204,  5,  4,  2, 0.75,   80,   64,   24,   44,   14,   40,   44,   54,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (451600204,  6,  4,  0,    0,   90,   72,   27,   50,   16,   45,   50,   60,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (451600204,  7,  4,  0,    0,   90,   72,   27,   50,   16,   45,   50,   60,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (451600204,  8,  4,  3, 0.75,   90,   72,   27,   50,   16,   45,   50,   60,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (451600204,    4421,  2.029)  /* Incantation of Acid Arc */
     , (451600204,    4427,  2.029)  /* Incantation of Shock Arc */
     , (451600204,    4425,  2.029)  /* Incantation of Frost Arc */
     , (451600204,    4426,  2.029)  /* Incantation of Lightning Arc */
     , (451600204,    4423,  2.029)  /* Incantation of Flame Arc */
     , (451600204,    4424,  2.029)  /* Incantation of Force Arc */
     , (451600204,    4422,  2.029)  /* Incantation of Blade Arc */
     , (451600204,   4431,  2.009)  /* Incantation of Acid Blast */
     , (451600204,  4643,   2.02)  /* Incantation of Drain Health Other */
     , (451600204,  4644,   2.02)  /* Incantation of Drain Mana Other */
     , (451600204,  4316,   2.02)  /* Incantation of Mana Drain Other */
     , (451600204,  4435,  2.009)  /* Incantation of Blade Blast */
     , (451600204,  4438,  2.009)  /* Incantation of Flame Blast */
     , (451600204,  4442,  2.009)  /* Incantation of Force Blast */
     , (451600204,  4446,  2.009)  /* Incantation of Frost Blast */
     , (451600204,  4450,  2.009)  /* Incantation of Lightning Blast */
     , (451600204,  4454,  2.009)  /* Incantation of Shock Blast */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (451600204,  3 /* Death */,  0.0025, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (451600204, 1, 451610938, 0, 1, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Li Fanli (451610938) */;
