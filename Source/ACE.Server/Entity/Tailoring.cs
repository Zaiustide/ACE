using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Security.Policy;
using ACE.Common;
using ACE.Database.Models.Auth;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Factories.Tables;
using ACE.Server.Managers;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using log4net;
using EquipMask = ACE.Entity.Enum.EquipMask;
using ItemType = ACE.Entity.Enum.ItemType;

namespace ACE.Server.Entity
{
    public class Tailoring
    {
        // http://acpedia.org/wiki/Tailoring
        // https://asheron.fandom.com/wiki/Tailoring

        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        // tailoring kits
        public const uint ArmorTailoringKit = 41956;
        public const uint WeaponTailoringKit = 51445;

        public const uint ArmorMainReductionTool = 42622;
        public const uint ArmorLowerReductionTool = 44879;
        public const uint ArmorMiddleReductionTool = 44880;

        public const uint ArmorLayeringToolTop = 42724;
        public const uint ArmorLayeringToolBottom = 42726;

        //public const uint MorphGemArmorLevel = 4200022;
        public const uint MorphGemValue = 4200023;
        public const uint MorphGemRandomWorkmanship = 490027;
        public const uint MorphGemArcane = 4200026;
        //public const uint MorphGemRandomEpic = 4200027;
        //public const uint MorphGemRandomSet = 4200028;
        public const uint MorphGemRemoveMissileDReq = 480484;
        public const uint MorphGemRemoveMeleeDReq = 480483;
        public const uint MorphGemRandomizeWeaponImbue = 480486;
        public const uint MorphGemRemovePlayerReq = 480485;
        public const uint MorphGemSlayerRandom = 480610;
        public const uint MorphGemRemoveLevelReq = 480609;
        public const uint MorphGemSlayerUpgrade = 480639;
        public const uint MorphGemBurningCoal = 480638;
        public const uint MorphGemImpen = 490025;
        public const uint MorphGemBanditHilt = 490026;
        public const uint MorphGemRareUpgrade = 490040;
        public const uint MorphGemTinkeringTool = 490298;        
        public const uint MorphGemCDR = 490273;         
        public const uint MorphGemCD = 490272;         
        public const uint MorphGemRareReduction = 490270;        
        public const uint MorphGemJewelersSawblade = 490271;
        public const uint MorphGemAddSlayer = 490304;
        public const int MorphGemMinValue = 20000;
		public const uint MorphGemHematite = 490284;
		public const uint MorphGemStrengthbeer = 490327;
		public const uint MorphGemEndurancebeer = 490328;
		public const uint MorphGemCoordinationbeer = 490329;
		public const uint MorphGemQuicknessbeer = 490330;
		public const uint MorphGemFocusbeer = 490331;
		public const uint MorphGemWillpowerbeer = 490332;

        public const uint MorphGemHeroicMaster = 1548800;
        public const uint MorphGemDotResist = 1548801;
        public const uint MorphGemRandomSet = 1548802;
        public const uint MorphGemRandomCantrip = 1548803;
        public const uint MorphGemBurden = 1548804;
        public const uint MorphGemRareDmgBoost = 1548805;
        public const uint MorphGemRareDmgReduction = 1548806;

        public static readonly List<int> HeroicMasterSpells =
            new List<int>()
            {
                4733,    //Master Duelist's Coordination
                4737,   //Master Hero's Endurance
                4741,    //Master Sage's Focus
                4745,    //Master Rover's Quickness
                4749,    //Master Brute's Strength
                4753,    //Master Adherent's Willpower
                4755,    //Journeyman Survivor's Health
                4757,    //Journeyman Clairvoyant's Mana
                4759,    //Journeyman Tracker's Stamina
                4906,    //Apprentice Challenger's Rejuvenation
                6333,    //Gauntlet Damage Reduction II
                6335,    //Gauntlet Critical Damage Reduction II
                6336    //Gauntlet Healing Boost I
            };

        // Some WCIDs have Overlay Icons that need to be removed (e.g. Olthoi Alduressa Gauntlets or Boots)
        // There are other examples not here, like some stamped shields that might need to be added, as well.
        private static Dictionary<uint, int> ArmorOverlayIcons = new Dictionary<uint, int>{
            // These are from cache.bin 
            {22551, 100673784}, // Atlatl Tattoo
            {22552, 100673758}, // Axe Tattoo
            {22553, 100673759}, // Bow Tattoo
            {22554, 100673762}, // Crossbow Tattoo
            {22555, 100673763}, // Dagger Tattoo
            {22556, 100673774}, // Mace Tattoo
            {22557, 100673775}, // Magic Defense Tattoo
            {22558, 100673777}, // Mana Conversion Tattoo
            {22559, 100673778}, // Melee Defense Tattoo
            {22560, 100673779}, // Missile Defense Tattoo
            {22561, 100673781}, // Spear Tattoo
            {22562, 100673782}, // Staff Tattoo
            {22563, 100673783}, // Sword Tattoo
            {22564, 100673785}, // Unarmed Tattoo
            {31394, 100691319}, // Circle of Raven Might

            // These items were stampable and could have had a number of different icons
            {25811, 0}, // Shield of Power
            {25843, 0}, // Nefane Shield

            // From pcaps
            {37187, 100690144}, // Olthoi Alduressa Gauntlets
            {37207, 100690146}, // Olthoi Alduressa Boots
            {41198, 100690144}, // Gauntlets of Darkness
            {41201, 100690146}, // Sollerets of Darkness
        };

        // thanks for phenyl naphthylamine for a lot the initial work here!
        public static void UseObjectOnTarget(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"Tailoring.UseObjectOnTarget({player.Name}, {source.Name}, {target.Name})");

            // verify use requirements
            var useError = VerifyUseRequirements(player, source, target);
            if (useError != WeenieError.None)
            {
                player.SendUseDoneEvent(useError);
                return;
            }

            var animTime = 0.0f;

            var actionChain = new ActionChain();

            // handle switching to peace mode
            if (player.CombatMode != CombatMode.NonCombat)
            {
                var stanceTime = player.SetCombatMode(CombatMode.NonCombat);
                actionChain.AddDelaySeconds(stanceTime);

                animTime += stanceTime;
            }

            // perform clapping motion
            animTime += player.EnqueueMotion(actionChain, MotionCommand.ClapHands);

            actionChain.AddAction(player, () =>
            {
                // re-verify
                var useError = VerifyUseRequirements(player, source, target);
                if (useError != WeenieError.None)
                {
                    player.SendUseDoneEvent(useError);
                    return;
                }

                DoTailoring(player, source, target);
            });

            actionChain.EnqueueChain();

            player.NextUseTime = DateTime.UtcNow.AddSeconds(animTime);
        }

        public static WeenieError VerifyUseRequirements(Player player, WorldObject source, WorldObject target)
        {
            if (source == target)
                return WeenieError.YouDoNotPassCraftingRequirements;

            // ensure both source and target are in player's inventory
            if (player.FindObject(source.Guid.Full, Player.SearchLocations.MyInventory) == null)
                return WeenieError.YouDoNotPassCraftingRequirements;

            if (player.FindObject(target.Guid.Full, Player.SearchLocations.MyInventory) == null)
                return WeenieError.YouDoNotPassCraftingRequirements;

            // verify not retained item
            if (target.Retained)
            {
                player.Session.Network.EnqueueSend(new GameMessageSystemChat("You must use Sandstone Salvage to remove the retained property before tailoring.", ChatMessageType.Craft));
                return WeenieError.YouDoNotPassCraftingRequirements;
            }

            // verify not society armor
            if (source.IsSocietyArmor || target.IsSocietyArmor)
                return WeenieError.YouDoNotPassCraftingRequirements;

            return WeenieError.None;
        }

        public static void DoTailoring(Player player, WorldObject source, WorldObject target)
        {
            switch (source.WeenieClassId)
            {
                case ArmorTailoringKit:

                    TailorArmor(player, source, target);
                    return;

                case WeaponTailoringKit:

                    TailorWeapon(player, source, target);
                    return;

                case ArmorMainReductionTool:
                case ArmorLowerReductionTool:
                case ArmorMiddleReductionTool:

                    TailorReduceArmor(player, source, target);
                    return;

                case ArmorLayeringToolTop:
                case ArmorLayeringToolBottom:
                    TailorLayerArmor(player, source, target);
                    return;

                // intermediates
                case Heaume:             // helm
                case PlatemailGauntlets: // gauntlets
                case LeatherBoots:       // boots
                case LeatherVest:        // breastplate
                case YoroiGirth:         // girth
                case YoroiPauldrons:     // pauldrons
                case CeldonSleeves:      // vambraces
                case YoroiGreaves:       // tassets
                case YoroiLeggings:      // greaves
                case AmuliLeggings:      // lower-body multislot
                case WingedCoat:         // upper-body multislot
                case Tentacles:          // clothing or shield

                    ArmorApply(player, source, target);
                    return;

                case DarkHeart:

                    WeaponApply(player, source, target);
                    return;

                case MorphGemValue:
                case MorphGemArcane:
                case MorphGemRemoveMissileDReq:
                case MorphGemRemoveMeleeDReq:
                case MorphGemRandomizeWeaponImbue:
                case MorphGemRemovePlayerReq:
                case MorphGemSlayerRandom:
                case MorphGemRemoveLevelReq:
                case MorphGemSlayerUpgrade:
                case MorphGemBurningCoal:
                case MorphGemImpen:
                case MorphGemRandomWorkmanship:
                case MorphGemBanditHilt:
                case MorphGemRareUpgrade:
                case MorphGemCDR:
                case MorphGemCD:
                case MorphGemRareReduction:
                case MorphGemJewelersSawblade:
                case MorphGemAddSlayer:
				case MorphGemHematite:
				case MorphGemStrengthbeer:
				case MorphGemEndurancebeer:
				case MorphGemCoordinationbeer:
				case MorphGemQuicknessbeer:
				case MorphGemFocusbeer:
				case MorphGemWillpowerbeer:
                case MorphGemHeroicMaster:
                case MorphGemDotResist:
                case MorphGemRandomSet:
                case MorphGemRandomCantrip:
                case MorphGemBurden:
                case MorphGemRareDmgBoost:
                case MorphGemRareDmgReduction:                     
                    ApplyMorphGem(player, source, target);
                    return;
            }

            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
            return;
        }

        /// <summary>
        /// Consumes the source armor, and creates an intermediate tailoring kit
        /// to apply to the destination armor
        /// </summary>
        public static void TailorArmor(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"TailorArmor({player.Name}, {source.Name}, {target.Name})");

            var wcid = GetArmorWCID(target.ValidLocations ?? 0);
            if (wcid == null)
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            if (!HasAvailableSpace(player, source.WeenieClassId, target.WeenieClassId, wcid.Value))
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            var wo = WorldObjectFactory.CreateNewWorldObject(wcid.Value);

            SetArmorProperties(target, wo);

            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You tailor the appearance off an existing piece of armor.", ChatMessageType.Broadcast));

            Finalize(player, source, target, wo);
        }

        public static void SetCommonProperties(WorldObject source, WorldObject target)
        {
            // a lot of this was probably done with recipes and mutations in the original
            // here a lot is done directly in code..

            target.PaletteTemplate = source.PaletteTemplate;
            if (PropertyManager.GetBool("tailoring_intermediate_uieffects").Item)
                target.UiEffects = source.UiEffects;
            target.MaterialType = source.MaterialType;

            target.ObjScale = source.ObjScale;

            target.Shade = source.Shade;

            // This might not even be needed, but we'll do it anyways
            target.Shade2 = source.Shade2;
            target.Shade3 = source.Shade3;
            target.Shade4 = source.Shade4;

            target.LightsStatus = source.LightsStatus;
            target.Translucency = source.Translucency;

            target.SetupTableId = source.SetupTableId;
            target.PaletteBaseId = source.PaletteBaseId;
            target.ClothingBase = source.ClothingBase;

            target.PhysicsTableId = source.PhysicsTableId;
            target.SoundTableId = source.SoundTableId;

            target.Name = source.Name;
            target.LongDesc = LootGenerationFactory.GetLongDesc(target);

            target.IgnoreCloIcons = source.IgnoreCloIcons;
            target.IconId = source.IconId;
        }

        public static void SetArmorProperties(WorldObject source, WorldObject target)
        {
            SetCommonProperties(source, target);

            // ensure armor/clothing that covers head/hands/feet are cross-compatible
            // for something like shirt/breastplate, this will still be be prevented with ClothingPriority / CoverageMask check
            // (Outerwear vs. Underwear)
            target.TargetType = ItemType.Armor | ItemType.Clothing;

            target.ClothingPriority = source.ClothingPriority;
            target.Dyable = source.Dyable;

            // If this source item is one of the icons that contains an icon overlay as part of it, we will stash that icon in the
            // IconOverlaySecondary slot (it is unused) to be applied on the next step.
            if (ArmorOverlayIcons.ContainsKey(source.WeenieClassId) && source.IconOverlayId.HasValue)
                target.SetProperty(PropertyDataId.IconOverlaySecondary, (uint)source.IconOverlayId);

            // ObjDescOverride.Clear()
        }

        /// <summary>
        /// Applies the weapon properties to an in-between tailoring item, ready to be applied to a new weapon.
        /// </summary>
        public static void SetWeaponProperties(WorldObject source, WorldObject target)
        {
            SetCommonProperties(source, target);

            target.TargetType = source.ItemType;

            target.HookType = source.HookType;
            target.HookPlacement = source.HookPlacement;

            // These values are all set just for verification purposes. Likely originally handled by unique WCID and recipe system.
            if (source is MeleeWeapon)
            {
                target.DefaultCombatStyle = source.DefaultCombatStyle;  // unused currently, keeping this around in case its needed..
                target.W_AttackType = source.W_AttackType;
                target.W_WeaponType = source.W_WeaponType;
            }
            else if (source is MissileLauncher)
                target.DefaultCombatStyle = source.DefaultCombatStyle;

            target.W_DamageType = source.W_DamageType;
        }

        public static bool HasAvailableSpace(Player player, uint sourceWCID, uint targetWCID, uint resultWCID)
        {
            // ensure player has enough free inventory slots / container slots / available burden to mutate items
            var itemsToReceive = new ItemsToReceive(player);

            itemsToReceive.Remove(sourceWCID, 1);
            itemsToReceive.Remove(targetWCID, 1);
            itemsToReceive.Add(resultWCID, 1);

            if (itemsToReceive.PlayerExceedsLimits)
            {
                if (itemsToReceive.PlayerExceedsAvailableBurden)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You are too encumbered to tailor that!"));
                else if (itemsToReceive.PlayerOutOfInventorySlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough pack space to tailor that!"));
                else if (itemsToReceive.PlayerOutOfContainerSlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough container slots to tailor that!"));

                return false;
            }

            return true;
        }

        public static void Finalize(Player player, WorldObject source, WorldObject target, WorldObject result)
        {
            player.TryConsumeFromInventoryWithNetworking(source, 1);
            player.TryConsumeFromInventoryWithNetworking(target, 1);

            // errors shouldn't be possible here, since the items were pre-validated, but just in case...
            if (!player.TryCreateInInventoryWithNetworking(result))
            {
                log.Error($"[TAILORING] Tailoring.Finalize({player.Name} (0x{player.Guid}), {source.Name} (0x{source.Guid}), {target.Name} (0x{target.Guid}), {result.Name}) - couldn't add {result.Name} ({result.Guid}) to player inventory after validation, this shouldn't happen!");
                result.Destroy();  // cleanup for guid manager
            }

            if (PropertyManager.GetBool("player_receive_immediate_save").Item)
                player.RushNextPlayerSave(5);

            player.SendUseDoneEvent();
        }

        /// <summary>
        /// Consumes the source weapon, and creates an intermediate tailoring kit
        /// to apply to the destination weapon
        /// </summary>
        public static void TailorWeapon(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"TailorWeapon({player.Name}, {source.Name}, {target.Name})");

            // ensure target is valid weapon
            if (!(target is MeleeWeapon) && !(target is MissileLauncher) && !(target is Caster))
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            if (target is MeleeWeapon && target.W_WeaponType == WeaponType.Undef)
            {
                // 'difficult to master' weapons were not tailorable
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            if (!HasAvailableSpace(player, source.WeenieClassId, target.WeenieClassId, DarkHeart))
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            // create intermediate weapon tailoring kit
            var wo = WorldObjectFactory.CreateNewWorldObject(DarkHeart);
            SetWeaponProperties(target, wo);

            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You tailor the appearance off the weapon.", ChatMessageType.Broadcast));

            Finalize(player, source, target, wo);
        }

        /// <summary>
        /// Reduces the coverage for a piece of armor
        /// </summary>
        public static void TailorReduceArmor(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"TailorReduceArmor({player.Name}, {source.Name}, {target.Name})");

            // Verify requirements - Can only reduce LootGen Armor
            if (target.ItemWorkmanship == null)
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            var validLocations = target.ValidLocations ?? EquipMask.None;
            var clothingPriority = CoverageMask.Unknown;

            switch (source.WeenieClassId)
            {
                case ArmorMainReductionTool:

                    if (validLocations.HasFlag(EquipMask.ChestArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.ChestArmor);
                        clothingPriority = CoverageMask.OuterwearChest;
                    }
                    else if (validLocations.HasFlag(EquipMask.UpperArmArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.UpperArmArmor);
                        clothingPriority = CoverageMask.OuterwearUpperArms;
                    }
                    else if (validLocations.HasFlag(EquipMask.AbdomenArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.AbdomenArmor);
                        clothingPriority = CoverageMask.OuterwearAbdomen;
                    }
                    break;

                case ArmorLowerReductionTool:
                    // Can't reduce Chest Armor to anything but chest!
                    if (validLocations.HasFlag(EquipMask.ChestArmor))
                        break;

                    if (validLocations.HasFlag(EquipMask.UpperArmArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.LowerArmArmor);
                        clothingPriority = CoverageMask.OuterwearLowerArms;
                    }
                    else if (validLocations.HasFlag(EquipMask.UpperLegArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.LowerLegArmor);
                        clothingPriority = CoverageMask.OuterwearLowerLegs;
                    }
                    else if (validLocations.HasFlag(EquipMask.LowerLegArmor | EquipMask.FootWear))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.FootWear);
                        clothingPriority = CoverageMask.Feet;
                    }
                    break;

                case ArmorMiddleReductionTool:
                    if (validLocations.HasFlag(EquipMask.UpperLegArmor))
                    {
                        player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.UpperLegArmor);
                        clothingPriority = CoverageMask.OuterwearUpperLegs;
                    }
                    break;
            }

            if (clothingPriority == CoverageMask.Unknown)
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You modify your armor.", ChatMessageType.Broadcast));

            player.UpdateProperty(target, PropertyInt.ClothingPriority, (int)clothingPriority);
            player.TryConsumeFromInventoryWithNetworking(source, 1);

            target.SaveBiotaToDatabase();

            player.SendUseDoneEvent();
        }

        private static readonly List<uint> morphGemsAllowedNonLootGen = new List<uint>()
        {
            MorphGemRemoveLevelReq,
            MorphGemRemovePlayerReq,
            MorphGemRareUpgrade,
            MorphGemRareReduction,
            MorphGemCD,
            MorphGemCDR,
            MorphGemJewelersSawblade,
            MorphGemDotResist
        };


        public static void ApplyMorphGem(Player player, WorldObject source, WorldObject target)
        {                        

            try
            {
                //Only allow loot gen items to be morphed, except for gems that are allowed to be applied to quest / rare items
                if ((target.ItemWorkmanship == null || target.IsAttunedOrContainsAttuned || target.ResistMagic == 9999)
                    && !morphGemsAllowedNonLootGen.Contains(source.WeenieClassId))
                {
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }

                string playerMsg = string.Empty;

                var targetItemSpells = target.Biota.GetKnownSpellsIds(target.BiotaDatabaseLock);

                switch (source.WeenieClassId)
                {
                    #region MorphGemArmorLevel
                    //case MorphGemArmorLevel:

                    //    //Get the current AL of the item
                    //    var currentItemAL = target.GetProperty(PropertyInt.ArmorLevel);

                    //    //Disallow using AL morph gem on items w/ no AL
                    //    //if (!currentItemAL.HasValue || target.NumTimesTinkered != 0)
                    //    if (!currentItemAL.HasValue)
                    //    {
                    //        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    //        return;
                    //    }

                    //    //Get tinker log to get the num steel tinks
                    //    var tinkerLog = target.GetProperty(PropertyString.TinkerLog);
                    //    ushort numSteelTinks = 0;
                    //    if (!string.IsNullOrEmpty(tinkerLog))
                    //    {
                    //        string[] tinkerLogItems = tinkerLog.Split(',');
                    //        if (tinkerLogItems != null && tinkerLogItems.Length > 0)
                    //        {
                    //            foreach (var tink in tinkerLogItems)
                    //            {
                    //                if (tink.Equals("64"))
                    //                {
                    //                    numSteelTinks++;
                    //                }
                    //            }
                    //        }
                    //    }

                    //    //Roll for a value to change the AL by
                    //    var alRandom = new Random();
                    //    var alGain = alRandom.Next(0, 14);
                    //    var alLoss = alRandom.Next(0, 7);
                    //    var alChange = alGain - alLoss;
                    //    alChange = alChange > 10 ? 10 : alChange < -5 ? -5 : alChange;

                    //    var newAl = currentItemAL.Value + alChange;

                    //    //Don't let new Armor Level exceed maximums
                    //    var validLocations = target.ValidLocations ?? EquipMask.None;

                    //    uint maxAl = 0;

                    //    if (validLocations.HasFlag(EquipMask.HeadWear) || validLocations.HasFlag(EquipMask.HandWear) || validLocations.HasFlag(EquipMask.FootWear))
                    //    {
                    //        maxAl = MaxExtremityArmorLevel;
                    //    }
                    //    else if (validLocations.HasFlag(EquipMask.AbdomenArmor) ||
                    //             validLocations.HasFlag(EquipMask.ChestArmor) ||
                    //             validLocations.HasFlag(EquipMask.LowerArmArmor) ||
                    //             validLocations.HasFlag(EquipMask.UpperArmArmor) ||
                    //             validLocations.HasFlag(EquipMask.LowerLegArmor) ||
                    //             validLocations.HasFlag(EquipMask.UpperLegArmor)
                    //    )
                    //    {
                    //        maxAl = MaxBodyArmorLevel;
                    //    }
                    //    else if (validLocations.HasFlag(EquipMask.Shield))
                    //    {
                    //        maxAl = MaxShieldArmorLevel;
                    //    }

                    //    if (maxAl == 0)
                    //    {
                    //        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    //        return;
                    //    }

                    //    maxAl = maxAl + (numSteelTinks * 20u);

                    //    if (newAl > maxAl)
                    //    {
                    //        newAl = (int)maxAl;
                    //        alChange = newAl - currentItemAL.Value;
                    //    }

                    //    //Set the new AL value
                    //    player.UpdateProperty(target, PropertyInt.ArmorLevel, newAl);

                    //    //Send player message confirming the applied morph gem
                    //    string playerMsg = string.Empty;
                    //    if (alChange > 0)
                    //    {
                    //        playerMsg = $"As your skilled hands run softly along the contours of your armor, you quiver with anticipation.  With a swift and decisive thrust you apply the Morph Gem in a movement that is somehow both forceful and gentle at the same time.  You let out a short girly gasp that turns into a smile as you realize that your armor has been enhanced and has gained {alChange} armor level.";
                    //    }
                    //    else if (alChange == 0)
                    //    {
                    //        playerMsg = $"As your hands run softly along the contours of your armor, you quiver with anticipation.  With a timid yet determined thrust you attempt to apply the Morph Gem.  But luck being the cunt she is, the Morph Gem shatters on impact and your armor remains unchanged.";
                    //    }
                    //    else
                    //    {
                    //        playerMsg = $"As your shaking hands run softly along the contours of your armor, you quiver with anticipation.  With a timid yet determined thrust you attempt to apply the Morph Gem, but alas your hand is led astray of its mark as you are distracted by your 'room mate' calling out that your salad is ready and she bought you some new underwear with a smaller crotch for added support.  You cry softly in despair as you realize you've damaged your precious armor, which has lost {-1 * alChange} armor level as a result.";
                    //    }

                    //    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                    //    break;
                    #endregion MorphGemArmorLevel

                    #region MorphGemValue
                    case MorphGemValue:

                        //Value gem - lowers value by 5 - 15%, can't lower below 20k value, 10% chance to increase value by same

                        //Get the current Value of the item
                        var currentItemValue = target.GetProperty(PropertyInt.Value);

                        if (!currentItemValue.HasValue)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        if (currentItemValue.Value <= 20000)
                        {
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat("Morph gems do not allow an item's Value to be reduced below 20k", ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll for an amount to change the item Value by
                        var valRandom = new Random();
                        bool valueGain = valRandom.Next(0, 99) < 10;
                        var percentChange = valRandom.Next(5, 16) / 100f;
                        var valueChange = (int)Math.Round(currentItemValue.Value * percentChange * (valueGain ? 1 : -1));
                        var newValue = currentItemValue.Value + valueChange;

                        //Don't let new Armor Value exceed minimum of 20k
                        if (newValue < 20000)
                        {
                            valueChange = 20000 - currentItemValue.Value;
                            newValue = 20000;
                        }

                        //Set the new item value
                        player.UpdateProperty(target, PropertyInt.Value, newValue);
                        AddMorphGemLog(target, MorphGemValue);

                        if (valueChange > 0)
                        {
                            playerMsg = $"Bad luck cunt. The Morph Gem fucked you. Your item's value has increased by {valueChange}";
                        }
                        else if (valueChange == 0)
                        {
                            playerMsg = $"The Morph Gem shatters against your item and leaves it unchanged. Could be worse.";
                        }
                        else
                        {
                            playerMsg = $"You apply the Morph Gem skillfully and have reduced the value of your item by {-1 * valueChange}";
                        }

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        break;

                    #endregion MorphGemValue

                    #region MorphGemRandomWorkmanship
                    case MorphGemRandomWorkmanship:

                        //Get the current Work of the item
                        var currentItemWork = target.GetProperty(PropertyInt.ItemWorkmanship);

                        if (!currentItemWork.HasValue)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll for a value to set the Workmanship to
                        var workRandom = ThreadSafeRandom.Next(1, 10);
                        var workChange = (currentItemWork.Value - workRandom);

                        //Set the new Workmanship value
                        player.UpdateProperty(target, PropertyInt.ItemWorkmanship, workRandom);
                        AddMorphGemLog(target, MorphGemRandomWorkmanship);

                        if (workChange < 0)
                        {
                            playerMsg = $"You fail applying the Morph Gem to your {target.NameWithMaterial}. I am uninspired. Your armor workmanship has increased by {workChange}";
                        }
                        else if (workChange == 0)
                        {
                            playerMsg = $"The Morph Gem shatters against your {target.NameWithMaterial} and leaves it unchanged.  Could be worse.";
                        }
                        else
                        {
                            playerMsg = $"You apply the Morph Gem skillfully and have reduced the workmanship of your {target.NameWithMaterial} by {workChange}";
                        }

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        break;
                    #endregion MorphGemRandomWorkmanship

                    #region MorphGemArcane
                    case MorphGemArcane:

                        // Lower arcane lore requirement on items
                        // 90% chance to lower arcance by 25, 10% chance to increase it by 50

                        //Get the current Arcane of the item
                        var currentItemArcane = target.GetProperty(PropertyInt.ItemDifficulty);

                        if (!currentItemArcane.HasValue)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll for an amount to change the item Arcane by
                        var arcaneRoll = ThreadSafeRandom.Next(0, 99);

                        var arcaneChange = arcaneRoll > 9 ? -25 : 50;

                        var newArcane = currentItemArcane.Value + arcaneChange;

                        //Don't let new arcane exceed minimum of 1
                        if (newArcane < 1)
                        {
                            newArcane = 1;
                            arcaneChange = currentItemArcane.Value < 1 ? 0 : 1 - currentItemArcane.Value;
                        }

                        //Set the new arcane
                        player.UpdateProperty(target, PropertyInt.ItemDifficulty, newArcane);
                        AddMorphGemLog(target, MorphGemArcane);

                        if (arcaneChange > 0)
                        {
                            playerMsg = $"The Morph Gem shatters against your {target.NameWithMaterial} and as a result its arcane requirement has increased by {arcaneChange}";
                        }
                        else if (arcaneChange == 0)
                        {
                            playerMsg = $"The Morph Gem shatters against your {target.NameWithMaterial} and leaves it unchanged.  Could be worse.";
                        }
                        else
                        {
                            playerMsg = $"You apply the Morph Gem skillfully and have reduced the arcane requirement of your item by {-1 * arcaneChange}";
                        }

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        break;
                    #endregion MorphGemArcane

                    #region MorphGemRandomEpic
                    //case MorphGemRandomEpic:

                    //    //First check if the item has any epics, and see how many
                    //    var itemEpicList = target.EpicCantrips;
                    //    if (itemEpicList == null || itemEpicList.Count < 1)
                    //    {
                    //        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    //        player.Session.Network.EnqueueSend(new GameMessageSystemChat("The target item has no epic cantrips to randomize", ChatMessageType.Broadcast));
                    //        return;
                    //    }

                    //    //Come up with a new random list of epics to apply
                    //    List<int> newEpicList = new List<int>();
                    //    foreach (var currEpic in itemEpicList)
                    //    {
                    //        while (true)
                    //        {
                    //            //For now this morph gem can only be applied to armor.
                    //            //In the future if we expand to include non-armor (like jewelry),
                    //            //will need to have logic to use different Roll methods (like JewelryCantrips.Roll())
                    //            SpellId newCantrip = ArmorCantrips.Roll();
                    //            List<SpellId> progression = SpellLevelProgression.GetSpellLevels(newCantrip);

                    //            if (progression != null && progression.Count >= 3)
                    //            {
                    //                int newEpicSpellId = (int)progression[2];
                    //                if (newEpicSpellId != currEpic.Key && !newEpicList.Contains(newEpicSpellId))
                    //                {
                    //                    newEpicList.Add(newEpicSpellId);
                    //                    break;
                    //                }
                    //            }
                    //        }
                    //    }

                    //    //Give a small chance to remove an epic
                    //    if (newEpicList.Count > 1)
                    //    {
                    //        var epicRandom = new Random();
                    //        var roll = epicRandom.Next(0, int.MaxValue);
                    //        if (roll % 15 == 0 && newEpicList.Count > 0)
                    //        {
                    //            newEpicList.RemoveAt(0);
                    //        }
                    //    }

                    //    //Give a small chance to add an epic
                    //    if (newEpicList.Count < 4)
                    //    {
                    //        var epicRandom = new Random();
                    //        var roll = epicRandom.Next(0, int.MaxValue);
                    //        if (roll % 10 == 0 && newEpicList.Count > 0)
                    //        {
                    //            while (true)
                    //            {
                    //                SpellId newCantrip = ArmorCantrips.Roll();
                    //                List<SpellId> progression = SpellLevelProgression.GetSpellLevels(newCantrip);
                    //                if (progression != null && progression.Count >= 3)
                    //                {
                    //                    int newEpicSpellId = (int)progression[2];
                    //                    if (!newEpicList.Contains(newEpicSpellId))
                    //                    {
                    //                        newEpicList.Add((int)progression[2]);
                    //                        break;
                    //                    }
                    //                }
                    //            }
                    //        }
                    //    }

                    //    //Give a small chance to add Epic Impen
                    //    var impenRandom = new Random();
                    //    bool impenSuccess = false;
                    //    var impenRoll = impenRandom.Next(0, int.MaxValue);
                    //    if (impenRoll % 7 == 0 && !newEpicList.Contains(4667))
                    //    {
                    //        if (newEpicList.Count < 4)
                    //        {
                    //            newEpicList.Add(4667);
                    //        }
                    //        else
                    //        {
                    //            newEpicList[0] = 4667;
                    //        }

                    //        impenSuccess = true;
                    //    }

                    //    //Remove all existing epics
                    //    string removedSpellList = "";
                    //    int removedEpicNum = 0;
                    //    foreach (var spell in itemEpicList)
                    //    {
                    //        target.Biota.TryRemoveKnownSpell(spell.Key, target.BiotaDatabaseLock);
                    //        //player.Session.Network.EnqueueSend(new GameMessageSystemChat($"Removed spellId { spell.Key }", ChatMessageType.Broadcast));
                    //        removedEpicNum++;
                    //        if (removedEpicNum == 1)
                    //        {
                    //            removedSpellList = $"{new Spell(spell.Key, true).Name}";
                    //        }
                    //        else if (removedEpicNum == itemEpicList.Count)
                    //        {
                    //            removedSpellList += $" and {new Spell(spell.Key, true).Name}";
                    //        }
                    //        else
                    //        {
                    //            removedSpellList += $", {new Spell(spell.Key, true).Name}";
                    //        }
                    //        //removedSpellList += removedEpicNum < itemEpicList.Count ? $"{ new Spell(spell.Key, true).Name }, " : $"and { new Spell(spell.Key, true).Name }";
                    //    }

                    //    //Add new epics
                    //    string addedSpellList = "";
                    //    int addedEpicNum = 0;
                    //    foreach (var spellId in newEpicList)
                    //    {
                    //        target.Biota.GetOrAddKnownSpell(spellId, target.BiotaDatabaseLock, out _);
                    //        //player.Session.Network.EnqueueSend(new GameMessageSystemChat($"Added spellId { spellId }", ChatMessageType.Broadcast));
                    //        addedEpicNum++;
                    //        if (addedEpicNum == 1)
                    //        {
                    //            addedSpellList = $"{new Spell(spellId, true).Name}";
                    //        }
                    //        else if (addedEpicNum == newEpicList.Count)
                    //        {
                    //            addedSpellList += $" and {new Spell(spellId, true).Name}";
                    //        }
                    //        else
                    //        {
                    //            addedSpellList += $", {new Spell(spellId, true).Name}";
                    //        }
                    //        //addedSpellList += addedEpicNum < itemEpicList.Count ? $"{ new Spell(spellId, true).Name }" : $"and { new Spell(spellId, true).Name }";
                    //    }

                    //    string impenMessage = impenSuccess ? "\n\nYour armor also somehow looks tougher, like it might have once been worn by some kind of tough guy and his tough guy essence sort of rubbed off on it and now it's more tough than it was before." : "";

                    //    string randomizeResultMsg = $"Staring into the morph gem intently, your head swims at the chaos within it.  As you slump to the ground you scream in silence at the realization that eternity is boundless and upon you; upon us all.  You smash the morph gem hard against your armor and it explodes into everything and nothing.  Washed away are the epic enchantments that once took hold.\n\nThe spells {removedSpellList} are no longer.\n\nIn their place, the spells {addedSpellList} have been cast upon your armor.{impenMessage}";
                    //    player.Session.Network.EnqueueSend(new GameMessageSystemChat(randomizeResultMsg, ChatMessageType.Broadcast));

                    //    break;
                    #endregion MorphGemRandomEpic

                    #region MorphGemRandomSet
                    case MorphGemRandomSet:

                        if (target.ClothingPriority == null || (target.ClothingPriority & (CoverageMask)CoverageMaskHelper.Outerwear) == 0)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat("The target item does not meet the requirements for adding an Equipment Set", ChatMessageType.Broadcast));
                            return;
                        }

                        var originalSetId = target.EquipmentSetId;
                        bool setRollResult = false;

                        if (target.EquipmentSetId.HasValue)
                        {
                            //If item has an existing set, roll a 10% chance to remove the Set
                            int removeSetRoll = ThreadSafeRandom.Next(0, 9);
                            if (removeSetRoll > 0)
                            {
                                setRollResult = true;
                            }
                        }
                        else
                        {
                            //If item has no set, roll a 15% chance to add a Set
                            int addSetRoll = ThreadSafeRandom.Next(0, 99);
                            if (addSetRoll < 15)
                            {
                                setRollResult = true;
                            }
                        }

                        if (setRollResult)
                        {
                            target.EquipmentSetId = (EquipmentSet)ThreadSafeRandom.Next((int)EquipmentSet.Soldiers, (int)EquipmentSet.Lightningproof);
                            if (originalSetId.HasValue && target.EquipmentSetId.Value == originalSetId.Value)
                            {
                                int counter = 0;
                                while (target.EquipmentSetId.Value == originalSetId.Value && counter < 10)
                                {
                                    target.EquipmentSetId = (EquipmentSet)ThreadSafeRandom.Next((int)EquipmentSet.Soldiers, (int)EquipmentSet.Lightningproof);
                                    counter++;
                                }
                            }
                        }
                        else
                        {
                            target.EquipmentSetId = null;
                        }

                        string resultMsg = string.Empty;

                        if (originalSetId.HasValue && setRollResult)
                        {
                            //Randomized existing set
                            resultMsg = "You and I, we aren't so different.  We are nothing alike yet we are... nothing.  None of it matters.  You, especially, don't matter.  You will die.  I will die.  Will we then be the same?  Will we be at all?  Will you shut the fuck up?  Your armor has a different Set on it now, congrats.";
                        }
                        else if (!originalSetId.HasValue && setRollResult)
                        {
                            //Added new set
                            resultMsg = "If you get caught with drugs and they ask you who you got them from, it was the naked Indian.  Also, your item that didn't have a Set, well, now it has a Set.  Take a look and see.  Hopefully it's what you wanted.";
                        }
                        else if (originalSetId.HasValue && !setRollResult)
                        {
                            //Remove existing set
                            resultMsg = "Bad luck cunt, your armor that had a Set on it, well now it doesn't have a Set on it.  Also, you're ugly and smell bad, and those are your best qualities.";
                        }
                        else
                        {
                            //No existing set, failed to add a set
                            resultMsg = "I once had a dream that I was peeing on a tree in the woods.  When I woke up, I had pissed all over myself.  I hope that makes you feel slightly better about the fact that your item which didn't previously have a Set on it still doesn't have a Set on it.  Better luck next time cunt.";
                        }

                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(resultMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRandomSet);
                        break;
                    #endregion MorphGemRandomSet

                    #region MorphGemRemoveMissileDReq
                    case MorphGemRemoveMissileDReq:
                        // Remove Missile D requirement - weenie ID = 480484

                        //Validate that the item has a Missile D activation requirement
                        if (target.ItemSkillLimit != Skill.MissileDefense || target.ItemSkillLevelLimit == null)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Remove the activation requirement
                        target.ItemSkillLimit = null;
                        target.ItemSkillLevelLimit = null;

                        playerMsg = $"You apply the Morph Gem skillfully and have removed the Missile Defense activation requirement of your item.";
                        AddMorphGemLog(target, MorphGemRemoveMissileDReq);

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        break;

                    #endregion MorphGemRemoveMissileDReq

                    #region MorphGemRemoveMeleeDReq
                    case MorphGemRemoveMeleeDReq:
                        //Validate that the item has a Melee D activation requirement
                        if (target.ItemSkillLimit != Skill.MeleeDefense || target.ItemSkillLevelLimit == null)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Remove the activation requirement
                        target.ItemSkillLimit = null;
                        target.ItemSkillLevelLimit = null;

                        playerMsg = $"You apply the Morph Gem skillfully and have removed the Melee Defense activation requirement of your item.";
                        AddMorphGemLog(target, MorphGemRemoveMeleeDReq);

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        break;

                    #endregion MorphGemRemoveMeleeDReq

                    #region MorphGemRandomizeWeaponImbue
                    case MorphGemRandomizeWeaponImbue:

                        //Verify the item is imbued with AR, CS or CB
                        var isValid = false;

                        if (target.HasImbuedEffect(ImbuedEffectType.CripplingBlow) ||
                            target.HasImbuedEffect(ImbuedEffectType.ArmorRending) ||
                            target.HasImbuedEffect(ImbuedEffectType.CriticalStrike))
                        {
                            isValid = true;
                        }

                        if (!isValid)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        var origImbueEffect = target.ImbuedEffect;

                        var roll = ThreadSafeRandom.Next(0, 1);
                        if (target.HasImbuedEffect(ImbuedEffectType.CripplingBlow))
                        {
                            target.ImbuedEffect = roll == 0 ? ImbuedEffectType.ArmorRending : ImbuedEffectType.CriticalStrike;
                        }
                        else if (target.HasImbuedEffect(ImbuedEffectType.ArmorRending))
                        {
                            target.ImbuedEffect = roll == 0 ? ImbuedEffectType.CripplingBlow : ImbuedEffectType.CriticalStrike;
                        }
                        else if (target.HasImbuedEffect(ImbuedEffectType.CriticalStrike))
                        {
                            target.ImbuedEffect = roll == 0 ? ImbuedEffectType.ArmorRending : ImbuedEffectType.CripplingBlow;
                        }

                        target.IconUnderlayId = RecipeManager.IconUnderlay[target.ImbuedEffect];

                        playerMsg = $"You apply the Morph Gem skillfully and have changed your weapon's imbue from {origImbueEffect} to {target.ImbuedEffect}";
                        AddMorphGemLog(target, MorphGemRandomizeWeaponImbue);

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        break;
                    #endregion MorphGemRandomizeWeaponImbue

                    #region MorphGemRemovePlayerReq
                    case MorphGemRemovePlayerReq:

                        if (!target.GetProperty(PropertyInstanceId.AllowedWielder).HasValue)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        var origWielder = target.GetProperty(PropertyString.CraftsmanName);

                        target.RemoveProperty(PropertyInstanceId.AllowedWielder);
                        target.RemoveProperty(PropertyString.CraftsmanName);

                        playerMsg = $"You apply the Morph Gem skillfully and have altered your item so it is no longer wield restricted to {origWielder}";
                        AddMorphGemLog(target, MorphGemRemovePlayerReq);

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        break;
                    #endregion MorphGemRemovePlayerReq

                    #region MorphGemSlayerRandom
                    case MorphGemSlayerRandom:

                        var tinkerLottoLog = target.GetProperty(PropertyString.TinkerLottoLog);
                        if (!String.IsNullOrEmpty(tinkerLottoLog) && tinkerLottoLog.Contains("Slayer") && target.SlayerCreatureType != null)
                        {
                            target.ApplyRandomSlayer(target.SlayerDamageBonus ?? 1.2);
                            playerMsg = $"The Morph Gem alters your weapon's slayer type to {target.SlayerCreatureType}";

                            //Send player message confirming the applied morph gem
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        }
                        else
                        {
                            //Must be a slayer that was applied by tinker lotto
                            playerMsg = $"The {source.Name} cannot be applied to your {target.NameWithMaterial} because it does not have an existing Slayer applied with a morph gem or won in the tinkering lottery";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        AddMorphGemLog(target, MorphGemSlayerRandom);
                        break;

                    #endregion MorphGemSlayerRandom

                    #region MorphGemRemoveLevelReq

                    case MorphGemRemoveLevelReq:

                        if (!target.GetProperty(PropertyInt.WieldDifficulty).HasValue ||
                            !target.GetProperty(PropertyInt.WieldRequirements).HasValue ||
                            target.GetProperty(PropertyInt.WieldRequirements) != 7)
                        {
                            playerMsg = "The gem can only be applied to items that have a Level requirement";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        if (target is MeleeWeapon || target is Caster || target is MissileLauncher)
                        {
                            playerMsg = "The gem can not be applied to weapons";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        var origLevelReq = target.GetProperty(PropertyInt.WieldDifficulty);

                        target.RemoveProperty(PropertyInt.WieldDifficulty);

                        playerMsg = $"You apply the Morph Gem skillfully and have altered your item so it no longer requires level {origLevelReq} to wield";

                        //Send player message confirming the applied morph gem
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRemoveLevelReq);
                        break;

                    #endregion MorphGemRemoveLevelReq

                    #region MorphGemSlayerUpgrade

                    case MorphGemSlayerUpgrade:

                        var tinkerLottoLog2 = target.GetProperty(PropertyString.TinkerLottoLog);
                        if (!String.IsNullOrEmpty(tinkerLottoLog2) && tinkerLottoLog2.Contains("Slayer") && target.SlayerCreatureType != null)
                        {
                            if (target.SlayerDamageBonus < 1.8)
                            {
                                playerMsg = $"The Morph Gem alters your weapon's slayer damage bonus to 1.8";
                                target.SlayerDamageBonus = 1.8;
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                            else
                            {
                                playerMsg = $"Your weapon's slayer damage bonus is already >= 1.8";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                                return;
                            }
                        }
                        else
                        {
                            //Must be a slayer that was applied by tinker lotto
                            playerMsg = "The gem can only be applied to weapons that hit the tinkering lottery to add a slayer";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        AddMorphGemLog(target, MorphGemSlayerUpgrade);
                        break;

                    #endregion MorphGemSlayerUpgrade

                    #region MorphGemBurningCoal

                    case MorphGemBurningCoal:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Blazing Heart (3204) on it                        
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3204))
                        {
                            playerMsg = "Your target item already has Blazing Heart on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3204, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand and pure heart, you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Blazing Heart";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        //Previously we rolled for a chance for success, but changed it to be 100% success.  Leaving the code to roll commented out in case we change our minds.
                        //var blazingHeartRoll = ThreadSafeRandom.Next(0, 99);

                        //if (blazingHeartRoll < 38)
                        //{
                        //    target.Biota.GetOrAddKnownSpell(3204, target.BiotaDatabaseLock, out _);                            
                        //    playerMsg = $"With a steady hand and pure heart, you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Blazing Heart";
                        //    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        //}
                        //else
                        //{
                        //    target.ChangesDetected = true;
                        //    player.TryConsumeFromInventoryWithNetworking(target, 1);
                        //    playerMsg = $"Your hands quiver with anticipation as you attempt to apply the morph gem to your {target.NameWithMaterial}. Unfortunately the gem shatters on contact and with it your item has been destroyed.";
                        //    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        //}
                        AddMorphGemLog(target, MorphGemBurningCoal);
                        break;

                    #endregion MorphGemBurningCoal

                    #region MorphGemImpen
                    case MorphGemImpen:

                        //Validate target is either armor or undies
                        if (target.WeenieType != WeenieType.Clothing)
                        {
                            playerMsg = "The gem can only be applied to armor and underclothes";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if an Impen already exists on this item                        
                        if (!target.ItemMaxMana.HasValue || targetItemSpells == null || targetItemSpells.Count == 0)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //2604 - minor impen
                        //2592 - major impen
                        //4667 - epic impen
                        //6095 - legendary impen
                        //3710 - prodigal impen
                        if (targetItemSpells.Contains(2604) ||
                           targetItemSpells.Contains(2592) ||
                           targetItemSpells.Contains(4667) ||
                           targetItemSpells.Contains(6095) ||
                           targetItemSpells.Contains(3710))
                        {
                            playerMsg = "The gem cannot be used on an item that already has an Impenetrability cantrip";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Validation passed
                        //Roll for success or failure (33% chance of success)
                        //var success = ThreadSafeRandom.Next(0, 2) == 0;
                        var success = true; //Updated to never fail

                        //If success, roll for what level impen to add
                        if (success)
                        {
                            playerMsg = "You successfully apply the morph gem and have added {0} Impenetrability cantrip to your {1}";

                            var spellId = 0;
                            var impenLevel = ThreadSafeRandom.Next(0, 99);
                            if (impenLevel < 40) //40% chance for minor
                            {
                                spellId = 2604;
                                playerMsg = String.Format(playerMsg, "a Minor", target.Name);
                            }
                            else if (impenLevel < 70) //30% chance for major
                            {
                                spellId = 2592;
                                playerMsg = String.Format(playerMsg, "a Major", target.Name);
                            }
                            else if (impenLevel < 97) //27% chance for epic
                            {
                                spellId = 4667;
                                playerMsg = String.Format(playerMsg, "an Epic", target.Name);
                            }
                            else //3% chance for legendary
                            {
                                spellId = 6095;
                                playerMsg = String.Format(playerMsg, "a Legendary", target.Name);
                            }

                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            target.Biota.GetOrAddKnownSpell(spellId, target.BiotaDatabaseLock, out _);
                            AddMorphGemLog(target, MorphGemImpen);
                        }
                        else //If failed, destroy the target item
                        {
                            if (target.OwnerId == player.Guid.Full || player.GetInventoryItem(target.Guid) != null)
                            {
                                if (!player.TryConsumeFromInventoryWithNetworking(target))
                                    log.Warn($"Tailoring.ApplyMorphGem failed to consume target item for Impen Morph Gem. Player = {player.Name}, Target = {target.Name}");
                            }
                            else if (target.WielderId == player.Guid.Full)
                            {
                                if (!player.TryDequipObjectWithNetworking(target.Guid, out _, Player.DequipObjectAction.ConsumeItem))
                                    log.Warn($"Tailoring.ApplyMorphGem failed to consume target item for Impen Morph Gem. Player = {player.Name}, Target = {target.Name}");
                            }
                            else
                            {
                                target.Destroy();
                            }

                            var destroyMessage = new GameMessageSystemChat($"The morph gem fails to apply and has destroyed your {target.Name}", ChatMessageType.Craft);
                            player.Session.Network.EnqueueSend(destroyMessage);
                        }
                        break;
                    #endregion MorphGemImpen

                    #region MorphGemBanditHilt
                    case MorphGemBanditHilt:

                        //Check if the target is a LW multi-strike weapon
                        if (target.WeenieType != WeenieType.MeleeWeapon ||
                            target.WeaponSkill != Skill.LightWeapons ||
                            (!target.W_AttackType.HasFlag(AttackType.DoubleSlash) && !target.W_AttackType.HasFlag(AttackType.DoubleThrust)))
                        {
                            playerMsg = "This gem can only be used on Light Weapon melee weapons with the Multi-Strike property";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.W_AttackType = AttackType.TripleStrike;
                        playerMsg = $"The morph gem alters your {target.NameWithMaterial} into a Triple-Strike weapon";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemBanditHilt);
                        break;
                    #endregion MorphGemBanditHilt

                    #region MorphGemRareUpgrade
                    case MorphGemRareUpgrade:

                        if (!target.GetProperty(PropertyInt.RareId).HasValue)
                        {
                            playerMsg = "This gem can only be used on rare armor, jewelry and weapons";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        if (target.WeenieType != WeenieType.Clothing &&
                            target.WeenieType != WeenieType.Caster &&
                            target.WeenieType != WeenieType.MeleeWeapon &&
                            target.WeenieType != WeenieType.MissileLauncher &&
                            target.ItemType != ItemType.Jewelry &&
                            !target.IsShield)
                        {
                            playerMsg = "This gem can only be used on rare armor, jewelry and weapons";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Get a list of epic spells
                        var itemEpicList = target.EpicCantrips.Keys;
                        if (itemEpicList == null || itemEpicList.Count < 1)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat("The target item has no epic cantrips to upgrade", ChatMessageType.Broadcast));
                            return;
                        }

                        //Find the counterpart legendary spell
                        //Remove the epic
                        //Add the legendary
                        foreach (var epicSpellId in itemEpicList)
                        {
                            var epicSpell = new Spell(epicSpellId, true);
                            var epicSpellName = epicSpell.ToString();

                            foreach (var spellLevels in ArmorCantrips.Table)
                            {
                                if (spellLevels[2] == (SpellId)epicSpellId)
                                {
                                    var legendarySpellId = spellLevels[3];

                                    target.Biota.TryRemoveKnownSpell(epicSpellId, target.BiotaDatabaseLock);
                                    target.Biota.GetOrAddKnownSpell((int)legendarySpellId, target.BiotaDatabaseLock, out _);
                                    break;
                                }
                            }
                        }

                        //Return a message to the player
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat($"Your {target.NameWithMaterial} has had its epic armor cantrips upgraded to legendaries", ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRareUpgrade);
                        break;
                    #endregion MorphGemRareUpgrade

                    #region MorphGemCDR                    
                    case MorphGemCDR:
                        //Rare Gem of Critical Damage Reduction
                        //Apply to any armor piece(loot gen, quest and rare armor and add +2 CDR
                        //rating, if piece of armor already has ratings then it replaces but does
                        //not stack.Cap of 2 rating/piece of armor
                        if (!target.ArmorLevel.HasValue || target.ArmorLevel.Value < 1)
                        {
                            playerMsg = "This gem can only be used on armor";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        if (target.GearCritDamageResist >= 2)
                        {
                            playerMsg = $"Your {target.NameWithMaterial} already has a Critical Damage Resist Rating of +{target.GearCritDamageResist} and thus the gem would have no effect";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Add +2 CDR rating
                        string cdRemovalMsg = target.GearCritDamage > 0 ? $" As a result your item's +{target.GearCritDamage} Critical Damage Rating has been replaced." : string.Empty;
                        playerMsg = $"You have successfully used the {source.Name} to add +2 Critical Damage Resist Rating to your {target.NameWithMaterial}!{cdRemovalMsg}";
                        target.GearCritDamage = 0;
                        target.GearCritDamageResist = 2;

                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemCDR);
                        break;
                    #endregion MorphGemCDR

                    #region MorphGemCD
                    case MorphGemCD:
                        //Rare Gem of Critical Damage
                        //Apply to any armor piece (loot gen, quest and rare armor and add +2 CD
                        //rating, if piece of armor already has ratings then it replaces but does
                        //not stack. Cap of 2 rating/piece of armor
                        if (!target.ArmorLevel.HasValue || target.ArmorLevel.Value < 1)
                        {
                            playerMsg = "This gem can only be used on armor";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        if (target.GearCritDamage >= 2)
                        {
                            playerMsg = $"Your {target.NameWithMaterial} already has a Critical Damage Rating of +{target.GearCritDamage} and thus the gem would have no effect";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Add +2 CD rating
                        string cdrRemovalMsg = target.GearCritDamageResist > 0 ? $" As a result your item's +{target.GearCritDamageResist} Critical Damage Resist Rating has been replaced." : string.Empty;
                        playerMsg = $"You have successfully used the {source.Name} to add +2 Critical Damage Rating to your {target.NameWithMaterial}!{cdrRemovalMsg}";
                        target.GearCritDamage = 2;
                        target.GearCritDamageResist = 0;

                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemCD);
                        break;
                    #endregion MorphGemCD

                    #region MorphGemRareReduction
                    case MorphGemRareReduction:
                        //Rare Armor Reduction Tool - Use this tool on any rare multi-slot armor in order to reduce it to a single slot. It will still cover the same slots in appearance but only a single slot in armor coverage. This tool will reduce Hauberk/Coats to Breastplate coverage. It will reduce rare Leggings to Tasset coverage
                        //Would basically function as a main reduction tool for coats and middle reduction tool but strictly for rare armor. Will increase amount of useable rare armor and also increase the value of the multi slot pieces

                        //Check if this is rare armor
                        if (!target.ArmorLevel.HasValue || target.ArmorLevel.Value < 1 || !target.GetProperty(PropertyInt.RareId).HasValue)
                        {
                            playerMsg = "This gem can only be used on multi-slot rare armor";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        EquipMask targetValidLocations = target.ValidLocations ?? EquipMask.None;

                        if (targetValidLocations.HasFlag(EquipMask.ChestArmor))
                        {
                            playerMsg = $"You successfully apply the {source.Name} to reduce your {target.NameWithMaterial} to cover only your chest.";
                            player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.ChestArmor);
                            player.UpdateProperty(target, PropertyInt.ClothingPriority, (int)CoverageMask.OuterwearChest);
                        }
                        else if (targetValidLocations.HasFlag(EquipMask.UpperLegArmor))
                        {
                            playerMsg = $"You successfully apply the {source.Name} to reduce your {target.NameWithMaterial} to cover only your upper legs.";
                            player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.UpperLegArmor);
                            player.UpdateProperty(target, PropertyInt.ClothingPriority, (int)CoverageMask.OuterwearUpperLegs);
                        }
                        else
                        {
                            playerMsg = "This gem can only be used on multi-slot rare armor";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRareReduction);
                        break;
                    #endregion MorphGemRareReduction

                    #region MorphGemJewelersSawblade
                    case MorphGemJewelersSawblade:
                        //Empyrean Jeweler's Sawblade
                        //Use this tool on any ring, bracelet or necklace for the chance to alter it in a way that allows it to be worn in an alternative slot.
                        //(will just change slot, no change in appearance. 33% roll between ring, bracelet, necklace)                        

                        EquipMask validLocations = target.ValidLocations ?? EquipMask.None;
                        int newLocRoll = ThreadSafeRandom.Next(0, 1);
                        if (validLocations.HasFlag(EquipMask.NeckWear))
                        {
                            if (newLocRoll == 0)
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.WristWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your wrists!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                            else
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.FingerWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your fingers!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                        }
                        else if (validLocations.HasFlag(EquipMask.FingerWearLeft) || validLocations.HasFlag(EquipMask.FingerWearRight))
                        {
                            if (newLocRoll == 0)
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.WristWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your wrists!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                            else
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.NeckWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your neck!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                        }
                        else if (validLocations.HasFlag(EquipMask.WristWearLeft) || validLocations.HasFlag(EquipMask.WristWearRight))
                        {
                            if (newLocRoll == 0)
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.FingerWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your fingers!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                            else
                            {
                                player.UpdateProperty(target, PropertyInt.ValidLocations, (int)EquipMask.NeckWear);
                                playerMsg = $"You have successfully used the {source.Name} to alter your {target.NameWithMaterial} to be wearable on your neck!";
                                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            }
                        }
                        else
                        {
                            playerMsg = "This gem can only be used on necklaces, rings and bracelets";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        AddMorphGemLog(target, MorphGemJewelersSawblade);
                        break;
                    #endregion MorphGemJewelersSawblade

                    #region MorphGemAddSlayer
                    case MorphGemAddSlayer:

                        //Verify the target is a weapon or caster
                        if (target as MeleeWeapon == null &&
                            !target.IsCaster &&
                            !target.IsBow &&
                            !target.IsThrownWeapon)
                        {
                            playerMsg = "This gem can only be used on weapons or magic casters";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Verify the target doesn't already have a slayer
                        if (target.SlayerCreatureType != null &&
                            target.SlayerCreatureType > 0 &&
                            target.SlayerDamageBonus > 1)
                        {
                            playerMsg = "This gem cant be used on a weapon or magic caster that already has a slayer on it";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Add a random slayer
                        target.ApplyRandomSlayer(1.8);
                        target.HandleTinkerLottoLog($"MorphGemSlayer");
                        playerMsg = $"You have successfully used the {source.Name} to add {target.SlayerCreatureType} Slayer to your {target.NameWithMaterial}!";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemAddSlayer);
                        break;
                    #endregion MorphGemAddSlayer

                    #region MorphGemHematite

                    case MorphGemHematite:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Warrior's Vitality (2004) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(2004))
                        {
                            playerMsg = "Your target item already has Warrior's Vitality on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(2004, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Warrior's Vitality";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemHematite);
                        break;

                    #endregion MorphGemHematite

                    #region MorphGemStrengthbeer

                    case MorphGemStrengthbeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Zongo's Fist (3864) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3864))
                        {
                            playerMsg = "Your target item already has Zongo's Fist on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3864, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Zongo's Fist";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemStrengthbeer);
                        break;

                    #endregion MorphGemStrengthbeer

                    #region MorphGemEndurancebeer

                    case MorphGemEndurancebeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Hunter's Hardiness (3863) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3863))
                        {
                            playerMsg = "Your target item already has Hunter's Hardiness on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3863, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Hunter's Hardiness";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemEndurancebeer);
                        break;

                    #endregion MorphGemEndurancebeer

                    #region MorphGemCoordinationbeer

                    case MorphGemCoordinationbeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Brighteyes' Favor (3533) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3533))
                        {
                            playerMsg = "Your target item already has Brighteyes' Favor on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3533, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Brighteyes' Favor";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemCoordinationbeer);
                        break;

                    #endregion MorphGemCoordinationbeer

                    #region MorphGemQuicknessbeer

                    case MorphGemQuicknessbeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Bobo's Quickening (3531) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3531))
                        {
                            playerMsg = "Your target item already has Bobo's Quickening on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3531, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Bobo's Quickening";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemQuicknessbeer);
                        break;

                    #endregion MorphGemQuicknessbeer

                    #region MorphGemFocusbeer

                    case MorphGemFocusbeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Ketnan's Eye (3530) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3530))
                        {
                            playerMsg = "Your target item already has Ketnan's Eye on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3530, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Ketnan's Eye";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemFocusbeer);
                        break;

                    #endregion MorphGemFocusbeer

                    #region MorphGemWillpowerbeer

                    case MorphGemWillpowerbeer:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = "The gem can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Duke Raoul's Pride (3862) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(3862))
                        {
                            playerMsg = "Your target item already has Duke Raoul's Pride on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        target.Biota.GetOrAddKnownSpell(3862, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the morph gem to your {target.NameWithMaterial} and have successfully added the spell Duke Raoul's Pride";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemWillpowerbeer);
                        break;

                    #endregion MorphGemWillpowerbeer

                    #region MorphGemHeroicMaster
                    case MorphGemHeroicMaster:

                        //Check if the target is jewelry
                        if (target.ItemType != ItemType.Jewelry)
                        {
                            playerMsg = $"{source.Name} can only be applied to jewelry.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if this gem has been applied already
                        if (GetMorphGemLogCount(target, MorphGemHeroicMaster) > 0)
                        {
                            playerMsg = $"{source.Name} can only be applied once and has already been applied to your target item.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll for how many spells to add
                        int spellRoll = ThreadSafeRandom.Next(0, 100);
                        int spellCount = 1;
                        if (spellRoll > 66)
                            spellCount = 2;

                        if (spellRoll > 96)
                            spellCount = 3;

                        //Select random set of spells
                        var spellList = HeroicMasterSpells.OrderBy(x => Guid.NewGuid()).Take(spellCount);

                        //Add the spells
                        var spellNames = new List<string>();
                        foreach(var spellId in spellList)
                        {
                            target.Biota.GetOrAddKnownSpell(spellId, target.BiotaDatabaseLock, out _);
                            spellNames.Add(new Spell(spellId).Name);
                        }

                        //Broadcast result                        
                        playerMsg = $"With a steady hand you skillfully apply the {source.Name} to your {target.NameWithMaterial} and have successfully added the following spells\n{String.Join('\n', spellNames)}";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemHeroicMaster);
                        break;
                    #endregion MorphGemHeroicMaster

                    #region MorphGemDotResist
                    case MorphGemDotResist:

                        //Check if the target is trinket
                        if (!(target.ValidLocations?.HasFlag(EquipMask.TrinketOne) ?? false))
                        {
                            playerMsg = $"{source.Name} can only be applied to cloaks.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if this gem has been applied already
                        if (GetMorphGemLogCount(target, MorphGemDotResist) > 0)
                        {
                            playerMsg = $"{source.Name} can only be applied once and has already been applied to your target item.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll for amount of DoT resist to add
                        var growthSpellId = ThreadSafeRandom.Next(5575, 5581);
                        target.Biota.GetOrAddKnownSpell(growthSpellId, target.BiotaDatabaseLock, out _);
                        string spellName = new Spell(growthSpellId).Name;

                        //Broadcast result
                        playerMsg = $"With a steady hand you skillfully apply the {source.Name} to your {target.NameWithMaterial}, enhancing its resistance to DoT with {spellName}";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));

                        AddMorphGemLog(target, MorphGemDotResist);
                        break;
                    #endregion MorphGemDotResist                    

                    #region MorphGemRandomCantrip
                    case MorphGemRandomCantrip:

                        //Check if the target is armor
                        if (target.ArmorLevel < 1)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat($"The {source.Name} can only be applied to armor", ChatMessageType.Broadcast));
                            return;
                        }

                        //Check if the morph gem has been applied already
                        if (GetMorphGemLogCount(target, MorphGemRandomCantrip) > 0)
                        {
                            playerMsg = $"{source.Name} can only be applied once and has already been applied to your target item.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the target has an cantrips already
                        var itemLegendaries = target.LegendaryCantrips;
                        if (itemLegendaries == null || itemLegendaries.Count < 1)
                        {
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat("The target item has no legendary cantrips to randomize", ChatMessageType.Broadcast));
                            return;
                        }

                        //Come up with a new random list of legendaries to apply
                        List<int> newLegendaryList = new List<int>();
                        foreach (var currLegendary in itemLegendaries)
                        {
                            while (true)
                            {
                                //For now this morph gem can only be applied to armor.
                                //In the future if we expand to include non-armor (like jewelry),
                                //will need to have logic to use different Roll methods (like JewelryCantrips.Roll())
                                SpellId newCantrip = ArmorCantrips.Roll();
                                List<SpellId> progression = SpellLevelProgression.GetSpellLevels(newCantrip);

                                if (progression != null && progression.Count >= 4)
                                {
                                    int newLegendarySpellId = (int)progression[3];
                                    if (newLegendarySpellId != currLegendary.Key && !newLegendaryList.Contains(newLegendarySpellId))
                                    {
                                        newLegendaryList.Add(newLegendarySpellId);
                                        break;
                                    }
                                }
                            }
                        }

                        //Give a small chance to remove an legendary
                        if (newLegendaryList.Count > 1)
                        {
                            var legRandom = new Random();
                            var legRandomRoll = legRandom.Next(0, int.MaxValue);
                            if (legRandomRoll % 15 == 0 && newLegendaryList.Count > 0)
                            {
                                newLegendaryList.RemoveAt(0);
                            }
                        }

                        //Give a small chance to add a legendary
                        if (newLegendaryList.Count < 4)
                        {
                            var legRandom = new Random();
                            var legRandomRoll = legRandom.Next(0, int.MaxValue);
                            if (legRandomRoll % 10 == 0 && newLegendaryList.Count > 0)
                            {
                                while (true)
                                {
                                    SpellId newCantrip = ArmorCantrips.Roll();
                                    List<SpellId> progression = SpellLevelProgression.GetSpellLevels(newCantrip);
                                    if (progression != null && progression.Count >= 4)
                                    {
                                        int newLegendarySpellId = (int)progression[3];
                                        if (!newLegendaryList.Contains(newLegendarySpellId))
                                        {
                                            newLegendaryList.Add(newLegendarySpellId);
                                            break;
                                        }
                                    }
                                }
                            }
                        }

                        //Give a small chance to add Leg Impen
                        var impenRandom = new Random();
                        bool impenSuccess = false;
                        var impenRoll = impenRandom.Next(0, int.MaxValue);
                        if (impenRoll % 7 == 0 && !newLegendaryList.Contains(6095))
                        {
                            if (newLegendaryList.Count < 4)
                            {
                                newLegendaryList.Add(6095);
                            }
                            else
                            {
                                newLegendaryList[0] = 6095;
                            }

                            impenSuccess = true;
                        }

                        //Remove all existing legendaries
                        string removedSpellList = "";
                        int removedLegNum = 0;
                        foreach (var spell in itemLegendaries)
                        {
                            target.Biota.TryRemoveKnownSpell(spell.Key, target.BiotaDatabaseLock);
                            //player.Session.Network.EnqueueSend(new GameMessageSystemChat($"Removed spellId { spell.Key }", ChatMessageType.Broadcast));
                            removedLegNum++;
                            if (removedLegNum == 1)
                            {
                                removedSpellList = $"{new Spell(spell.Key, true).Name}";
                            }
                            else if (removedLegNum == itemLegendaries.Count)
                            {
                                removedSpellList += $" and {new Spell(spell.Key, true).Name}";
                            }
                            else
                            {
                                removedSpellList += $", {new Spell(spell.Key, true).Name}";
                            }
                            //removedSpellList += removedEpicNum < itemEpicList.Count ? $"{ new Spell(spell.Key, true).Name }, " : $"and { new Spell(spell.Key, true).Name }";
                        }

                        //Add new legendaries
                        string addedSpellList = "";
                        int addedLegNum = 0;
                        foreach (var spellId in newLegendaryList)
                        {
                            target.Biota.GetOrAddKnownSpell(spellId, target.BiotaDatabaseLock, out _);
                            //player.Session.Network.EnqueueSend(new GameMessageSystemChat($"Added spellId { spellId }", ChatMessageType.Broadcast));
                            addedLegNum++;
                            if (addedLegNum == 1)
                            {
                                addedSpellList = $"{new Spell(spellId, true).Name}";
                            }
                            else if (addedLegNum == newLegendaryList.Count)
                            {
                                addedSpellList += $" and {new Spell(spellId, true).Name}";
                            }
                            else
                            {
                                addedSpellList += $", {new Spell(spellId, true).Name}";
                            }
                            //addedSpellList += addedEpicNum < itemEpicList.Count ? $"{ new Spell(spellId, true).Name }" : $"and { new Spell(spellId, true).Name }";
                        }

                        string impenMessage = impenSuccess ? "\n\nYour armor also somehow looks tougher, like it might have once been worn by some kind of tough guy and his tough guy essence sort of rubbed off on it and now it's more tough than it was before." : "";

                        string randomizeResultMsg = $"Staring into the morph gem intently, your head swims at the chaos within it.  As you slump to the ground you scream in silence at the realization that eternity is boundless and upon you; upon us all.  You smash the morph gem hard against your armor and it explodes into everything and nothing.  Washed away are the legendary enchantments that once took hold.\n\nThe spells {removedSpellList} are no longer.\n\nIn their place, the spells {addedSpellList} have been cast upon your armor.{impenMessage}";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(randomizeResultMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRandomCantrip);
                        break;
                    #endregion MorphGemRandomCantrip

                    #region MorphGemBurden
                    case MorphGemBurden:

                        if (!target.EncumbranceVal.HasValue)
                        {
                            playerMsg = $"{source.Name} can only be applied to items that have an encumbrance.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item is already at min of -1000 burden
                        if (target.EncumbranceVal.Value < -999)
                        {
                            playerMsg = $"Your {target.NameWithMaterial} has already reached the minimum amount of encumbrance.";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Roll amount to reduce burden
                        int encumbranceRoll = ThreadSafeRandom.Next(10, 101);
                        if (target.EncumbranceVal.Value - encumbranceRoll < -1000)
                        {
                            encumbranceRoll = 1000 + target.EncumbranceVal.Value;
                        }

                        target.EncumbranceVal = target.EncumbranceVal - encumbranceRoll;

                        //Broadcast result
                        playerMsg = $"With a steady hand you skillfully apply the {source.Name} to your {target.NameWithMaterial} and have successfully reduced its encumbrance by {encumbranceRoll}";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemBurden);
                        break;
                    #endregion MorphGemBurden

                    #region MorphGemRareDmgBoost
                    case MorphGemRareDmgBoost:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = $"The {source.Name} can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Rare Damage Boost V (5202) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(5202))
                        {
                            playerMsg = "Your target item already has Rare Damage Boost V on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Broadcast result
                        target.Biota.GetOrAddKnownSpell(5202, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the {source.Name} to your {target.NameWithMaterial} and have successfully added the spell Rare Damage Boost V";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));                        
                        AddMorphGemLog(target, MorphGemRareDmgBoost);
                        break;
                    #endregion MorphGemRareDmgBoost

                    #region MorphGemRareDmgReduction
                    case MorphGemRareDmgReduction:

                        //Check if the item is undies, armor or jewelry; everything else is not allowed
                        if (!(target.ItemType == ItemType.Armor || target.ItemType == ItemType.Jewelry || target.ItemType == ItemType.Clothing))
                        {
                            playerMsg = $"The {source.Name} can only be applied to armor, clothing or jewelry";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Check if the item already has Rare Damage Reduction V (5197) on it
                        if (targetItemSpells == null || targetItemSpells.Count < 1)
                        {
                            playerMsg = "The gem can only be applied to magical items";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }
                        else if (targetItemSpells != null && targetItemSpells.Contains(5197))
                        {
                            playerMsg = "Your target item already has Rare Damage Reduction V on it, you cannot add it twice";
                            player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                            player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                            return;
                        }

                        //Broadcast result
                        target.Biota.GetOrAddKnownSpell(5197, target.BiotaDatabaseLock, out _);
                        playerMsg = $"With a steady hand you skillfully apply the {source.Name} to your {target.NameWithMaterial} and have successfully added the spell Rare Damage Reduction V";
                        player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                        AddMorphGemLog(target, MorphGemRareDmgReduction);
                        break;
                    #endregion MorphGemRareDmgReduction

                    default:
                        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                        return;
                }

                player.TryConsumeFromInventoryWithNetworking(source, 1);

                target.SaveBiotaToDatabase();

                player.SendUseDoneEvent();
            }
            catch (Exception ex)
            {
                log.ErrorFormat("Exception in Tailoring.ApplyMorphGem. Ex: {0}", ex);
            }
        }

        /// <summary>
        /// Adjusts the layering priority for a piece of armor
        /// </summary>
        public static void TailorLayerArmor(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"TailorLayerArmor({player.Name}, {source.Name}, {target.Name})");

            var topLayer = source.WeenieClassId == ArmorLayeringToolTop;
            player.UpdateProperty(target, PropertyBool.TopLayerPriority, topLayer);

            player.TryConsumeFromInventoryWithNetworking(source, 1);

            target.SaveBiotaToDatabase();

            player.SendUseDoneEvent();
        }

        /// <summary>
        /// Applies an intermediate tailoring kit to a destination piece of armor
        /// </summary>
        public static void ArmorApply(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"ArmorApply({player.Name}, {source.Name}, {target.Name})");

            // verify armor type
            if (source.ClothingPriority != target.ClothingPriority)
            {
                player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                return;
            }

            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You tailor the appearance onto a different piece of armor.", ChatMessageType.Broadcast));

            // update properties
            UpdateArmorProps(player, source, target);

            // Send UpdateObject, mostly for the client to register the new name.
            player.Session.Network.EnqueueSend(new GameMessageUpdateObject(target));

            player.TryConsumeFromInventoryWithNetworking(source, 1);

            target.SaveBiotaToDatabase();

            player.SendUseDoneEvent();
        }

        /// <summary>
        /// Applies an intermediate tailoring kit to a destination weapon
        /// </summary>
        public static void WeaponApply(Player player, WorldObject source, WorldObject target)
        {
            //Console.WriteLine($"WeaponApply({player.Name}, {source.Name}, {target.Name})");

            // verify weapon type
            switch (source.TargetType)
            {
                case ItemType.MeleeWeapon:

                    if (source.W_WeaponType != target.W_WeaponType ||
                        source.W_DamageType != target.W_DamageType)
                    {
                        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                        return;
                    }
                    break;

                case ItemType.MissileWeapon:

                    if (source.DefaultCombatStyle != target.DefaultCombatStyle ||
                        source.W_DamageType != DamageType.Undef && source.W_DamageType != target.W_DamageType)
                    {
                        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                        return;
                    }
                    break;

                case ItemType.Caster:

                    if (source.W_DamageType != DamageType.Undef && source.W_DamageType != target.W_DamageType)
                    {
                        player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                        return;
                    }
                    break;

                default:
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
            }

            player.Session.Network.EnqueueSend(new GameMessageSystemChat("You tailor the appearance onto a different weapon.", ChatMessageType.Broadcast));

            // Update all of the relevant properties
            UpdateWeaponProps(player, source, target);

            // Send UpdateObject, mostly for the client to register the new name.
            player.Session.Network.EnqueueSend(new GameMessageUpdateObject(target));

            player.TryConsumeFromInventoryWithNetworking(source, 1);

            target.SaveBiotaToDatabase();

            player.SendUseDoneEvent();
        }

        public static void UpdateCommonProps(Player player, WorldObject source, WorldObject target)
        {
            player.UpdateProperty(target, PropertyInt.PaletteTemplate, source.PaletteTemplate);
            //player.UpdateProperty(target, PropertyInt.UiEffects, (int?)source.UiEffects);
            if (source.MaterialType.HasValue)
                player.UpdateProperty(target, PropertyInt.MaterialType, (int?)source.MaterialType);

            player.UpdateProperty(target, PropertyFloat.DefaultScale, source.ObjScale);

            player.UpdateProperty(target, PropertyFloat.Shade, source.Shade);
            player.UpdateProperty(target, PropertyFloat.Shade2, source.Shade2);
            player.UpdateProperty(target, PropertyFloat.Shade3, source.Shade3);
            player.UpdateProperty(target, PropertyFloat.Shade4, source.Shade4);

            player.UpdateProperty(target, PropertyBool.LightsStatus, source.LightsStatus);
            player.UpdateProperty(target, PropertyFloat.Translucency, source.Translucency);

            player.UpdateProperty(target, PropertyDataId.Setup, source.SetupTableId);
            player.UpdateProperty(target, PropertyDataId.ClothingBase, source.ClothingBase);
            player.UpdateProperty(target, PropertyDataId.PaletteBase, source.PaletteBaseId);

            player.UpdateProperty(target, PropertyString.Name, source.Name);
            player.UpdateProperty(target, PropertyString.LongDesc, source.LongDesc);

            player.UpdateProperty(target, PropertyBool.IgnoreCloIcons, source.IgnoreCloIcons);
            player.UpdateProperty(target, PropertyDataId.Icon, source.IconId);
        }

        public static void UpdateArmorProps(Player player, WorldObject source, WorldObject target)
        {
            UpdateCommonProps(player, source, target);

            player.UpdateProperty(target, PropertyBool.Dyable, source.Dyable);

            // If the item we are replacing is one of our preset icons with an overlay, we need to remove it.
            if (ArmorOverlayIcons.ContainsKey(target.WeenieClassId))
                player.UpdateProperty(target, PropertyDataId.IconOverlay, null);

            // If the source item has an icon stashed in the Secondary Overlay, it's because we put it there!
            // Apply this overlay if the target does not already have one.
            if (source.GetProperty(PropertyDataId.IconOverlaySecondary).HasValue && !target.IconOverlayId.HasValue)
                player.UpdateProperty(target, PropertyDataId.IconOverlay, source.GetProperty(PropertyDataId.IconOverlaySecondary));

            // ObjDescOverride.Clear()
        }

        public static void UpdateWeaponProps(Player player, WorldObject source, WorldObject target)
        {
            UpdateCommonProps(player, source, target);

            player.UpdateProperty(target, PropertyInt.HookType, source.HookType);
            player.UpdateProperty(target, PropertyInt.HookPlacement, source.HookPlacement);
        }

        public static uint? GetArmorWCID(EquipMask validLocations)
        {
            switch (validLocations)
            {
                case EquipMask.HeadWear:
                    return Heaume;
                case EquipMask.HandWear:
                    return PlatemailGauntlets;
                case EquipMask.FootWear:
                case EquipMask.FootWear | EquipMask.LowerLegWear:
                    return LeatherBoots;
                case EquipMask.ChestArmor:
                    return LeatherVest;
                case EquipMask.AbdomenArmor:
                    return YoroiGirth;
                case EquipMask.UpperArmArmor:
                    return YoroiPauldrons;
                case EquipMask.LowerArmArmor:
                    return CeldonSleeves;
                case EquipMask.UpperLegArmor:
                    return YoroiGreaves;
                case EquipMask.LowerLegArmor:
                    return YoroiLeggings;
            }

            if (validLocations.HasFlag(EquipMask.ChestArmor) || validLocations.HasFlag(EquipMask.UpperArmArmor))
                return WingedCoat;
            if (validLocations.HasFlag(EquipMask.AbdomenArmor) || validLocations.HasFlag(EquipMask.UpperLegArmor))
                return AmuliLeggings;

            if (validLocations.HasFlag(EquipMask.Armor) || validLocations == EquipMask.Cloak || validLocations == EquipMask.Shield ||
                validLocations.HasFlag(EquipMask.ChestWear) || validLocations.HasFlag(EquipMask.AbdomenWear))
                return Tentacles;

            return null;
        }

        // intermediates
        public const uint LeatherVest = 42403;
        public const uint WingedCoat = 42405;
        public const uint PlatemailGauntlets = 42407;
        public const uint YoroiGirth = 42409;
        public const uint YoroiGreaves = 42411;
        public const uint Heaume = 42414;
        public const uint YoroiLeggings = 42416;
        public const uint AmuliLeggings = 42417;
        public const uint YoroiPauldrons = 42418;
        public const uint CeldonSleeves = 42421;
        public const uint LeatherBoots = 42422;
        public const uint Tentacles = 44863;
        public const uint DarkHeart = 51451;

        /// <summary>
        /// Returns TRUE if the input wcid is a tailoring kit
        /// </summary>
        public static bool IsTailoringKit(uint wcid)
        {
            // ...
            switch (wcid)
            {
                case ArmorTailoringKit:
                case WeaponTailoringKit:
                case ArmorMainReductionTool:
                case ArmorLowerReductionTool:
                case ArmorMiddleReductionTool:
                case ArmorLayeringToolTop:
                case ArmorLayeringToolBottom:
                case Heaume:
                case PlatemailGauntlets:
                case LeatherBoots:
                case LeatherVest:
                case YoroiGirth:
                case YoroiPauldrons:
                case CeldonSleeves:
                case YoroiGreaves:
                case YoroiLeggings:
                case AmuliLeggings:
                case WingedCoat:
                case Tentacles:
                case DarkHeart:
                case MorphGemValue:                
                case MorphGemArcane:
                case MorphGemRemoveMissileDReq:
                case MorphGemRemoveMeleeDReq:
                case MorphGemRandomizeWeaponImbue:
                case MorphGemRemovePlayerReq:
                case MorphGemSlayerRandom:
                case MorphGemRemoveLevelReq:
                case MorphGemSlayerUpgrade:
                case MorphGemBurningCoal:
                case MorphGemImpen:
                case MorphGemRandomWorkmanship:
                case MorphGemBanditHilt:
                case MorphGemRareUpgrade:
                case MorphGemTinkeringTool:
                case MorphGemJewelersSawblade:
                case MorphGemCDR:
                case MorphGemCD:
                case MorphGemRareReduction:
                case MorphGemAddSlayer:
				case MorphGemHematite:
				case MorphGemStrengthbeer:
				case MorphGemEndurancebeer:
				case MorphGemCoordinationbeer:
				case MorphGemQuicknessbeer:
				case MorphGemFocusbeer:
				case MorphGemWillpowerbeer:
                case MorphGemHeroicMaster:
                case MorphGemDotResist:
                case MorphGemRandomSet:
                case MorphGemRandomCantrip:
                case MorphGemBurden:
                case MorphGemRareDmgBoost:
                case MorphGemRareDmgReduction:
                    return true;
                default:
                    return false;
            }
        }

        public static void AddMorphGemLog(WorldObject target, uint gemWeenieId)
        {
            if (!string.IsNullOrEmpty(target.MorphGemLog))
                target.MorphGemLog += ",";

            target.MorphGemLog += gemWeenieId;
        }

        public static int GetMorphGemLogCount(WorldObject target, uint gemWeenieId)
        {
            if (string.IsNullOrEmpty(target.MorphGemLog))
                return 0;

            var logEntries = target.MorphGemLog.Split(',');

            var matchingLogEntries = logEntries.Where(x => x.Equals(gemWeenieId.ToString()));

            return matchingLogEntries?.Count() ?? 0;
        }
    }
}
