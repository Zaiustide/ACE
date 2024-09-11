DELETE FROM `weenie` WHERE `class_Id` = 4200155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4200155, 'ace4200155-DeathZoneMagic', 10, '2022-03-31 06:02:40') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4200155,   1,         16) /* ItemType - Creature */
     , (4200155,   2,         94) /* CreatureType - Energy */
     , (4200155,   3,         39) /* PaletteTemplate - Black */
     , (4200155,   6,         -1) /* ItemsCapacity */
     , (4200155,   7,         -1) /* ContainersCapacity */
     , (4200155,  16,          1) /* ItemUseable - No */
     , (4200155,  25,        999) /* Level */
     , (4200155,  27,          0) /* ArmorType - None */
     , (4200155,  40,          8) /* CombatMode - Melee */
     , (4200155,  68,          40) /* TargetingTactic - Random */
     , (4200155,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (4200155, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (4200155, 307,         999) /* DamageRating */
     , (4200155, 308,         999) /* DamageResistRating */
     , (4200155, 386,          99) /* Overpower */
	 , (4200155, 146,   		1) /* XpOverride */	 
;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4200155,   1, True ) /* Stuck */
     , (4200155,   6, False ) /* AiUsesMana */
	 , (4200155,   7, False ) /* AiUseHumanMagicAnimations */
     , (4200155,  12, True ) /* ReportCollisions */
     , (4200155,  14, True ) /* GravityStatus */
     , (4200155,  19, True ) /* Attackable */
     , (4200155,  50, True ) /* NeverFailCasting */
     , (4200155,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4200155,   1,       5) /* HeartbeatInterval */
     , (4200155,   2,       0) /* HeartbeatTimestamp */
     , (4200155,   3,     999999) /* HealthRate */
     , (4200155,   4,       3) /* StaminaRate */
     , (4200155,   5,       1) /* ManaRate */
     , (4200155,  12,     1) /* Shade */
     , (4200155,  13,    0.95) /* ArmorModVsSlash */
     , (4200155,  14,    0.95) /* ArmorModVsPierce */
     , (4200155,  15,    0.95) /* ArmorModVsBludgeon */
     , (4200155,  16,    0.65) /* ArmorModVsCold */
     , (4200155,  17,    0.65) /* ArmorModVsFire */
     , (4200155,  18,    0.75) /* ArmorModVsAcid */
     , (4200155,  19,    0.75) /* ArmorModVsElectric */
     , (4200155,  31,       5) /* VisualAwarenessRange */
     , (4200155,  34,       0.1) /* PowerupTime */
     , (4200155,  36,       0.1) /* ChargeSpeed */
     , (4200155,  39,     1) /* DefaultScale */
     , (4200155,  64,    0.99) /* ResistSlash */
     , (4200155,  65,    0.99) /* ResistPierce */
     , (4200155,  66,    0.99) /* ResistBludgeon */
     , (4200155,  67,    0.99) /* ResistFire */
     , (4200155,  68,    0.99) /* ResistCold */
     , (4200155,  69,    0.99) /* ResistAcid */
     , (4200155,  70,    0.99) /* ResistElectric */
     , (4200155,  71,       1) /* ResistHealthBoost */
     , (4200155,  72,       1) /* ResistStaminaDrain */
     , (4200155,  73,       1) /* ResistStaminaBoost */
     , (4200155,  74,       1) /* ResistManaDrain */
     , (4200155,  75,       1) /* ResistManaBoost */
     , (4200155,  80,       0.1) /* AiUseMagicDelay */
     , (4200155, 104,      5) /* ObviousRadarRange */
     , (4200155, 125,       1) /* ResistHealthDrain */
	 , (4200155,  55,       5) /* HomeRadius */
	 , (4200155, 166,     1.8) /* ResistNether */ 
	 ;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4200155,   1, 'Death Zone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4200155,   1, 0x02000BF9) /* Setup */
     , (4200155,   2, 0x09000031) /* MotionTable */
     , (4200155,   3, 0x200000BF) /* SoundTable */
     , (4200155,   4, 0x3000001E) /* CombatTable */
     , (4200155,   6, 0x04001EB6) /* PaletteBase */
     , (4200155,   7, 0x10000636) /* ClothingBase */
     , (4200155,   8, 0x06001221) /* Icon */
     , (4200155,  22, 0x340000B6) /* PhysicsEffectTable */
	 ;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (4200155,   1, 350, 0, 0) /* Strength */
     , (4200155,   2, 999, 0, 0) /* Endurance */
     , (4200155,   3, 320, 0, 0) /* Quickness */
     , (4200155,   4, 380, 0, 0) /* Coordination */
     , (4200155,   5, 999, 0, 0) /* Focus */
     , (4200155,   6, 999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (4200155,   1, 999999, 0, 0, 11775) /* MaxHealth */
     , (4200155,   3, 999999, 0, 0, 3350) /* MaxStamina */
     , (4200155,   5, 999999, 0, 0, 6680) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (4200155,  6, 0, 3, 0, 9999, 0, 0) /* MeleeDefense        Specialized */
     , (4200155,  7, 0, 3, 0, 9999, 0, 0) /* MissileDefense      Specialized */
     , (4200155, 14, 0, 3, 0, 260, 0, 0) /* ArcaneLore          Specialized */
     , (4200155, 15, 0, 3, 0, 9999, 0, 0) /* MagicDefense        Specialized */
     , (4200155, 20, 0, 3, 0, 800, 0, 0) /* Deception           Specialized */
     , (4200155, 31, 0, 3, 0, 9000, 0, 0) /* CreatureEnchantment Specialized */
     , (4200155, 32, 0, 3, 0, 9000, 0, 0) /* ItemEnchantment     Specialized */
     , (4200155, 33, 0, 3, 0, 9000, 0, 0) /* LifeMagic           Specialized */
     , (4200155, 34, 0, 3, 0, 9000, 0, 0) /* WarMagic            Specialized */
	 , (4200155, 43, 0, 3, 0, 9000, 0, 0) /* VoidMagic            Specialized */
     , (4200155, 45, 0, 3, 0, 250, 0, 0) /* LightWeapons        Specialized */
     , (4200155, 51, 0, 3, 0, 933, 0, 0) /* SneakAttack         Specialized */	 
	 ;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (4200155,  0,  2, 130,  0.5,  425,  476,  476,  476,  476,  476,  476,  476,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (4200155,  5,  4, 130,  0.5,  405,  476,  476,  476,  476,  476,  476,  476,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Hand */
     , (4200155, 16,  4, 130,    0,  405,  476,  476,  476,  476,  476,  476,  476,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (4200155, 17,  1, 130, 0.75,  405,  476,  476,  476,  476,  476,  476,  476,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (4200155, 19,  4,  0,    0,  405,  476,  476,  476,  476,  476,  476,  476,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Leg */
     , (4200155, 21,  4,  0,    0,  405,  476,  476,  476,  476,  476,  476,  476,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (4200155,  2043,   2.10) /* Weight of Eternity */
	 , (4200155,  2421,   2.15) /* Paralyzing Fear */
	 , (4200155,  4428,   2.25) /* Incantation of Martyr's Hecatomb */
	 , (4200155,  4308,   3.0) /* Incantation of Harm Other */
; 

