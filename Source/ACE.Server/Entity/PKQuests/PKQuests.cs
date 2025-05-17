using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.PKQuests
{
    public static class PKQuests
    {
        private static List<PKQuest> _pkQuestList = null;

        public static List<PKQuest> PkQuestList
        {
            get
            {
                if (_pkQuestList == null)
                {
                    _pkQuestList = new List<PKQuest>();

                    //- Participate in 5 arena matches
                    var arena_any_5 = new PKQuest();
                    arena_any_5.QuestCode = "ARENA_ANY_5";
                    arena_any_5.Description = "Participate in 5 Arena matches";
                    arena_any_5.RewardDescription = "20k luminance, 25% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_any_5.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_any_5.TaskCount = 5;
                    _pkQuestList.Add(arena_any_5);

                    //- Participate in 15 arena matches
                    var arena_any_15 = new PKQuest();
                    arena_any_15.QuestCode = "ARENA_ANY_15";
                    arena_any_15.Description = "Participate in 15 Arena matches";
                    arena_any_15.RewardDescription = "50k luminance, 50% XP to next level, 3 Darkbeat Keys, 2 Phials of Bloody Tears, 25 PK Trophies, 1 Box";
                    arena_any_15.Rewards = new List<string>() { "LUM,50000", "XP%,50", "DBKEY,3", "PKTROPHY,25", "PHIAL,2", "BOX,1" };
                    arena_any_15.TaskCount = 15;
                    _pkQuestList.Add(arena_any_15);

                    //- Participate in 30 arena matches
                    var arena_any_30 = new PKQuest();
                    arena_any_30.QuestCode = "ARENA_ANY_30";
                    arena_any_30.Description = "Participate in 30 Arena matches";
                    arena_any_30.RewardDescription = "150k luminance, 100% XP to next level, 3 Darkbeat Keys, 3 Phials of Bloody Tears, 100 PK Trophies, 2 Boxes, 1 Hera Key.";
                    arena_any_30.Rewards = new List<string>() { "LUM,150000", "XP%,100", "DBKEY,3", "PKTROPHY,100", "PHIAL,3", "BOX,2", "HERA,1" };
                    arena_any_30.TaskCount = 30;
                    _pkQuestList.Add(arena_any_30);

                    //- Win 10 arena matches
                    var arena_any_win_10 = new PKQuest();
                    arena_any_win_10.QuestCode = "ARENA_ANY_WIN_10";
                    arena_any_win_10.Description = "Win 10 Arena matches";
                    arena_any_win_10.RewardDescription = "30k luminance, 100% XP to next level, 3 Darkbeat Keys, 2 Phials of Bloody Tears, 40 PK Trophies, 1 Box";
                    arena_any_win_10.Rewards = new List<string>() { "LUM,30000", "XP%,100", "DBKEY,3", "PKTROPHY,40", "PHIAL,2", "BOX,1" };
                    arena_any_win_10.TaskCount = 10;
                    _pkQuestList.Add(arena_any_win_10);

                    //- Win 20 arena matches
                    var arena_any_win_20 = new PKQuest();
                    arena_any_win_20.QuestCode = "ARENA_ANY_WIN_20";
                    arena_any_win_20.Description = "Win 20 Arena matches";
                    arena_any_win_20.RewardDescription = "100k luminance, 100% XP to next level, 3 Darkbeat Keys, 3 Phials of Bloody Tears, 100 PK Trophies, 3 Boxes, 1 Hera Key";
                    arena_any_win_20.Rewards = new List<string>() { "LUM,100000", "XP%,100", "DBKEY,3", "PKTROPHY,100", "PHIAL,3", "BOX,3", "HERA,1" };
                    arena_any_win_20.TaskCount = 20;
                    _pkQuestList.Add(arena_any_win_20);

                    //- Win 30 arena matches
                    var arena_any_win_30 = new PKQuest();
                    arena_any_win_30.QuestCode = "ARENA_ANY_WIN_30";
                    arena_any_win_30.Description = "Win 30 Arena matches";
                    arena_any_win_30.RewardDescription = "200k luminance, 100% XP to next level, 5 Darkbeat Keys, 5 Phials of Bloody Tears, 200 PK Trophies, 5 Boxes, 3 Hera Key";
                    arena_any_win_30.Rewards = new List<string>() { "LUM,200000", "XP%,100", "DBKEY,5", "PKTROPHY,200", "PHIAL,5", "BOX,5", "HERA,3" };
                    arena_any_win_30.TaskCount = 30;
                    _pkQuestList.Add(arena_any_win_30);

                    //- Kill 10 players from a whitelisted clan that isn’t your clan(open world or arena)
                    var kill_any_10 = new PKQuest();
                    kill_any_10.QuestCode = "KILL_ANY_10";
                    kill_any_10.Description = "Kill any 10 players from an opposing whitelisted allegiance";
                    kill_any_10.RewardDescription = "80k luminance, 50% XP to next level, 50 PK Trophies";
                    kill_any_10.Rewards = new List<string>() { "LUM,80000", "XP%,50", "PKTROPHY,50" };
                    kill_any_10.TaskCount = 10;
                    _pkQuestList.Add(kill_any_10);

                    //-Kill 30 players from a whitelisted clan that isn’t your clan(open world or arena)
                    var kill_any_30 = new PKQuest();
                    kill_any_30.QuestCode = "KILL_ANY_30";
                    kill_any_30.Description = "Kill any 30 players from an opposing whitelisted allegiance";
                    kill_any_30.RewardDescription = "200k luminance, 50% XP to next level, 100 PK Trophies";
                    kill_any_30.Rewards = new List<string>() { "LUM,200000", "XP%,50", "PKTROPHY,100" };
                    kill_any_30.TaskCount = 30;
                    _pkQuestList.Add(kill_any_30);

                    //-Participate in 10 1v1 arena matches
                    var arena_1v1_10 = new PKQuest();
                    arena_1v1_10.QuestCode = "ARENA_1v1_10";
                    arena_1v1_10.Description = "Participate in 10 Arena 1v1 matches";
                    arena_1v1_10.RewardDescription = "20k luminance, 25% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_1v1_10.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_1v1_10.TaskCount = 10;
                    _pkQuestList.Add(arena_1v1_10);

                    //- Participate in 20 1v1 arena matches
                    var arena_1v1_20 = new PKQuest();
                    arena_1v1_20.QuestCode = "ARENA_1v1_20";
                    arena_1v1_20.Description = "Participate in 20 Arena 1v1 matches";
                    arena_1v1_20.RewardDescription = "50k luminance, 50% XP to next level, 3 Darkbeat Keys, 3 Phials of Bloody Tears, 25 PK Trophies";
                    arena_1v1_20.Rewards = new List<string>() { "LUM,50000", "XP%,50", "DBKEY,3", "PKTROPHY,25", "PHIAL,3" };
                    arena_1v1_20.TaskCount = 20;
                    _pkQuestList.Add(arena_1v1_20);

                    //- Participate in 3 2v2 arena matches
                    var arena_2v2_3 = new PKQuest();
                    arena_2v2_3.QuestCode = "ARENA_2v2_3";
                    arena_2v2_3.Description = "Participate in 3 Arena 2v2 matches";
                    arena_2v2_3.RewardDescription = "20k luminance, 50% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_2v2_3.Rewards = new List<string>() { "LUM,20000", "XP%,50", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_2v2_3.TaskCount = 3;
                    _pkQuestList.Add(arena_2v2_3);

                    //- Participate in 10 2v2 arena matches
                    var arena_2v2_10 = new PKQuest();
                    arena_2v2_10.QuestCode = "ARENA_2v2_10";
                    arena_2v2_10.Description = "Participate in 10 Arena 2v2 matches";
                    arena_2v2_10.RewardDescription = "75k luminance, 75% XP to next level, 3 Darkbeat Keys, 3 Phials of Bloody Tears, 25 PK Trophies";
                    arena_2v2_10.Rewards = new List<string>() { "LUM,750000", "XP%,75", "DBKEY,3", "PKTROPHY,25", "PHIAL,3" };
                    arena_2v2_10.TaskCount = 10;
                    _pkQuestList.Add(arena_2v2_10);

                    //- Participate in 2 FFA arena match
                    var arena_ffa_2 = new PKQuest();
                    arena_ffa_2.QuestCode = "ARENA_FFA_2";
                    arena_ffa_2.Description = "Participate in 2 Arena FFA matches";
                    arena_ffa_2.RewardDescription = "40k luminance, 25% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_ffa_2.Rewards = new List<string>() { "LUM,40000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_ffa_2.TaskCount = 2;
                    _pkQuestList.Add(arena_ffa_2);

                    //- Participate in 1 group arena match
                    var arena_group_1 = new PKQuest();
                    arena_group_1.QuestCode = "ARENA_GROUP_1";
                    arena_group_1.Description = "Participate in 1 Arena Group match";
                    arena_group_1.RewardDescription = "40k luminance, 50% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    arena_group_1.Rewards = new List<string>() { "LUM,40000", "XP%,50", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    arena_group_1.TaskCount = 1;
                    _pkQuestList.Add(arena_group_1);

                    //- Participate in 3 group arena match
                    var arena_group_3 = new PKQuest();
                    arena_group_3.QuestCode = "ARENA_GROUP_3";
                    arena_group_3.Description = "Participate in 3 Arena Group matches";
                    arena_group_3.RewardDescription = "50k luminance, 50% XP to next level, 4 Darkbeat Keys, 2 Phial of Bloody Tears, 50 PK Trophies";
                    arena_group_3.Rewards = new List<string>() { "LUM,50000", "XP%,50", "DBKEY,4", "PKTROPHY,50", "PHIAL,2" };
                    arena_group_3.TaskCount = 3;
                    _pkQuestList.Add(arena_group_3);

                    //- Participate in 10 group arena match
                    var arena_group_10 = new PKQuest();
                    arena_group_10.QuestCode = "ARENA_GROUP_10";
                    arena_group_10.Description = "Participate in 10 Arena Group matches";
                    arena_group_10.RewardDescription = "150k luminance, 100% XP to next level, 5 Darkbeat Keys, 3 Phial of Bloody Tears, 75 PK Trophies";
                    arena_group_10.Rewards = new List<string>() { "LUM,150000", "XP%,100", "DBKEY,5", "PKTROPHY,75", "PHIAL,3" };
                    arena_group_10.TaskCount = 10;
                    _pkQuestList.Add(arena_group_10);

                    //- Win 5 1v1 arena matches
                    var arena_1v1_win_5 = new PKQuest();
                    arena_1v1_win_5.QuestCode = "ARENA_1v1_WIN_5";
                    arena_1v1_win_5.Description = "Win 5 Arena 1v1 matches";
                    arena_1v1_win_5.RewardDescription = "20k luminance, % XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_1v1_win_5.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_1v1_win_5.TaskCount = 5;
                    _pkQuestList.Add(arena_1v1_win_5);

                    //- Win 15 1v1 arena matches
                    var arena_1v1_win_15 = new PKQuest();
                    arena_1v1_win_15.QuestCode = "ARENA_1v1_WIN_15";
                    arena_1v1_win_15.Description = "Win 15 Arena 1v1 matches";
                    arena_1v1_win_15.RewardDescription = "100k luminance, 75% XP to next level, 5 Darkbeat Key, 3 Phial of Bloody Tears, 50 PK Trophies";
                    arena_1v1_win_15.Rewards = new List<string>() { "LUM,100000", "XP%,75", "DBKEY,5", "PKTROPHY,50", "PHIAL,3" };
                    arena_1v1_win_15.TaskCount = 15;
                    _pkQuestList.Add(arena_1v1_win_15);

                    //- Win 2 2v2 arena matches
                    var arena_2v2_win_2 = new PKQuest();
                    arena_2v2_win_2.QuestCode = "ARENA_2v2_WIN_2";
                    arena_2v2_win_2.Description = "Win 2 Arena 2v2 matches";
                    arena_2v2_win_2.RewardDescription = "20k luminance, % XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_2v2_win_2.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_2v2_win_2.TaskCount = 2;
                    _pkQuestList.Add(arena_2v2_win_2);

                    //-Place 1st in an FFA arena match
                    var ARENA_FFA_WIN_1 = new PKQuest();
                    ARENA_FFA_WIN_1.QuestCode = "ARENA_FFA_WIN_1";
                    ARENA_FFA_WIN_1.Description = "Win 1 Arena FFA match";
                    ARENA_FFA_WIN_1.RewardDescription = "20k luminance, % XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    ARENA_FFA_WIN_1.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    ARENA_FFA_WIN_1.TaskCount = 1;
                    _pkQuestList.Add(ARENA_FFA_WIN_1);

                    //- Place in the top 3 in an FFA arena match
                    var arena_ffa_top3 = new PKQuest();
                    arena_ffa_top3.QuestCode = "ARENA_FFA_TOP3";
                    arena_ffa_top3.Description = "Place in the top 3 in an Arena FFA match";
                    arena_ffa_top3.RewardDescription = "20k luminance, 35% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 5 PK Trophies";
                    arena_ffa_top3.Rewards = new List<string>() { "LUM,20000", "XP%,35", "DBKEY,1", "PKTROPHY,5", "PHIAL,1" };
                    arena_ffa_top3.TaskCount = 1;
                    _pkQuestList.Add(arena_ffa_top3);

                    //- Win 1 group arena match
                    var arena_group_win_1 = new PKQuest();
                    arena_group_win_1.QuestCode = "ARENA_GROUP_WIN_1";
                    arena_group_win_1.Description = "Win 1 Arena Group match";
                    arena_group_win_1.RewardDescription = "50k luminance, 25% XP to next level, 1 Darkbeat Key, 1 Phial of Bloody Tears, 50 PK Trophies";
                    arena_group_win_1.Rewards = new List<string>() { "LUM,50000", "XP%,25", "DBKEY,1", "PKTROPHY,50", "PHIAL,1" };
                    arena_group_win_1.TaskCount = 1;
                    _pkQuestList.Add(arena_group_win_1);

                    //- Win 5 group arena matches
                    var arena_group_win_5 = new PKQuest();
                    arena_group_win_5.QuestCode = "ARENA_GROUP_WIN_5";
                    arena_group_win_5.Description = "Win 5 Arena Group matches";
                    arena_group_win_5.RewardDescription = "100k luminance, 50% XP to next level, 2 Darkbeat Keys, 3 Phials of Bloody Tears, 75 PK Trophies, 1 Hera's Key, 3 Boxes";
                    arena_group_win_5.Rewards = new List<string>() { "LUM,100000", "XP%,50", "DBKEY,2", "PKTROPHY,75", "PHIAL,3", "HERA,1", "BOX,3" };
                    arena_group_win_5.TaskCount = 5;
                    _pkQuestList.Add(arena_group_win_5);

                    //- Win 10 group arena matches
                    var arena_group_win_10 = new PKQuest();
                    arena_group_win_10.QuestCode = "ARENA_GROUP_WIN_10";
                    arena_group_win_10.Description = "Win 10 Arena Group matches";
                    arena_group_win_10.RewardDescription = "150k luminance, 75% XP to next level, 5 Darkbeat Keys, 5 Phials of Bloody Tears, 100 PK Trophies, 3 Hera's Keys, 5 Boxes";
                    arena_group_win_10.Rewards = new List<string>() { "LUM,150000", "XP%,75", "DBKEY,5", "PKTROPHY,100", "PHIAL,5", "HERA,3", "BOX,5" };
                    arena_group_win_10.TaskCount = 10;
                    _pkQuestList.Add(arena_group_win_10);

                    //-Do 20k dmg in any type of arena matches
                    var arenaDmg20k = new PKQuest();
                    arenaDmg20k.QuestCode = "ARENA_DMG20K";
                    arenaDmg20k.Description = "Deal 20k PK damage during arena matches";
                    arenaDmg20k.RewardDescription = "Reward = 20k luminance, 25% XP to next level, 1 Darkbeat Key";
                    arenaDmg20k.TaskCount = 20000;
                    arenaDmg20k.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1" };
                    _pkQuestList.Add(arenaDmg20k);

                    ////- Heal for 5k in any type of arena matches
                    //var arena_heal_5k = new PKQuest();
                    //arena_heal_5k.QuestCode = "ARENA_HEAL5K";
                    //arena_heal_5k.Description = "Heal for 5k health during arena matches";
                    //arena_heal_5k.RewardDescription = "20k luminance, 25% XP to next level, 1 Darkbeat Key";
                    //arena_heal_5k.TaskCount = 5000;
                    //arena_heal_5k.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1" };
                    //_pkQuestList.Add(arena_heal_5k);

                    //- Receive less than 800 damage as the winner of a single arena match
                    var arena_recdmg_800 = new PKQuest();
                    arena_recdmg_800.QuestCode = "ARENA_RECDMG800";
                    arena_recdmg_800.Description = "Win an arena match while receiving less than 800 damage";
                    arena_recdmg_800.RewardDescription = "20k luminance, 25% XP to next level, 1 Darkbeat Key";
                    arena_recdmg_800.TaskCount = 1;
                    arena_recdmg_800.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1" };
                    _pkQuestList.Add(arena_recdmg_800);

                    ////- Do 50k dmg against any players from a whitelisted clan that isn’t your clan (open world or arena)
                    //var dmg50k = new PKQuest();
                    //dmg50k.QuestCode = "DMG50K";
                    //dmg50k.Description = "Deal 50k PK damage to members of any whitelisted allegiance that isn't your own";
                    //dmg50k.RewardDescription = "20k luminance, 25% XP to next level, 1 Darkbeat Key";
                    //dmg50k.TaskCount = 50000;
                    //dmg50k.Rewards = new List<string>() { "LUM,20000", "XP%,25", "DBKEY,1" };
                    //_pkQuestList.Add(dmg50k);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Town Network
                    var pkkill_tn_3 = new PKQuest();
                    pkkill_tn_3.QuestCode = "PKKILL_TN_3";
                    pkkill_tn_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Town Network";
                    pkkill_tn_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies.";
                    pkkill_tn_3.TaskCount = 3;
                    pkkill_tn_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_tn_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Subway
                    var pkkill_sub_3 = new PKQuest();
                    pkkill_sub_3.QuestCode = "PKKILL_SUB_3";
                    pkkill_sub_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Subway";
                    pkkill_sub_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_sub_3.TaskCount = 3;
                    pkkill_sub_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_sub_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan at the Island LS
                    var pkkill_islandls_3 = new PKQuest();
                    pkkill_islandls_3.QuestCode = "PKKILL_ISLANDLS_3";
                    pkkill_islandls_3.Description = "Kill 3 members of an opposing whitelisted allegiance at the Peddler's Outpost Lifestone";
                    pkkill_islandls_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandls_3.TaskCount = 3;
                    pkkill_islandls_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandls_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in VR Roots
                    var pkkill_vrroots_3 = new PKQuest();
                    pkkill_vrroots_3.QuestCode = "PKKILL_VRROOTS_3";
                    pkkill_vrroots_3.Description = "Kill 3 members of an opposing whitelisted allegiance in the Viridian Rise Roots dungeon";
                    pkkill_vrroots_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_vrroots_3.TaskCount = 3;
                    pkkill_vrroots_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_vrroots_3);


                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Shreths
                    var pkkill_islandshreths_3 = new PKQuest();
                    pkkill_islandshreths_3.QuestCode = "PKKILL_ISLANDSHRETHS_3";
                    pkkill_islandshreths_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Shreth Caverns.";
                    pkkill_islandshreths_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandshreths_3.TaskCount = 3;
                    pkkill_islandshreths_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandshreths_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Mites
                    var pkkill_islandmites_3 = new PKQuest();
                    pkkill_islandmites_3.QuestCode = "PKKILL_ISLANDMITES_3";
                    pkkill_islandmites_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Mite Hole.";
                    pkkill_islandmites_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandmites_3.TaskCount = 3;
                    pkkill_islandmites_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandmites_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Dragons
                    var pkkill_islanddragons_3 = new PKQuest();
                    pkkill_islanddragons_3.QuestCode = "PKKILL_ISLANDDRAGONS_3";
                    pkkill_islanddragons_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Dragon's Den.";
                    pkkill_islanddragons_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islanddragons_3.TaskCount = 3;
                    pkkill_islanddragons_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islanddragons_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Golems
                    var pkkill_islandgolems_3 = new PKQuest();
                    pkkill_islandgolems_3.QuestCode = "PKKILL_ISLANDGOLEMS_3";
                    pkkill_islandgolems_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Ancient Temple.";
                    pkkill_islandgolems_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandgolems_3.TaskCount = 3;
                    pkkill_islandgolems_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandgolems_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Wasps
                    var pkkill_islandwasps_3 = new PKQuest();
                    pkkill_islandwasps_3.QuestCode = "PKKILL_ISLANDWASPS_3";
                    pkkill_islandwasps_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Swarm Hive.";
                    pkkill_islandwasps_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandwasps_3.TaskCount = 3;
                    pkkill_islandwasps_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandwasps_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Rats
                    var pkkill_islandrats_3 = new PKQuest();
                    pkkill_islandrats_3.QuestCode = "PKKILL_ISLANDRATS_3";
                    pkkill_islandrats_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Rat Nest.";
                    pkkill_islandrats_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islandrats_3.TaskCount = 3;
                    pkkill_islandrats_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islandrats_3);

                    //- Kill 3 players from a whitelisted clan that isn’t your clan in Drudges
                    var pkkill_islanddrudges_3 = new PKQuest();
                    pkkill_islanddrudges_3.QuestCode = "PKKILL_ISLANDDRUDGES_3";
                    pkkill_islanddrudges_3.Description = "Kill 3 members of an opposing whitelisted allegiance in Drudge Stronghold.";
                    pkkill_islanddrudges_3.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 1 Phial of Bloody Tears, 25 PK Trophies";
                    pkkill_islanddrudges_3.TaskCount = 3;
                    pkkill_islanddrudges_3.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25", "PHIAL,1" };
                    _pkQuestList.Add(pkkill_islanddrudges_3);

                    //- Kill 1 players from a whitelisted clan that isn’t your clan in a Town Control Event
                    var pkkill_TC_1 = new PKQuest();
                    pkkill_TC_1.QuestCode = "PKKILL_TC_1";
                    pkkill_TC_1.Description = "Kill 1 member of an opposing whitelisted allegiance in a Town Control event.";
                    pkkill_TC_1.RewardDescription = "30k luminance, 25% XP to next level, 2 Darkbeat Keys, 25 PK Trophies";
                    pkkill_TC_1.TaskCount = 1;
                    pkkill_TC_1.Rewards = new List<string>() { "LUM,30000", "XP%,25", "DBKEY,2", "PKTROPHY,25"};
                    _pkQuestList.Add(pkkill_TC_1);

                    //- Kill 5 players from a whitelisted clan that isn’t your clan in a Town Control Event
                    var pkkill_TC_5 = new PKQuest();
                    pkkill_TC_5.QuestCode = "PKKILL_TC_5";
                    pkkill_TC_5.Description = "Kill 5 members of an opposing whitelisted allegiance in a Town Control event.";
                    pkkill_TC_5.RewardDescription = "100k luminance, 75% XP to next level, 4 Darkbeat Keys, 1 Phial of Bloody Tears, 50 PK Trophies, a Box";
                    pkkill_TC_5.TaskCount = 5;
                    pkkill_TC_5.Rewards = new List<string>() { "LUM,100000", "XP%,75", "DBKEY,4", "PKTROPHY,50", "PHIAL,1", "BOX,1" };
                    _pkQuestList.Add(pkkill_TC_5);

                    //- Kill 30 players from a whitelisted clan that isn’t your clan in a Town Control Event
                    var pkkill_TC_30 = new PKQuest();
                    pkkill_TC_30.QuestCode = "PKKILL_TC_30";
                    pkkill_TC_30.Description = "Kill 30 members of an opposing whitelisted allegiance in a Town Control event.";
                    pkkill_TC_30.RewardDescription = "750k luminance, 150% XP to next level, 8 Darkbeat Keys, 3 Hera Keys, 3 Phials of Bloody Tears, 250 PK Trophies, 5 Boxes";
                    pkkill_TC_30.TaskCount = 30;
                    pkkill_TC_30.Rewards = new List<string>() { "LUM,750000", "XP%,150", "DBKEY,8", "HERA,3", "PKTROPHY,250", "PHIAL,3", "BOX,5" };
                    _pkQuestList.Add(pkkill_TC_30);
                }

                return _pkQuestList;
            }
        }

        public static string[] PKQuests_ParticipateAnyArena = { "ARENA_ANY_5", "ARENA_ANY_15", "ARENA_ANY_30" };

        public static string[] PKQuests_WinAnyArena = { "ARENA_ANY_WIN_10", "ARENA_ANY_WIN_20", "ARENA_ANY_WIN_30" };

        public static string[] PKQuests_Participate1v1Arena = { "ARENA_1v1_10", "ARENA_1v1_20" };

        public static string[] PKQuests_Win1v1Arena = { "ARENA_1v1_WIN_5", "ARENA_1v1_WIN_15" };

        public static string[] PKQuests_Participate2v2Arena = { "ARENA_2v2_3", "ARENA_2v2_10" };

        public static string[] PKQuests_Win2v2Arena = { "ARENA_2v2_WIN_2" };       

        public static string[] PKQuests_ParticipateGroupArena = { "ARENA_GROUP_1", "ARENA_GROUP_3", "ARENA_GROUP_10" };

        public static string[] PKQuests_WinGroupArena = { "ARENA_GROUP_WIN_1", "ARENA_GROUP_WIN_5", "ARENA_GROUP_WIN_10" };

        public static string[] PKQuests_KillAnywhere = { "KILL_ANY_10", "KILL_ANY_30" };

        public static string[] PKQuests_KillTC = { "PKKILL_TC_1", "PKKILL_TC_5", "PKKILL_TC_30" };
        

        public static PKQuest GetPkQuestByCode(string questCode)
        {
            return PKQuests.PkQuestList.FirstOrDefault(x => x.QuestCode.Equals(questCode));
        }       
    }

    public class PKQuest
    {
        public string QuestCode { get; set; }

        public string Description { get; set; }

        public string RewardDescription { get; set; }

        public int TaskCount { get; set; }

        public List<string> Rewards { get; set; }
    }

    public class PlayerPKQuest
    {
        public string QuestCode { get; set; }

        public int TaskDoneCount { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime? CompletedTime { get; set; }

        public bool IsCompleted { get; set; }

        public bool RewardDelivered { get; set; }
    }    
}
