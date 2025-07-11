using System;
using System.Collections.Generic;
using System.Linq;

using log4net;

using ACE.Common;
using ACE.DatLoader.Entity.AnimationHooks;
using ACE.Entity.Enum;
using ACE.Entity.Models;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using ACE.Server.Entity.TownControl;
using ACE.Database;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;

namespace ACE.Server.Entity
{
    public class DamageEvent
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        // factors:
        // - lifestone protection
        // - evade
        //   - offense mod (heart seeker)
        //      - accuracy mod (missile)
        //   - defense mod (defender)
        //      - stamina mod
        // - base damage / mod
        // - damage rating / mod
        //   - recklessness
        //   - sneak attack
        //   - heritage bonus
        // - damage resistance rating /mod
        // - power meter mod
        // - critical (chance % mod / critical damage mod)
        // - attribute mod
        // - armor / mod (base al, impen / bane, life armor / imperil)
        // - elemental damage bonus
        // - slayer mod
        // - resistance mod (natural, prot, vuln)
        //   - resistance cleaving
        // - shield mod
        // - rending mod

        public Creature Attacker;
        public Creature Defender;

        public CombatType CombatType;   // melee / missile / magic

        public WorldObject DamageSource;
        public DamageType DamageType;

        public WorldObject Weapon;      // the attacker's weapon. this can be different from DamageSource,
                                        // ie. for a missile attack, the missile would the DamageSource,
                                        // and the buffs would come from the Weapon

        public AttackType AttackType;   // slash / thrust / punch / kick / offhand / multistrike
        public AttackHeight AttackHeight;

        public bool LifestoneProtection;

        public float EvasionChance;
        public uint EffectiveAttackSkill;
        public uint EffectiveDefenseSkill;
        public float AccuracyMod;

        public bool Evaded;

        public BaseDamageMod BaseDamageMod;
        public float BaseDamage { get; set; }

        public float AttributeMod;
        public float PowerMod;
        public float SlayerMod;

        public float DamageRatingBaseMod;
        public int RecklessAttackerDmgRatingBonus;
        public int RecklessDefenderDmgResistRatingPenalty;
        public float SneakAttackMod;
        public float HeritageMod;
        public float PkDamageMod;

        public float DamageRatingMod;

        public bool IsCritical;

        public float CriticalChance;
        public float CriticalDamageMod;

        public float CriticalDamageRatingMod;
        public float CriticalDamageResistanceRatingMod;

        public float DamageBeforeMitigation;

        public float ArmorMod;
        public float ResistanceMod;
        public float ShieldMod;
        public float WeaponResistanceMod;

        public float DamageResistanceRatingBaseMod;
        public float DamageResistanceRatingMod;
        public float PkDamageResistanceMod;

        public float DamageMitigated;

        // creature attacker
        public MotionCommand? AttackMotion;
        public AttackHook AttackHook;
        public KeyValuePair<CombatBodyPart, PropertiesBodyPart> AttackPart;      // the body part this monster is attacking with

        // creature defender
        public Quadrant Quadrant;

        public bool IgnoreMagicArmor =>  (Weapon?.IgnoreMagicArmor ?? false) || (Attacker?.IgnoreMagicArmor ?? false);      // ignores impen / banes

        public bool IgnoreMagicResist => (Weapon?.IgnoreMagicResist ?? false) || (Attacker?.IgnoreMagicResist ?? false);    // ignores life armor / prots

        public bool Overpower;


        // player defender
        public BodyPart BodyPart;
        public List<WorldObject> Armor;

        // creature defender
        public KeyValuePair<CombatBodyPart, PropertiesBodyPart> PropertiesBodyPart;
        public Creature_BodyPart CreaturePart;

        public float Damage;

        public bool GeneralFailure;

        public bool HasDamage => !Evaded && !LifestoneProtection;

        public bool CriticalDefended;

        public static HashSet<uint> AllowDamageTypeUndef = new HashSet<uint>()
        {
            22545,  // Obsidian Spines
            35191,  // Thunder Chicken
            38406,  // Blessed Moar
            38587,  // Ardent Moar
            38588,  // Blessed Moar
            38586,  // Verdant Moar
            40298,  // Ardent Moar
            40300,  // Blessed Moar
            40301,  // Verdant Moar
        };

        public static DamageEvent CalculateDamage(Creature attacker, Creature defender, WorldObject damageSource, MotionCommand? attackMotion = null, AttackHook attackHook = null)
        {
            var damageEvent = new DamageEvent();
            damageEvent.AttackMotion = attackMotion;
            damageEvent.AttackHook = attackHook;
            if (damageSource == null)
                damageSource = attacker;

            var damage = damageEvent.DoCalculateDamage(attacker, defender, damageSource);

            damageEvent.HandleLogging(attacker, defender);

            return damageEvent;
        }

        private float DoCalculateDamage(Creature attacker, Creature defender, WorldObject damageSource)
        {
            var playerAttacker = attacker as Player;
            var playerDefender = defender as Player;

            var pkBattle = playerAttacker != null && playerDefender != null;
            
            if (playerDefender == null)
            {
                //If defender is town control boss and attacker is not a player in PK state, dmg is zero
                if (defender.IsTownControlBoss)
                {
                    if (playerAttacker == null || !playerAttacker.IsPK)
                    {
                        //Don't allow summons or NPKs to damage the town control bosses
                        return 0.0f;
                    }
                    else
                    {
                        //Don't allow the owning clan to damage the town control bosses
                        bool playerOwnsTown = false;
                        var boss = TownControlBosses.TownControlBossMap[defender.WeenieClassId];
                        var town = TownControl.TownControl.GetTownById(boss.TownID);
                        var playerAlleg = AllegianceManager.GetAllegiance(playerAttacker);
                        if (playerAlleg != null)
                        {
                            var playerMonarchId = playerAlleg.MonarchId;
                            var playerAllegName = playerAlleg.Monarch.Player.Name;

                            if (town.CurrentOwnerID.HasValue && town.CurrentOwnerID.Value == playerMonarchId)
                            {
                                playerOwnsTown = true;
                            }
                        }

                        if (playerOwnsTown)
                        {
                            return 0.0f;
                        }

                        //Only allow clans that are whitelisted to damage the Init bosses                        
                        if (defender.IsTownControlInitBoss)
                        {
                            if (playerAlleg == null || !playerAlleg.MonarchId.HasValue || !TownControlAllegiances.IsAllowedAllegiance((int)playerAlleg.MonarchId.Value))
                            {
                                return 0.0f;
                            }
                        }
                    }
                }
                else if(WorldBoss.WorldBosses.IsWorldBoss(defender.WeenieClassId))
                {
                    if (playerAttacker == null || !playerAttacker.IsPK)
                    {
                        //Don't allow summons or NPKs to damage a world boss
                        return 0.0f;
                    }
                }
            }

            //Arenas - If this is an arena landblock
            //don't allow any dmg except while the event is in a started status and between non-eliminated players            
            if (playerDefender != null && ArenaLocation.IsArenaLandblock(playerDefender.Location.Landblock))
            {
                if (playerAttacker != null && playerAttacker.IsArenaObserver)
                    return 0.0f;

                var arenaEvent = ArenaManager.GetArenaEventByLandblock(playerDefender.Location.Landblock);
                if (arenaEvent == null || arenaEvent.Status != 4)
                {
                    return 0.0f;
                }                
            }

            Attacker = attacker;
            Defender = defender;

            CombatType = damageSource.ProjectileSource == null ? CombatType.Melee : CombatType.Missile;

            DamageSource = damageSource;

            Weapon = damageSource.ProjectileSource == null ? attacker.GetEquippedMeleeWeapon() : (damageSource.ProjectileLauncher ?? damageSource.ProjectileAmmo);

            AttackType = attacker.AttackType;
            AttackHeight = attacker.AttackHeight ?? AttackHeight.Medium;

            // check lifestone protection
            if (playerDefender != null && playerDefender.UnderLifestoneProtection)
            {
                LifestoneProtection = true;
                playerDefender.HandleLifestoneProtection();
                return 0.0f;
            }

            if (defender.Invincible)
                return 0.0f;

            // overpower
            if (attacker.Overpower != null)
                Overpower = Creature.GetOverpower(attacker, defender);

            // evasion chance
            if (!Overpower)
            {
                EvasionChance = GetEvadeChance(attacker, defender);
                if (EvasionChance > ThreadSafeRandom.Next(0.0f, 1.0f))
                {
                    Evaded = true;
                    return 0.0f;
                }
            }

            // get base damage
            if (playerAttacker != null)
                GetBaseDamage(playerAttacker);
            else
                GetBaseDamage(attacker, AttackMotion ?? MotionCommand.Invalid, AttackHook);

            if (DamageType == DamageType.Undef)
            {
                if ((attacker?.Guid.IsPlayer() ?? false) || (damageSource?.Guid.IsPlayer() ?? false))
                {
                    log.Error($"DamageEvent.DoCalculateDamage({attacker?.Name} ({attacker?.Guid}), {defender?.Name} ({defender?.Guid}), {damageSource?.Name} ({damageSource?.Guid})) - DamageType == DamageType.Undef");
                    GeneralFailure = true;
                }
            }

            if (GeneralFailure) return 0.0f;

            // get damage modifiers
            PowerMod = attacker.GetPowerMod(Weapon);
            AttributeMod = attacker.GetAttributeMod(Weapon);
            SlayerMod = WorldObject.GetWeaponCreatureSlayerModifier(Weapon, attacker, defender);

            // ratings
            DamageRatingBaseMod = Creature.GetPositiveRatingMod(attacker.GetDamageRating());
            RecklessAttackerDmgRatingBonus = attacker.GetRecklessAttackerDmgRatingBonus();
            SneakAttackMod = attacker.GetSneakAttackMod(defender);
            HeritageMod = attacker.GetHeritageBonus(Weapon) ? 1.05f : 1.0f;

            DamageRatingMod = Creature.AdditiveCombine(DamageRatingBaseMod, SneakAttackMod, HeritageMod, Creature.GetPositiveRatingMod(RecklessAttackerDmgRatingBonus));

            if (pkBattle)
            {
                PkDamageMod = Creature.GetPositiveRatingMod(attacker.GetPKDamageRating());
                DamageRatingMod = Creature.AdditiveCombine(DamageRatingMod, PkDamageMod);
            }

            // damage before mitigation
            DamageBeforeMitigation = BaseDamage * AttributeMod * PowerMod * SlayerMod * DamageRatingMod;

            // critical hit?
            var attackSkill = attacker.GetCreatureSkill(attacker.GetCurrentWeaponSkill());
            CriticalChance = WorldObject.GetWeaponCriticalChance(Weapon, attacker, attackSkill, defender);

            // https://asheron.fandom.com/wiki/Announcements_-_2002/08_-_Atonement
            // It should be noted that any time a character is logging off, PK or not, all physical attacks against them become automatically critical.
            // (Note that spells do not share this behavior.) We hope this will stress the need to log off in a safe place.

            if (playerDefender != null && (playerDefender.IsLoggingOut || playerDefender.PKLogout))
                CriticalChance = 1.0f;

            if (CriticalChance > ThreadSafeRandom.Next(0.0f, 1.0f))
            {
                if (playerDefender != null && playerDefender.AugmentationCriticalDefense > 0)
                {
                    var criticalDefenseMod = playerAttacker != null ? 0.05f : 0.25f;
                    var criticalDefenseChance = playerDefender.AugmentationCriticalDefense * criticalDefenseMod;

                    if (criticalDefenseChance > ThreadSafeRandom.Next(0.0f, 1.0f))
                        CriticalDefended = true;
                }

                if (!CriticalDefended)
                {
                    IsCritical = true;

                    // verify: CriticalMultiplier only applied to the additional crit damage,
                    // whereas CD/CDR applied to the total damage (base damage + additional crit damage)
                    CriticalDamageMod = 1.0f + WorldObject.GetWeaponCritDamageMod(Weapon, attacker, attackSkill, defender);

                    CriticalDamageRatingMod = Creature.GetPositiveRatingMod(attacker.GetCritDamageRating());

                    // recklessness excluded from crits
                    RecklessAttackerDmgRatingBonus = 0;
                    DamageRatingMod = Creature.AdditiveCombine(DamageRatingBaseMod, CriticalDamageRatingMod, SneakAttackMod, HeritageMod);

                    if (pkBattle)
                        DamageRatingMod = Creature.AdditiveCombine(DamageRatingMod, PkDamageMod);

                    DamageBeforeMitigation = BaseDamageMod.MaxDamage * AttributeMod * PowerMod * SlayerMod * DamageRatingMod * CriticalDamageMod;
                }
            }

            if (playerAttacker != null && playerDefender != null && Weapon != null)
            {
                var multi = (float?)Weapon.GetProperty(ACE.Entity.Enum.Properties.PropertyFloat.ForedawnPvpDamageMulti);
                if (multi.HasValue)
                    DamageBeforeMitigation *= multi.Value;
            }

            // armor rending and cleaving
            var armorRendingMod = 1.0f;
            if (Weapon != null && Weapon.HasImbuedEffect(ImbuedEffectType.ArmorRending))
                armorRendingMod = WorldObject.GetArmorRendingMod(attackSkill);

            var armorCleavingMod = attacker.GetArmorCleavingMod(Weapon);

            var ignoreArmorMod = Math.Min(armorRendingMod, armorCleavingMod);

            // get body part / armor pieces / armor modifier
            if (playerDefender != null)
            {
                // select random body part @ current attack height
                GetBodyPart(AttackHeight);

                // get player armor pieces
                Armor = attacker.GetArmorLayers(playerDefender, BodyPart);

                // get armor modifiers
                ArmorMod = attacker.GetArmorMod(playerDefender, DamageType, Armor, Weapon, ignoreArmorMod);
            }
            else
            {
                // determine height quadrant
                Quadrant = GetQuadrant(Defender, Attacker, AttackHeight, DamageSource);

                // select random body part @ current attack height
                GetBodyPart(Defender, Quadrant);
                if (Evaded)
                    return 0.0f;

                Armor = CreaturePart.GetArmorLayers(PropertiesBodyPart.Key);

                // get target armor
                ArmorMod = CreaturePart.GetArmorMod(DamageType, Armor, Attacker, Weapon, ignoreArmorMod);
            }

            if (Weapon != null && Weapon.HasImbuedEffect(ImbuedEffectType.IgnoreAllArmor))
                ArmorMod = 1.0f;

            // get resistance modifiers
            WeaponResistanceMod = WorldObject.GetWeaponResistanceModifier(Weapon, attacker, attackSkill, DamageType);

            if (playerDefender != null)
            {
                ResistanceMod = playerDefender.GetResistanceMod(DamageType, Attacker, Weapon, WeaponResistanceMod);
            }
            else
            {
                var resistanceType = Creature.GetResistanceType(DamageType);
                ResistanceMod = (float)Math.Max(0.0f, defender.GetResistanceMod(resistanceType, Attacker, Weapon, WeaponResistanceMod));
            }

            // damage resistance rating
            DamageResistanceRatingMod = DamageResistanceRatingBaseMod = defender.GetDamageResistRatingMod(CombatType);            

            if (IsCritical)
            {
                CriticalDamageResistanceRatingMod = Creature.GetNegativeRatingMod(defender.GetCritDamageResistRating());

                DamageResistanceRatingMod = Creature.AdditiveCombine(DamageResistanceRatingBaseMod, CriticalDamageResistanceRatingMod);
            }

            //Apply a penalty to damage resist rating for defenders who are in a reckless state
            RecklessDefenderDmgResistRatingPenalty = defender.GetRecklessDefenderDmgRatingPenalty();
            if(RecklessDefenderDmgResistRatingPenalty > 0)
            {
                DamageResistanceRatingMod = Creature.AdditiveCombine(DamageResistanceRatingMod, Creature.GetPositiveRatingMod(RecklessDefenderDmgResistRatingPenalty));
            }            

            if (pkBattle)
            {
                PkDamageResistanceMod = Creature.GetNegativeRatingMod(defender.GetPKDamageResistRating());

                DamageResistanceRatingMod = Creature.AdditiveCombine(DamageResistanceRatingMod, PkDamageResistanceMod);
            }

            // get shield modifier
            ShieldMod = defender.GetShieldMod(attacker, DamageType, Weapon);

            // calculate final output damage
            Damage = DamageBeforeMitigation * ArmorMod * ShieldMod * ResistanceMod * DamageResistanceRatingMod;

            if (playerAttacker != null && playerDefender != null)
            {
                float config_mod = 1;

                if (Weapon != null)
                {
                    try
                    {
                        switch (Weapon.WeaponSkill)
                        {
                            case Skill.FinesseWeapons:
                                config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_fw").Item;
                                break;
                            case Skill.LightWeapons:
                                config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_lw").Item;
                                if (Weapon.W_AttackType == AttackType.TripleStrike)
                                {
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_triplestrike").Item;                                    
                                }                                                                
                                break;
                            case Skill.HeavyWeapons:
                                config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_hw").Item;
                                if(AttackType.MultiStrike.HasFlag(Weapon.W_AttackType))
                                {
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_multistrike").Item;
                                }
                                break;
                            case Skill.TwoHandedCombat:
                                config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_2h").Item;
                                break;
                            case Skill.MissileWeapons:                                
                                if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                {
                                    config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_bow").Item;
                                }
                                else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                {
                                    config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow").Item;
                                }
                                else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                {
                                    config_mod = (float)PropertyManager.GetDouble("pvp_dmg_mod_tw").Item;
                                }
                                                             
                                break;                                                                                           

                        }

                        if (Weapon.HasImbuedEffect(ImbuedEffectType.ArmorRending))
                        {
                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_ar").Item;
                            switch (Weapon.WeaponSkill)
                            {
                                case Skill.FinesseWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_ar").Item;
                                    break;
                                case Skill.LightWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_ar").Item;
                                    break;
                                case Skill.HeavyWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_ar").Item;
                                    break;
                                case Skill.TwoHandedCombat:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_ar").Item;
                                    break;
                                case Skill.MissileWeapons:
                                    if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_ar").Item;
                                    }
                                    else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_ar").Item;
                                    }
                                    else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_ar").Item;
                                    }
                                    
                                    break;

                            }
                        }
                        else if (Weapon.HasImbuedEffect(ImbuedEffectType.CripplingBlow))
                        {
                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_cb").Item;
                            switch (Weapon.WeaponSkill)
                            {
                                case Skill.FinesseWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_cb").Item;
                                    break;
                                case Skill.LightWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_cb").Item;
                                    if(Weapon.W_AttackType == AttackType.TripleStrike)
                                    {
                                        if (IsCritical)
                                        {
                                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_cb_crit_triplestrike").Item; 
                                        }
                                    }
                                    break;
                                case Skill.HeavyWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_cb").Item;
                                    if (AttackType.MultiStrike.HasFlag(Weapon.W_AttackType))
                                    {
                                        if (IsCritical)
                                        {
                                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_cb_crit_multistrike").Item;
                                        }
                                    }
                                    break;
                                case Skill.TwoHandedCombat:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_cb").Item;
                                    break;
                                case Skill.MissileWeapons:
                                    if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_cb").Item;
                                    }
                                    else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_cb").Item;
                                    }
                                    else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_cb").Item;
                                    }
                                    break;

                            }

                            if(IsCritical)
                            {
                                switch (Weapon.WeaponSkill)
                                {
                                    case Skill.FinesseWeapons:
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_cb_crit").Item;
                                        break;
                                    case Skill.LightWeapons:
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_cb_crit").Item;
                                        break;
                                    case Skill.HeavyWeapons:
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_cb_crit").Item;
                                        break;
                                    case Skill.TwoHandedCombat:
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_cb_crit").Item;
                                        break;
                                    case Skill.MissileWeapons:
                                        if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                        {
                                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_cb_crit").Item;
                                        }
                                        else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                        {
                                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_cb_crit").Item;
                                        }
                                        else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                        {
                                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_cb_crit").Item;
                                        }
                                        break;

                                }
                            }
                        }
                        else if (Weapon.HasImbuedEffect(ImbuedEffectType.CriticalStrike))
                        {
                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_cs").Item;
                            switch (Weapon.WeaponSkill)
                            {                                
                                case Skill.FinesseWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_cs").Item;
                                    break;
                                case Skill.LightWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_cs").Item;
                                    break;
                                case Skill.HeavyWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_cs").Item;
                                    break;
                                case Skill.TwoHandedCombat:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_cs").Item;
                                    break;
                                case Skill.MissileWeapons:
                                    if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_cs").Item;
                                    }
                                    else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_cs").Item;
                                    }
                                    else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_cs").Item;
                                    }
                                    break;

                            }
                        }
                        else if (Weapon.IgnoreMagicArmor && Weapon.IgnoreMagicResist)
                        {
                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hollow").Item;
                            switch (Weapon.WeaponSkill)
                            {
                                case Skill.FinesseWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_hollow").Item;
                                    break;
                                case Skill.LightWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_hollow").Item;
                                    break;
                                case Skill.HeavyWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_hollow").Item;
                                    break;
                                case Skill.TwoHandedCombat:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_hollow").Item;
                                    break;
                                case Skill.MissileWeapons:
                                    if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_hollow").Item;
                                    }
                                    else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_hollow").Item;
                                    }
                                    else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_hollow").Item;
                                    }
                                    break;

                            }
                        }
                        else if (Weapon.HasImbuedEffect(ImbuedEffectType.IgnoreAllArmor))
                        {
                            config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_phantom").Item;
                            switch (Weapon.WeaponSkill)
                            {
                                case Skill.FinesseWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_fw_phantom").Item;
                                    break;
                                case Skill.LightWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_lw_phantom").Item;
                                    break;
                                case Skill.HeavyWeapons:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_hw_phantom").Item;
                                    break;
                                case Skill.TwoHandedCombat:
                                    config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_2h_phantom").Item;
                                    break;
                                case Skill.MissileWeapons:
                                    if(Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Bow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_bow_phantom").Item;
                                    }
                                    else if (Weapon.DefaultCombatStyle != null && Weapon.DefaultCombatStyle == CombatStyle.Crossbow)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_xbow_phantom").Item;
                                    }
                                    else if (Weapon.IsThrownWeapon || Weapon.IsAtlatl)
                                    {
                                        config_mod *= (float)PropertyManager.GetDouble("pvp_dmg_mod_tw_phantom").Item;
                                    }
                                    break;
                            }
                        }

                        Damage = Damage * config_mod;
                    }
                    catch (Exception ex)
                    {
                        log.Error($"Failed applying server configured pvp mods. Ex: {ex}");
                    }
                }
            }

            //For town control, reduce the dmg on the boss based on distance of attacker
            if (defender.IsTownControlConflictBoss)
            {
                var distance = defender.Location.DistanceTo(attacker.Location);
                if (distance > 15)
                {
                    var distanceMod = 0.2f * (20 - distance);
                    if (distanceMod < 0)
                        distanceMod = 0;

                    Damage = Damage * distanceMod;
                }
            }

            DamageMitigated = DamageBeforeMitigation - Damage;

            //Arenas - If this is an arena landblock
            //track total dmg dealt and received            
            if (playerDefender != null && ArenaLocation.IsArenaLandblock(playerDefender.Location.Landblock))
            {
                var arenaEvent = ArenaManager.GetArenaEventByLandblock(playerDefender.Location.Landblock);
                if (arenaEvent != null && arenaEvent.Status == 4 && playerAttacker != null)
                {                    
                    var attackerArenaPlayer = arenaEvent.Players.FirstOrDefault(x => x.CharacterId == playerAttacker.Character.Id);
                    var defenderArenaPlayer = arenaEvent.Players.FirstOrDefault(x => x.CharacterId == playerDefender.Character.Id);

                    if (attackerArenaPlayer != null && defenderArenaPlayer != null)
                    {
                        attackerArenaPlayer.TotalDmgDealt += (uint)Math.Round(Damage);
                        defenderArenaPlayer.TotalDmgReceived += (uint)Math.Round(Damage);
                    }
                }                
            }

            return Damage;
        }

        public Quadrant GetQuadrant(Creature defender, Creature attacker, AttackHeight attackHeight, WorldObject damageSource)
        {
            var quadrant = attackHeight.ToQuadrant();

            var wo = damageSource.CurrentLandblock != null ? damageSource : attacker;

            quadrant |= wo.GetRelativeDir(defender);

            return quadrant;
        }

        /// <summary>
        /// Returns the chance for creature to avoid monster attack
        /// </summary>
        public float GetEvadeChance(Creature attacker, Creature defender)
        {
            AccuracyMod = attacker.GetAccuracyMod(Weapon);

            EffectiveAttackSkill = attacker.GetEffectiveAttackSkill();

            //var attackType = attacker.GetCombatType();

            EffectiveDefenseSkill = defender.GetEffectiveDefenseSkill(CombatType);

            var evadeChance = 1.0f - SkillCheck.GetSkillChance(EffectiveAttackSkill, EffectiveDefenseSkill);
            return (float)evadeChance;
        }

        /// <summary>
        /// Returns the base damage for a player attacker
        /// </summary>
        public void GetBaseDamage(Player attacker)
        {
            if (DamageSource.ItemType == ItemType.MissileWeapon)
            {
                DamageType = DamageSource.W_DamageType;

                // handle prismatic arrows
                if (DamageType == DamageType.Base)
                {
                    if (Weapon != null && Weapon.W_DamageType != DamageType.Undef)
                        DamageType = Weapon.W_DamageType;
                    else
                        DamageType = DamageType.Pierce;
                }
            }
            else
                DamageType = attacker.GetDamageType(false, CombatType.Melee);

            // TODO: combat maneuvers for player?
            BaseDamageMod = attacker.GetBaseDamageMod(DamageSource);

            // some quest bows can have built-in damage bonus
            if (Weapon?.WeenieType == WeenieType.MissileLauncher)
                BaseDamageMod.DamageBonus += Weapon.Damage ?? 0;

            if (DamageSource.ItemType == ItemType.MissileWeapon)
                BaseDamageMod.ElementalBonus = WorldObject.GetMissileElementalDamageBonus(Weapon, attacker, DamageType);

            BaseDamage = (float)ThreadSafeRandom.Next(BaseDamageMod.MinDamage, BaseDamageMod.MaxDamage);
        }

        /// <summary>
        /// Returns the base damage for a non-player attacker
        /// </summary>
        public void GetBaseDamage(Creature attacker, MotionCommand motionCommand, AttackHook attackHook)
        {
            AttackPart = attacker.GetAttackPart(motionCommand, attackHook);
            if (AttackPart.Value == null)
            {
                GeneralFailure = true;
                return;
            }

            BaseDamageMod = attacker.GetBaseDamage(AttackPart.Value);
            BaseDamage = (float)ThreadSafeRandom.Next(BaseDamageMod.MinDamage, BaseDamageMod.MaxDamage);

            DamageType = attacker.GetDamageType(AttackPart.Value, CombatType);
        }

        /// <summary>
        /// Returns a body part for a player defender
        /// </summary>
        public void GetBodyPart(AttackHeight attackHeight)
        {
            // select random body part @ current attack height
            BodyPart = BodyParts.GetBodyPart(attackHeight);
        }

        public static readonly Quadrant LeftRight = Quadrant.Left | Quadrant.Right;
        public static readonly Quadrant FrontBack = Quadrant.Front | Quadrant.Back;

        /// <summary>
        /// Returns a body part for a creature defender
        /// </summary>
        public void GetBodyPart(Creature defender, Quadrant quadrant)
        {
            // get cached body parts table
            var bodyParts = Creature.GetBodyParts(defender.WeenieClassId);

            // rng roll for body part
            var bodyPart = bodyParts.RollBodyPart(quadrant);

            if (bodyPart == CombatBodyPart.Undefined)
            {
                log.DebugFormat("DamageEvent.GetBodyPart({0} ({1}) ) - couldn't find body part for wcid {2}, Quadrant {3}", defender?.Name, defender?.Guid, defender.WeenieClassId, quadrant);
                Evaded = true;
                return;
            }

            //Console.WriteLine($"AttackHeight: {AttackHeight}, Quadrant: {quadrant & FrontBack}{quadrant & LeftRight}, AttackPart: {bodyPart}");

            defender.Biota.PropertiesBodyPart.TryGetValue(bodyPart, out var value);
            PropertiesBodyPart = new KeyValuePair<CombatBodyPart, PropertiesBodyPart>(bodyPart, value);

            // select random body part @ current attack height
            /*BiotaPropertiesBodyPart = BodyParts.GetBodyPart(defender, attackHeight);

            if (BiotaPropertiesBodyPart == null)
            {
                Evaded = true;
                return;
            }*/

            CreaturePart = new Creature_BodyPart(defender, PropertiesBodyPart);
        }

        public void ShowInfo(Creature creature)
        {
            var targetInfo = PlayerManager.GetOnlinePlayer(creature.DebugDamageTarget);
            if (targetInfo == null)
            {
                creature.DebugDamage = Creature.DebugDamageType.None;
                return;
            }

            // setup
            var info = $"Attacker: {Attacker.Name} ({Attacker.Guid})\n";
            info += $"Defender: {Defender.Name} ({Defender.Guid})\n";

            info += $"CombatType: {CombatType}\n";

            info += $"DamageSource: {DamageSource.Name} ({DamageSource.Guid})\n";
            info += $"DamageType: {DamageType}\n";

            var weaponName = Weapon != null ? $"{Weapon.Name} ({Weapon.Guid})" : "None\n";
            info += $"Weapon: {weaponName}\n";

            info += $"AttackType: {AttackType}\n";
            info += $"AttackHeight: {AttackHeight}\n";

            // lifestone protection
            if (LifestoneProtection)
                info += $"LifestoneProtection: {LifestoneProtection}\n";

            // evade
            if (AccuracyMod != 0.0f && AccuracyMod != 1.0f)
                info += $"AccuracyMod: {AccuracyMod}\n";

            info += $"EffectiveAttackSkill: {EffectiveAttackSkill}\n";
            info += $"EffectiveDefenseSkill: {EffectiveDefenseSkill}\n";

            if (Attacker.Overpower != null)
                info += $"Overpower: {Overpower} ({Creature.GetOverpowerChance(Attacker, Defender)})\n";

            info += $"EvasionChance: {EvasionChance}\n";
            info += $"Evaded: {Evaded}\n";

            if (!(Attacker is Player))
            {
                if (AttackMotion != null)
                    info += $"AttackMotion: {AttackMotion}\n";
                if (AttackPart.Value != null)
                    info += $"AttackPart: {AttackPart.Key}\n";
            }

            // base damage
            if (BaseDamageMod != null)
                info += $"BaseDamageRange: {BaseDamageMod.Range}\n";


            info += $"BaseDamage: {BaseDamage}\n";

            // damage modifiers
            info += $"AttributeMod: {AttributeMod}\n";

            if (PowerMod != 0.0f && PowerMod != 1.0f)
                info += $"PowerMod: {PowerMod}\n";

            if (SlayerMod != 0.0f && SlayerMod != 1.0f)
                info += $"SlayerMod: {SlayerMod}\n";

            if (BaseDamageMod != null)
            {
                if (BaseDamageMod.DamageBonus != 0)
                    info += $"DamageBonus: {BaseDamageMod.DamageBonus}\n";

                if (BaseDamageMod.DamageMod != 0.0f && BaseDamageMod.DamageMod != 1.0f)
                    info += $"DamageMod: {BaseDamageMod.DamageMod}\n";

                if (BaseDamageMod.ElementalBonus != 0)
                    info += $"ElementalDamageBonus: {BaseDamageMod.ElementalBonus}\n";
            }

            // critical hit
            info += $"CriticalChance: {CriticalChance}\n";
            info += $"CriticalHit: {IsCritical}\n";

            if (CriticalDefended)
                info += $"CriticalDefended: {CriticalDefended}\n";

            if (CriticalDamageMod != 0.0f && CriticalDamageMod != 1.0f)
                info += $"CriticalDamageMod: {CriticalDamageMod}\n";

            if (CriticalDamageRatingMod != 0.0f && CriticalDamageRatingMod != 1.0f)
                info += $"CriticalDamageRatingMod: {CriticalDamageRatingMod}\n";

            // damage ratings
            if (DamageRatingBaseMod != 0.0f && DamageRatingBaseMod != 1.0f)
                info += $"DamageRatingBaseMod: {DamageRatingBaseMod}\n";

            if (HeritageMod != 0.0f && HeritageMod != 1.0f)
                info += $"HeritageMod: {HeritageMod}\n";

            if (RecklessAttackerDmgRatingBonus > 0)
                info += $"RecklessAttackerDmgRatingBonus: {RecklessAttackerDmgRatingBonus}\n";

            if (RecklessDefenderDmgResistRatingPenalty > 0)
                info += $"RecklessDefenderDmgResistRatingPenalty: {RecklessDefenderDmgResistRatingPenalty}\n";

            if (SneakAttackMod != 0.0f && SneakAttackMod != 1.0f)
                info += $"SneakAttackMod: {SneakAttackMod}\n";

            if (PkDamageMod != 0.0f && PkDamageMod != 1.0f)
                info += $"PkDamageMod: {PkDamageMod}\n";

            if (DamageRatingMod != 0.0f && DamageRatingMod != 1.0f)
                info += $"DamageRatingMod: {DamageRatingMod}\n";

            if (BodyPart != 0)
            {
                // player body part
                info += $"BodyPart: {BodyPart}\n";
            }
            if (Armor != null && Armor.Count > 0)
            {
                info += $"Armors: {string.Join(", ", Armor.Select(i => i.Name))}\n";
            }

            if (CreaturePart != null)
            {
                // creature body part
                info += $"BodyPart: {PropertiesBodyPart.Key}\n";
                info += $"BaseArmor: {CreaturePart.Biota.Value.BaseArmor}\n";
            }

            // damage mitigation
            if (ArmorMod != 0.0f && ArmorMod != 1.0f)
                info += $"ArmorMod: {ArmorMod}\n";

            if (ResistanceMod != 0.0f && ResistanceMod != 1.0f)
                info += $"ResistanceMod: {ResistanceMod}\n";

            if (ShieldMod != 0.0f && ShieldMod != 1.0f)
                info += $"ShieldMod: {ShieldMod}\n";

            if (WeaponResistanceMod != 0.0f && WeaponResistanceMod != 1.0f)
                info += $"WeaponResistanceMod: {WeaponResistanceMod}\n";

            if (DamageResistanceRatingBaseMod != 0.0f && DamageResistanceRatingBaseMod != 1.0f)
                info += $"DamageResistanceRatingBaseMod: {DamageResistanceRatingBaseMod}\n";

            if (CriticalDamageResistanceRatingMod != 0.0f && CriticalDamageResistanceRatingMod != 1.0f)
                info += $"CriticalDamageResistanceRatingMod: {CriticalDamageResistanceRatingMod}\n";

            if (PkDamageResistanceMod != 0.0f && PkDamageResistanceMod != 1.0f)
                info += $"PkDamageResistanceMod: {PkDamageResistanceMod}\n";

            if (DamageResistanceRatingMod != 0.0f && DamageResistanceRatingMod != 1.0f)
                info += $"DamageResistanceRatingMod: {DamageResistanceRatingMod}\n";

            if (IgnoreMagicArmor)
                info += $"IgnoreMagicArmor: {IgnoreMagicArmor}\n";
            if (IgnoreMagicResist)
                info += $"IgnoreMagicResist: {IgnoreMagicResist}\n";

            // final damage
            info += $"DamageBeforeMitigation: {DamageBeforeMitigation}\n";
            info += $"DamageMitigated: {DamageMitigated}\n";
            info += $"Damage: {Damage}\n";

            info += "----";

            targetInfo.Session.Network.EnqueueSend(new GameMessageSystemChat(info, ChatMessageType.Broadcast));
        }

        public void HandleLogging(Creature attacker, Creature defender)
        {
            if (attacker != null && (attacker.DebugDamage & Creature.DebugDamageType.Attacker) != 0)
            {
                ShowInfo(attacker);
            }
            if (defender != null && (defender.DebugDamage & Creature.DebugDamageType.Defender) != 0)
            {
                ShowInfo(defender);
            }
        }

        public AttackConditions AttackConditions
        {
            get
            {
                var attackConditions = new AttackConditions();

                if (CriticalDefended)
                    attackConditions |= AttackConditions.CriticalProtectionAugmentation;
                if (RecklessAttackerDmgRatingBonus > 0)
                    attackConditions |= AttackConditions.Recklessness;
                if (SneakAttackMod > 1.0f)
                    attackConditions |= AttackConditions.SneakAttack;
                if (Overpower)
                    attackConditions |= AttackConditions.Overpower;

                return attackConditions;
            }
        }
    }
}
