using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

using log4net;

using ACE.Common;
using ACE.Database;
using ACE.Database.Models.Shard;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Network.Enum;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

using Biota = ACE.Entity.Models.Biota;
using ACE.Database.Models.Log;
using ACE.Server.Network.GameAction.Actions;
using ACE.Server.Entity.Chess;
using System.Runtime.CompilerServices;
using System.Net.NetworkInformation;
using ACE.Server.Entity.Actions;
using Microsoft.Extensions.Logging;
using ACE.Server.Entity;
using ACE.Server.Entity.WorldBoss;
using ACE.Server.Factories;
using ACE.Server.Network.Handlers;
using ACE.Database.Models.TownControl;

namespace ACE.Server.Managers
{
    public static class WorldBossManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static DateTime LastTickDateTime = DateTime.MinValue;
        private static DateTime? nextBossSpawnTime = null;
        private static WorldBoss activeWorldBoss = null;

        public static void Initialize()
        {
            
        }

        
        public static void Tick()
        {
            if (DateTime.Now.AddSeconds(-5) < LastTickDateTime)
                return;

            LastTickDateTime = DateTime.Now;

            bool isWorldBossesDisabled = PropertyManager.GetBool("disable_world_bosses").Item;
            if (isWorldBossesDisabled)
            {
                return;
            }

            if(!nextBossSpawnTime.HasValue)
            {
                nextBossSpawnTime = RollNextSpawnTime(0, 3);
            }

            //if there's no active boss, and the next spawn time is in the past, spawn a boss
            if(activeWorldBoss == null && DateTime.Now > nextBossSpawnTime)
            {
                SpawnNewWorldBoss();                
                nextBossSpawnTime = RollNextSpawnTime(6, 18);
                return;
            }
            
            if(activeWorldBoss != null && activeWorldBoss.BossWorldObject != null)
            {
                //For indoor bosses make them take zero dmg if more than one allegiance is on the landblock                
                if (activeWorldBoss.IndoorLocation != null)
                {
                    var bossLandblock = LandblockManager.GetLandblock(activeWorldBoss.IndoorLocation.LandblockId, false, true);
                    var playersOnLandblock = bossLandblock?.GetCurrentLandblockPlayers() ?? new List<Player>();
                    uint? firstAllegId = null;
                    bool hasMultipleAllegiances = false;
                    bool isBossInvincible = activeWorldBoss.BossWorldObject.GetProperty(PropertyBool.Invincible) ?? true;

                    foreach (var player in playersOnLandblock)
                    {
                        if(firstAllegId.HasValue && firstAllegId.Value != (player?.Allegiance?.MonarchId ?? 0))
                        {
                            hasMultipleAllegiances = true;
                            break;
                        }
                        else
                        {
                            firstAllegId = player?.Allegiance?.MonarchId ?? player?.Character.Id ?? 0;
                        }                        
                    }

                    if(hasMultipleAllegiances && isBossInvincible)
                    {
                        bossLandblock.EnqueueBroadcast(null, false, null, null, new GameMessageSystemChat($"Human challengers have arrived to the battle, driving {activeWorldBoss.Name} to become invulnerable. Fight valiantly until only one allegiance remains before you may once again join battle with the mighty {activeWorldBoss.Name}.", ChatMessageType.Broadcast));
                        activeWorldBoss.BossWorldObject.SetProperty(PropertyBool.Invincible, false);
                    }
                    else if(!hasMultipleAllegiances && !isBossInvincible)
                    {
                        bossLandblock.EnqueueBroadcast(null, false, null, null, new GameMessageSystemChat($"{activeWorldBoss.Name} has become attackable", ChatMessageType.Broadcast));
                        activeWorldBoss.BossWorldObject.SetProperty(PropertyBool.Invincible, true);
                    }
                }
            }
        }

        private static DateTime RollNextSpawnTime(int minHrs, int maxHrs)
        {            
            var hr = ThreadSafeRandom.Next(minHrs, maxHrs);
            var min = ThreadSafeRandom.Next(0, 59);
            return DateTime.Now.AddHours(hr).AddMinutes(min);
        }

        public static void SpawnNewWorldBoss()
        {
            //Get a random boss to spawn, and get a random spawn location
            var boss = WorldBosses.GetRandomWorldBoss();
            var spawnLoc = boss.RollRandomSpawnLocation();
            boss.Location = spawnLoc.Value;            

            //Spawn the boss
            var bossWeenie = DatabaseManager.World.GetCachedWeenie(boss.WeenieID);            
            if (boss.StatueWeenieId.HasValue && boss.IndoorLocation != null)
            {
                var statueWeenie = DatabaseManager.World.GetCachedWeenie(boss.StatueWeenieId.Value);

                //Perma load the landblock for the statue location
                var statueLandblockID = new LandblockId(spawnLoc.Key << 16);
                var statueLandblock = LandblockManager.GetLandblock(statueLandblockID, false, true);

                //Create statue in world
                var statueWorldObj = WorldObjectFactory.CreateNewWorldObject(statueWeenie);
                statueWorldObj.Location = spawnLoc.Value;
                statueWorldObj.CurrentLandblock = statueLandblock;
                statueWorldObj.TimeToRot = -1;
                statueWorldObj.Lifespan = 3600000;
                statueWorldObj.EnterWorld();

                boss.StatueWorldObject = statueWorldObj;

                //Perma load the landblock for the boss location
                var bossLandblockID = new LandblockId(boss.IndoorLocation.LandblockId.Raw << 16);
                var bossLandblock = LandblockManager.GetLandblock(bossLandblockID, false, true);

                //Create boss in world
                var bossWorldObj = WorldObjectFactory.CreateNewWorldObject(bossWeenie);
                bossWorldObj.Location = boss.IndoorLocation;
                bossWorldObj.CurrentLandblock = bossLandblock;
                bossWorldObj.TimeToRot = -1;
                bossWorldObj.Lifespan = 3600000;
                bossWorldObj.EnterWorld();
                boss.BossWorldObject = bossWorldObj;

                //Add indoor landblock as whitelisted for ratings
                Whitelist.AddLandblockToRatingsWhitelist(boss.IndoorLocation.LandblockId.Raw);
            }
            else
            {
                //Perma load the landblock for the spawn location
                var landblockID = new LandblockId(spawnLoc.Key << 16);
                var landblock = LandblockManager.GetLandblock(landblockID, false, true);

                var bossWorldObj = WorldObjectFactory.CreateNewWorldObject(bossWeenie);
                bossWorldObj.Location = spawnLoc.Value;
                bossWorldObj.CurrentLandblock = landblock;
                bossWorldObj.EnterWorld();
                boss.BossWorldObject = bossWorldObj;

                //Add landblock as whitelisted for ratings
                Whitelist.AddLandblockToRatingsWhitelist(spawnLoc.Key);
            }

            //Send global message
            PlayerManager.BroadcastToAll(new GameMessageSystemChat(boss.SpawnMsg, ChatMessageType.Broadcast));

            //Send global to webhook
            try
            {
                var webhookUrl = PropertyManager.GetString("world_boss_webhook").Item;
                if (!string.IsNullOrEmpty(webhookUrl))
                {
                    _ = TurbineChatHandler.SendWebhookedChat("World Boss", boss.SpawnMsg, webhookUrl, "Global");
                }
            }
            catch (Exception ex)
            {
                log.ErrorFormat("Failed sending World Boss global message to webhook. Ex:{0}", ex);
            }

            activeWorldBoss = boss;
        }

        public static WorldBoss GetActiveWorldBoss()
        {
            return activeWorldBoss;            
        }

        public static DateTime? GetNextSpawnTime()
        {
            return nextBossSpawnTime;
        }

        public static void HandleBossDeath()
        {
            activeWorldBoss = null;
        }
    }
}
