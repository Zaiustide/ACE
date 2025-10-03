using System;
using System.Collections.Generic;
using System.Numerics;
using System.Linq;

using log4net;

using ACE.Common;
using ACE.Database;
using ACE.Database.Models.Auth;
using ACE.DatLoader;
using ACE.DatLoader.FileTypes;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Network.Sequence;
using ACE.Server.Network.Structure;
using ACE.Server.Physics;
using ACE.Server.Physics.Animation;
using ACE.Server.Physics.Common;
using ACE.Server.WorldObjects.Managers;

using Character = ACE.Database.Models.Shard.Character;
using MotionTable = ACE.DatLoader.FileTypes.MotionTable;
using ACE.Server.Entity.TownControl;
using ACE.Server.Entity.PKQuests;
using Newtonsoft.Json;
using System.Text;
using ACE.Server.Factories;

namespace ACE.Server.WorldObjects
{
    partial class Player
    {
        private List<PlayerPKQuest> _pkQuestList = null;
        public List<PlayerPKQuest> PkQuestList
        {
            get
            {
                if (_pkQuestList == null)
                {
                    try
                    {
                        if (!string.IsNullOrEmpty(this.PKQuestListSerialized))
                        {
                            _pkQuestList = JsonConvert.DeserializeObject<List<PlayerPKQuest>>(this.PKQuestListSerialized);
                        }
                        else
                        {
                            _pkQuestList = new List<PlayerPKQuest>();
                        }
                    }
                    catch (Exception ex)
                    {
                        log.Error($"Exception loading PKQuestList from serialized string property for player = {this.Name}. ex: {ex}");
                        _pkQuestList = new List<PlayerPKQuest>();
                    }
                }

                return _pkQuestList;
            }
        }

        public void SaveSerializedPkQuestList()
        {
            try
            {
                if (PkQuestList.Count() > 0)
                {
                    this.PKQuestListSerialized = JsonConvert.SerializeObject(PkQuestList);
                }
                else
                {
                    this.PKQuestListSerialized = null;
                }
            }
            catch (Exception ex)
            {
                log.Error($"Exception saving PKQuestList to serialized string property for player = {this.Name}. ex: {ex}");
            }
        }

        public void HandlePKQuestInquiry()
        {
            BroadcastCurrentPkQuests();
            AwardPkQuestRewards();
            AssignPkQuests();
        }

        public void BroadcastCurrentPkQuests()
        {
            string msg = "Your Active PK Quests...\n\n";
            if(PkQuestList.Count > 0)
            {
                foreach(var pkQuest in PkQuestList)
                {
                    var quest = PKQuests.GetPkQuestByCode(pkQuest.QuestCode);
                    if (quest == null)
                        continue;

                    msg += $"\n{quest.Description}\n";
                    if (pkQuest.IsCompleted)
                    {
                        msg += "Task Completed\n";
                    }
                    else
                    {
                        msg += $"{pkQuest.TaskDoneCount} of {quest.TaskCount} complete\n";
                    }
                }
            }
            else
            {
                msg = "\nYou do not currently have any active PK quests assigned";
            }

            Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
        }

        //public void AssignPkQuests()
        //{
        //    try
        //    {
        //        bool isDirty = false;
        //        if (PkQuestList.Count > 0)
        //        {
        //            var mostRecentAssignDate = PkQuestList.Max(x => x.StartTime);
        //            if (mostRecentAssignDate >= DateTime.Today)
        //            {
        //                //Quests have already been assigned today
        //                var msg = "You have already been assigned your PK quests today, check back again tomorrow.";
        //                Session.Network.EnqueueSend(new GameEventCommunicationTransientString(Session, msg));
        //                return;
        //            }
        //        }

        //        //Assign 3 new random quests that aren't already assigned
        //        var notAssignedQuests = new List<PKQuest>();
        //        foreach(var quest in PKQuests.PkQuestList)
        //        {
        //            if (PkQuestList.FirstOrDefault(x => x.QuestCode.Equals(quest.QuestCode)) == null)
        //            {
        //                notAssignedQuests.Add(quest);
        //            }
        //        }

        //        if(notAssignedQuests.Count == 0)
        //        {
        //            var msg = "You already have all available PK quests bestowed upon you. Complete your existing quests before returning.";
        //            Session.Network.EnqueueSend(new GameEventCommunicationTransientString(Session, msg));
        //            return;
        //        }

        //        if (notAssignedQuests.Count > 3)
        //        {
        //            notAssignedQuests = notAssignedQuests.OrderBy(x => new Guid()).Take(3).ToList();
        //        }

        //        foreach(var quest in notAssignedQuests)
        //        {
        //            var playerQuest = new PlayerPKQuest();
        //            playerQuest.QuestCode = quest.QuestCode;
        //            playerQuest.IsCompleted = false;
        //            playerQuest.RewardDelivered = false;
        //            playerQuest.StartTime = DateTime.Now;
        //            playerQuest.TaskDoneCount = 0;

        //            PkQuestList.Add(playerQuest);

        //            //Broadcast the quests that were assigned
        //            var msg = $"New PK Quest Bestowed: {quest.Description}";
        //            Session.Network.EnqueueSend(new GameEventCommunicationTransientString(Session, msg));
        //        }

        //        SaveSerializedPkQuestList();
        //    }
        //    catch (Exception ex)
        //    {
        //        log.Error($"Exception in AssignPkQuests for player = {this.Name}. Ex: {ex}");
        //    }
        //}

        public void AssignPkQuests()
        {
            try
            {
                bool isDirty = false;

                foreach(var pkQuest in PKQuests.PkQuestList)
                {
                    bool isNewlyAssigned = false;
                    var assignedPkQuest = this.PkQuestList.FirstOrDefault(x => x.QuestCode.Equals(pkQuest.QuestCode));

                    //Quest already assigned and not completed before today
                    if (assignedPkQuest != null &&
                        (!assignedPkQuest.IsCompleted ||
                        !assignedPkQuest.RewardDelivered ||
                        assignedPkQuest.CompletedTime >= DateTime.Today))
                    {
                        continue;
                    }

                    if (assignedPkQuest != null &&
                    assignedPkQuest.IsCompleted &&
                    assignedPkQuest.RewardDelivered &&
                    assignedPkQuest.CompletedTime < DateTime.Today)
                    {
                        //Quest completed before today and reward delivered
                        //Reassign the quest
                        assignedPkQuest.IsCompleted = false;
                        assignedPkQuest.RewardDelivered = false;
                        assignedPkQuest.StartTime = DateTime.Now;
                        assignedPkQuest.CompletedTime = default(DateTime?);
                        assignedPkQuest.TaskDoneCount = 0;
                        isDirty = true;
                        isNewlyAssigned = true;
                    }
                    else if(assignedPkQuest == null)
                    {
                        var playerQuest = new PlayerPKQuest();
                        playerQuest.QuestCode = pkQuest.QuestCode;
                        playerQuest.IsCompleted = false;
                        playerQuest.RewardDelivered = false;
                        playerQuest.StartTime = DateTime.Now;
                        playerQuest.TaskDoneCount = 0;
                        PkQuestList.Add(playerQuest);
                        isDirty = true;
                        isNewlyAssigned = true;
                    }

                    if (isNewlyAssigned)
                    {
                        //Broadcast the quests that were assigned
                        var msg = $"\nNew PK Quest Bestowed: {pkQuest.Description}\nReward: {pkQuest.RewardDescription}";
                        Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                    }
                }

                if (!isDirty)
                {
                    var msg = "\nYou already have all available PK quests bestowed upon you.";
                    Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                    return;
                }
                else
                {
                    SaveSerializedPkQuestList();
                }
            }
            catch (Exception ex)
            {
                log.Error($"Exception in AssignPkQuests for player = {this.Name}. Ex: {ex}");
            }
        }

        public void AwardPkQuestRewards()
        {
            try
            {
                var completedQuests = PkQuestList.Where(x => x.IsCompleted && !x.RewardDelivered);
                if(completedQuests?.Count() > 0)
                {
                    string msg = $"\nCompleted Quests:\n";
                    Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                }

                foreach (var completedQuest in completedQuests)
                {
                    var quest = PKQuests.GetPkQuestByCode(completedQuest.QuestCode);
                    if (quest == null)
                        continue;

                    string msg = $"\n{quest.Description}\n";
                    Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));

                    foreach (var rewardString in quest.Rewards)
                    {
                        var reward = rewardString.Split(',');
                        var rewardCode = reward[0];
                        int rewardCount = 0;
                        int.TryParse(reward[1], out rewardCount);
                        if (rewardCount <= 0)
                            continue;

                        switch (rewardCode)
                        {
                            case "LUM":
                                msg = $"Reward: {rewardCount} Luminance";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                this.GrantLuminance(rewardCount, XpType.Quest);
                                break;
                            case "XP%":
                                msg = $"Reward: {rewardCount}% of XP to next level";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                double xpPercent = (double)rewardCount / 100d;
                                this.GrantLevelProportionalXp(xpPercent, 1, long.MaxValue, true);
                                break;
                            case "DBKEY":
                                msg = $"Reward: {rewardCount} Darkbet's Lost Storage Key{(rewardCount > 1 ? "s" : "")}";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                for (int i = 0; i < rewardCount; i++)
                                {
                                    var dbKey = WorldObjectFactory.CreateNewWorldObject(480608);
                                    this.TryCreateInInventoryWithNetworking(dbKey);
                                    Session.Network.EnqueueSend(new GameMessageCreateObject(dbKey));
                                }
                                break;
                            case "PKTROPHY":
                                msg = $"Reward: {rewardCount} PK Trophies";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                var trophy = WorldObjectFactory.CreateNewWorldObject(1000002);
                                trophy.SetStackSize(rewardCount);
                                this.TryCreateInInventoryWithNetworking(trophy);
                                Session.Network.EnqueueSend(new GameMessageCreateObject(trophy));
                                break;
                            case "PHIAL":
                                msg = $"Reward: {rewardCount} Phial{(rewardCount > 1 ? "s" : "")} of Bloody Tears";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                var phial = WorldObjectFactory.CreateNewWorldObject(1000003);
                                phial.SetStackSize(rewardCount);
                                this.TryCreateInInventoryWithNetworking(phial);
                                Session.Network.EnqueueSend(new GameMessageCreateObject(phial));
                                break;
                            case "HERA":
                                msg = $"Reward: {rewardCount} Hera's Vault Key{(rewardCount > 1 ? "s" : "")}";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                for (int i = 0; i < rewardCount; i++)
                                {
                                    var heraKey = WorldObjectFactory.CreateNewWorldObject(490364);
                                    this.TryCreateInInventoryWithNetworking(heraKey);
                                    Session.Network.EnqueueSend(new GameMessageCreateObject(heraKey));
                                }
                                break;
                            case "BOX":
                                msg = $"Reward: {rewardCount} Box{(rewardCount > 1 ? "es" : "")}";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                for (int i = 0; i < rewardCount; i++)
                                {
                                    var box = WorldObjectFactory.CreateNewWorldObject(510000);
                                    this.TryCreateInInventoryWithNetworking(box);
                                    Session.Network.EnqueueSend(new GameMessageCreateObject(box));
                                }
                                break;
                            case "AMBER":
                                msg = $"Reward: {rewardCount} Radiant Amber Crystal{(rewardCount > 1 ? "s" : "")}";
                                Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                                for (int i = 0; i < rewardCount; i++)
                                {
                                    var box = WorldObjectFactory.CreateNewWorldObject(1000005);
                                    this.TryCreateInInventoryWithNetworking(box);
                                    Session.Network.EnqueueSend(new GameMessageCreateObject(box));
                                }
                                break;
                            default:
                                break;
                        }
                    }

                    completedQuest.RewardDelivered = true;
                }

                SaveSerializedPkQuestList();
            }
            catch(Exception ex)
            {
                log.Error($"Exception in Player_PKQuests.AwardPkQuestRewards for Player {this.Name}, CharacterID = {this.Character.Id}. Ex: {ex}");
            }
        }

        public void CompletePkQuestTasks(string[] questCodes)
        {
            try
            {
                foreach (var questCode in questCodes)
                {
                    var playerQuest = PkQuestList.FirstOrDefault(x => x.QuestCode.Equals(questCode));
                    if (playerQuest != null)
                    {
                        playerQuest.TaskDoneCount++;
                        var quest = PKQuests.GetPkQuestByCode(playerQuest.QuestCode);
                        if (quest == null)
                            continue;

                        string msg = $"\nPK Quest: {quest.Description}\n{playerQuest.TaskDoneCount} of {quest.TaskCount} completed";
                        Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                        if (playerQuest.TaskDoneCount >= quest.TaskCount)
                        {
                            if (!playerQuest.IsCompleted || !playerQuest.CompletedTime.HasValue)
                            {
                                playerQuest.IsCompleted = true;
                                playerQuest.CompletedTime = DateTime.Now;
                            }
                            msg = $"Quest Completed";
                            Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                        }                        
                    }
                }

                SaveSerializedPkQuestList();
            }
            catch (Exception ex)
            {
                log.Error($"Exception in Player_PKQuests.CompletePkQuestTask for Player {this.Name}, CharacterID = {this.Character.Id}. Ex: {ex}");
            }
        }        

        public void CompletePkQuestTask(string questCode, int completionCount = 1)
        {
            try
            {
                var playerQuest = PkQuestList.FirstOrDefault(x => x.QuestCode.Equals(questCode));
                if (playerQuest != null)
                {
                    playerQuest.TaskDoneCount += completionCount;
                    var quest = PKQuests.GetPkQuestByCode(playerQuest.QuestCode);
                    if (quest == null)
                        return;

                    string msg = $"\nPK Quest: {quest.Description}\n{playerQuest.TaskDoneCount} of {quest.TaskCount} completed";
                    Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                    if (playerQuest.TaskDoneCount >= quest.TaskCount)
                    {
                        playerQuest.IsCompleted = true;
                        playerQuest.CompletedTime = DateTime.Now;
                        msg = $"Quest Completed";
                        Session.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.System));
                    }

                    SaveSerializedPkQuestList();
                }
            }
            catch(Exception ex)
            {
                log.Error($"Exception in Player_PKQuests.CompletePkQuestTask for Player {this.Name}, CharacterID = {this.Character.Id}. Ex: {ex}");
            }
        }
    }
}
