using System;
using System.Linq;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Physics;

namespace ACE.Server.WorldObjects
{
    public class Gem : Stackable
    {
        /// <summary>
        /// A new biota be created taking all of its values from weenie.
        /// </summary>
        public Gem(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
        {
            SetEphemeralValues();
        }

        /// <summary>
        /// Restore a WorldObject from the database.
        /// </summary>
        public Gem(Biota biota) : base(biota)
        {
            SetEphemeralValues();
        }

        private void SetEphemeralValues()
        {
        }

        /// <summary>
        /// This is raised by Player.HandleActionUseItem.<para />
        /// The item should be in the players possession.
        /// 
        /// The OnUse method for this class is to use a contract to add a tracked quest to our quest panel.
        /// This gives the player access to information about the quest such as starting and ending NPC locations,
        /// and shows our progress for kill tasks as well as any timing information such as when we can repeat the
        /// quest or how much longer we have to complete it in the case of at timed quest.   Og II
        /// </summary>
        public override void ActOnUse(WorldObject activator)
        {
            ActOnUse(activator, false);
        }

        public void ActOnUse(WorldObject activator, bool confirmed)
        {
            if (!(activator is Player player))
                return;

            if (player.IsBusy || player.Teleporting || player.suicideInProgress)
            {
                player.SendWeenieError(WeenieError.YoureTooBusy);
                return;
            }

            if (player.IsJumping)
            {
                player.SendWeenieError(WeenieError.YouCantDoThatWhileInTheAir);
                return;
            }

            if (!string.IsNullOrWhiteSpace(UseSendsSignal))
            {
                player.CurrentLandblock?.EmitSignal(player, UseSendsSignal);
                return;
            }

            // handle rare gems
            if (RareId != null || RareUsesTimer)
            {
                if (player.PKTimerActive)
                {
                    player.SendWeenieError(WeenieError.YouHaveBeenInPKBattleTooRecently);
                    return;
                }
            }

            if (RareId != null && player.GetCharacterOption(CharacterOption.ConfirmUseOfRareGems) && !confirmed)
            {
                var msg = $"Are you sure you want to use {Name}?";
                var confirm = new Confirmation_Custom(player.Guid, () => ActOnUse(activator, true));
                if (!player.ConfirmationManager.EnqueueSend(confirm, msg))
                    player.SendWeenieError(WeenieError.ConfirmationInProgress);
                return;
            }

            if (RareUsesTimer)
            {
                var currentTime = Time.GetUnixTime();

                var timeElapsed = currentTime - player.LastRareUsedTimestamp;

                if (timeElapsed < RareTimer)
                {
                    // TODO: get retail message
                    var remainTime = (int)Math.Ceiling(RareTimer - timeElapsed);
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat($"You may use another timed rare in {remainTime}s", ChatMessageType.Broadcast));
                    return;
                }
            }

            if (UseUserAnimation != MotionCommand.Invalid)
            {
                // some gems have UseUserAnimation and UseSound, similar to food
                // eg. 7559 - Condensed Dispel Potion

                // the animation is also weird, and differs from food, in that it is the full animation
                // instead of stopping at the 'eat/drink' point... so we pass 0.5 here?

                var animMod = (UseUserAnimation == MotionCommand.MimeDrink || UseUserAnimation == MotionCommand.MimeEat) ? 0.5f : 1.0f;

                player.ApplyConsumable(UseUserAnimation, () => UseGem(player), animMod);
            }
            else
                UseGem(player);
        }

        public void UseGem(Player player)
        {
            if (player.IsDead) return;

            // verify item is still valid
            if (player.FindObject(Guid.Full, Player.SearchLocations.MyInventory) == null)
            {
                //player.SendWeenieError(WeenieError.ObjectGone);   // results in 'Unable to move object!' transient error
                player.SendTransientError($"Cannot find the {Name}");   // custom message
                return;
            }

            #region custom gems
            //Custom XP gems
            if (WeenieClassId == 490070)
            {
                player.EarnXP(1000000000, XpType.Kill, ShareType.None, false);
                player.TryConsumeFromInventoryWithNetworking(this, 1);
                return;
            }

            //Custom XP Bottle
            else if (WeenieClassId == 490071)
            {
                if (!ItemTotalXp.HasValue || ItemTotalXp < 1)
                {
                    player.SendTransientError($"Your XP bottle is empty");
                    return;
                }

                //XP bottle is capped at 10 bil xp
                if (ItemTotalXp > 10000000000)
                {
                    ItemTotalXp = 10000000000;
                }

                player.GrantXP(ItemTotalXp.Value, XpType.Kill, ShareType.None, false);
                player.TryConsumeFromInventoryWithNetworking(this, 1);
                return;
            }

            //Custom Tinkering Tool
            //Check if player has at least one tinkering skill trained
            else if (WeenieClassId == 490298)
            {
                string playerMsg = "";

                var tinkeringSkills =
                player.Skills.Values.Where(
                    s =>
                    (
                        s.AdvancementClass == SkillAdvancementClass.Specialized ||
                        s.AdvancementClass == SkillAdvancementClass.Trained
                    ) &&
                    (
                        s.Skill == Skill.ItemTinkering ||
                        s.Skill == Skill.MagicItemTinkering ||
                        s.Skill == Skill.WeaponTinkering ||
                        s.Skill == Skill.ArmorTinkering
                    ));

                if (tinkeringSkills == null || tinkeringSkills.Count() < 1)
                {
                    playerMsg = $"You must have trained at least one tinkering skill to use an {this.Name}";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }

                //Check if player already has the NextTinkIsFoolproof flag set
                if (player.NextTinkIsFoolproof)
                {
                    playerMsg = $"You have already consumed an {this.Name} and have not yet used it for a tinkering attempt.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }

                //Set NextTinkIsFoolproof flag to true
                player.NextTinkIsFoolproof = true;

                playerMsg = $"You feel a slight discomfort as the {this.Name} slowly slides into you, but that discomfort soon fades and is replaced by an overwhelming feeling of fulfillment.  The tool suddenly blasts its essence into you, filling you with good luck. As the tool empties itself into you, it becomes flacid and wet and slowly melts into nothing, now fully consumed.  You feel as though the next time you tinker anything it can't possibly fail.";
                player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
            }

            //Custom Island Gem
            else if (WeenieClassId == 490322)
            {
                //Don't allow gem to be used if PK tagged
                if (player.PKTimerActive)
                {
                    var playerMsg = $"You have been involved in a PK battle too recently to use your {this.Name}.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }
                else
                {
                    var islandLoc = new Position(0xF76B0036, 148.463013f, 138.334213f, 0.00500f, 0f, 0f, -0.530781f, -0.847509f);
                    player.Teleport(islandLoc);
                    var playerMsg = $"The {this.Name} has teleported you to Peddler's Outpost.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                }
            }

            //Custom Shoushi Outpost Gem
            else if (WeenieClassId == 600005)
            {
                //Don't allow gem to be used if PK tagged
                if (player.PKTimerActive)
                {
                    var playerMsg = $"You have been involved in a PK battle too recently to use your {this.Name}.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }
                else
                {
                    var shoushiTCLoc = new Position(0xDE510016, 48.076149f, 121.470108f, 16.005001f, 0f, 0f, -0.999995f, 0.003087f);
                    player.Teleport(shoushiTCLoc);
                    var playerMsg = $"The {this.Name} has teleported you to the Shoushi Outpost.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                }
            }

            //Custom Yaraq Outpost Gem
            else if (WeenieClassId == 600006)
            {
                //Don't allow gem to be used if PK tagged
                if (player.PKTimerActive)
                {
                    var playerMsg = $"You have been involved in a PK battle too recently to use your {this.Name}.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }
                else
                {
                    var yaraqTCLoc = new Position(0x81640006, 0.576489f, 143.601151f, 0.699269f, 0f, 0f, -0.714859f, 0.697868f);
                    player.Teleport(yaraqTCLoc);
                    var playerMsg = $"The {this.Name} has teleported you to the Yaraq Outpost.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                }
            }

            //Custom Holtburg Outpost Gem
            else if (WeenieClassId == 600007)
            {
                //Don't allow gem to be used if PK tagged
                if (player.PKTimerActive)
                {
                    var playerMsg = $"You have been involved in a PK battle too recently to use your {this.Name}.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                    player.SendUseDoneEvent(WeenieError.YouDoNotPassCraftingRequirements);
                    return;
                }
                else
                {
                    var holtburgTCLoc = new Position(0xA5B4003B, 176.617722f, 71.680115f, 46.005001f, 0f, 0f, 0.716226f, 0.697868f);
                    player.Teleport(holtburgTCLoc);
                    var playerMsg = $"The {this.Name} has teleported you to the Holtburg Outpost.";
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat(playerMsg, ChatMessageType.Broadcast));
                }
            }

                #endregion Custom gems

                // trying to use a dispel potion while pk timer is active
                // send error message and cancel - do not consume item
                if (SpellDID != null)
                {
                    var spell = new Spell(SpellDID.Value);

                    if (spell.MetaSpellType == SpellType.Dispel && !VerifyDispelPKStatus(this, player))
                        return;
                }

                if (RareUsesTimer)
                {
                    var currentTime = Time.GetUnixTime();

                    player.LastRareUsedTimestamp = currentTime;

                    // local broadcast usage
                    player.EnqueueBroadcast(new GameMessageSystemChat($"{player.Name} used the rare item {Name}", ChatMessageType.Broadcast));
                }

                if (SpellDID.HasValue)
                {
                    var spell = new Spell((uint)SpellDID);

                    // should be 'You cast', instead of 'Item cast'
                    // omitting the item caster here, so player is also used for enchantment registry caster,
                    // which could prevent some scenarios with spamming enchantments from multiple gem sources to protect against dispels

                    // TODO: figure this out better
                    if (spell.MetaSpellType == SpellType.PortalSummon)
                        TryCastSpell(spell, player, this, tryResist: false);
                    else if (spell.IsImpenBaneType || spell.IsItemRedirectableType)
                        player.TryCastItemEnchantment_WithRedirects(spell, player, this);
                    else
                        player.TryCastSpell(spell, player, this, tryResist: false);
                }

                if (UseCreateContractId > 0)
                {
                    if (!player.ContractManager.Add(UseCreateContractId.Value))
                        return;

                    // this wasn't in retail, but the lack of feedback when using a contract gem just seems jarring so...
                    player.Session.Network.EnqueueSend(new GameMessageSystemChat($"{Name} accepted. Click on the quill icon in the lower right corner to open your contract tab to view your active contracts.", ChatMessageType.Broadcast));
                }

                if (UseCreateItem > 0)
                {
                    if (!HandleUseCreateItem(player))
                        return;
                }

                if (UseSound > 0)
                    player.Session.Network.EnqueueSend(new GameMessageSound(player.Guid, UseSound));

                if ((GetProperty(PropertyBool.UnlimitedUse) ?? false) == false)
                    player.TryConsumeFromInventoryWithNetworking(this, 1);
            }

        public bool HandleUseCreateItem(Player player)
        {
            var amount = UseCreateQuantity ?? 1;

            var itemsToReceive = new ItemsToReceive(player);

            itemsToReceive.Add(UseCreateItem.Value, amount);

            if (itemsToReceive.PlayerExceedsLimits)
            {
                if (itemsToReceive.PlayerExceedsAvailableBurden)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You are too encumbered to use that!"));
                else if (itemsToReceive.PlayerOutOfInventorySlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough pack space to use that!"));
                else if (itemsToReceive.PlayerOutOfContainerSlots)
                    player.Session.Network.EnqueueSend(new GameEventCommunicationTransientString(player.Session, "You do not have enough container slots to use that!"));

                return false;
            }

            if (itemsToReceive.RequiredSlots > 0)
            {
                var remaining = amount;

                while (remaining > 0)
                {
                    var item = WorldObjectFactory.CreateNewWorldObject(UseCreateItem.Value);

                    if (item is Stackable)
                    {
                        var stackSize = Math.Min(remaining, item.MaxStackSize ?? 1);

                        item.SetStackSize(stackSize);
                        remaining -= stackSize;
                    }
                    else
                        remaining--;

                    player.TryCreateInInventoryWithNetworking(item);
                }
            }
            else
            {
                player.SendTransientError($"Unable to use {Name} at this time!");
                return false;
            }
            return true;
        }

        public int? RareId
        {
            get => GetProperty(PropertyInt.RareId);
            set { if (!value.HasValue) RemoveProperty(PropertyInt.RareId); else SetProperty(PropertyInt.RareId, value.Value); }
        }

        public bool RareUsesTimer
        {
            get => GetProperty(PropertyBool.RareUsesTimer) ?? false;
            set { if (!value) RemoveProperty(PropertyBool.RareUsesTimer); else SetProperty(PropertyBool.RareUsesTimer, value); }
        }

        public override void HandleActionUseOnTarget(Player player, WorldObject target)
        {
            // should tailoring kit / aetheria be subtyped?
            if (Tailoring.IsTailoringKit(WeenieClassId))
            {
                Tailoring.UseObjectOnTarget(player, this, target);
                return;
            }

            // fallback on recipe manager?
            base.HandleActionUseOnTarget(player, target);
        }

        /// <summary>
        /// For Rares that use cooldown timers (RareUsesTimer),
        /// any other rares with RareUsesTimer may not be used for 3 minutes
        /// Note that if the player logs out, this cooldown timer continues to tick/expire (unlike enchantments)
        /// </summary>
        public static int RareTimer = 180;

        public string UseSendsSignal
        {
            get => GetProperty(PropertyString.UseSendsSignal);
            set { if (value == null) RemoveProperty(PropertyString.UseSendsSignal); else SetProperty(PropertyString.UseSendsSignal, value); }
        }

        public override void OnActivate(WorldObject activator)
        {
            if (ItemUseable == Usable.Contained && activator is Player player)
            {               
                var containedItem = player.FindObject(Guid.Full, Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems);
                if (containedItem != null) // item is contained by player
                {
                    if (player.IsBusy || player.Teleporting || player.suicideInProgress)
                    {
                        player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.YoureTooBusy));
                        player.EnchantmentManager.StartCooldown(this);
                        return;
                    }

                    if (player.IsDead)
                    {
                        player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.Dead));
                        player.EnchantmentManager.StartCooldown(this);
                        return;
                    }
                }
                else
                    return;
            }

            base.OnActivate(activator);
        }
    }
}
