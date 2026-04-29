using System;
using System.Collections.Generic;
using ACE.Database.Models.TownControl;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.TownControl;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;

namespace ACE.Server.WorldObjects
{
    public partial class Player
    {
        private static bool IsTownControlIpRestricted => PropertyManager.GetBool("town_control_ip_restricted", false).Item;
        public static long TownControlAllegiancePlayerLimit => PropertyManager.GetLong("town_control_allegiance_player_limit", 13).Item;

        public enum ZergEntryStatus
        {
            Allowed,
            NotWhitelisted,
            SameAllegianceLimitReached,
            TcCharacterEntryLimitReached,
            TcAllegianceEntryLimitReached,
            TcAllowed,
            TcEventEnded,
            WbAllegianceLimitReached,
            WbAllowed,
            TcIpRestricted
        }

        public class ZergEntryResult
        {
            public ZergEntryStatus Status { get; set; }

            public bool Success => Status == ZergEntryStatus.Allowed || Status == ZergEntryStatus.TcAllowed || Status == ZergEntryStatus.WbAllowed;

            public bool LimitReached =>
                Status == ZergEntryStatus.SameAllegianceLimitReached ||
                Status == ZergEntryStatus.TcCharacterEntryLimitReached ||
                Status == ZergEntryStatus.TcAllegianceEntryLimitReached ||
                Status == ZergEntryStatus.WbAllegianceLimitReached;

            public bool Failure => !Success;
        }

        public ZergEntryResult EvaluateZergEntry(ZergControlArea area, Position newPosition)
        {
            if (!this.IsAllegianceWhitelisted())
                return new ZergEntryResult { Status = ZergEntryStatus.NotWhitelisted };

            var allegiance = AllegianceManager.GetAllegiance(this);

            // check if the player's allegiance already has the maximum number of players in this area
            var sameAllegCount = CountPlayersInAreaWithAllegiance(area, allegiance.MonarchId.Value);

            if (sameAllegCount >= area.MaxPlayersPerAllegiance)
                return new ZergEntryResult { Status = ZergEntryStatus.SameAllegianceLimitReached };

            // check town control and worldboss specific rules
            if (ZergControlLandblocks.IsTownControlLandblock(newPosition.Landblock))
                return EvaluateTownControlZerg(allegiance.MonarchId.Value, newPosition);

            if (ZergControlLandblocks.IsWorldBossLandblock(newPosition.Landblock))
                return EvaluateWorldBoss(allegiance.MonarchId.Value, newPosition);

            return new ZergEntryResult { Status = ZergEntryStatus.Allowed };
        }

        private ZergEntryResult EvaluateTownControlZerg(uint monarchId, Position pos)
        {
            var ip = Session?.EndPointC2S?.Address.ToString() ?? string.Empty;

            var townId = TownControlLandblocks.GetTownIdByLandblockId(pos.Landblock);

            if (!townId.HasValue)
                return new ZergEntryResult { Status = ZergEntryStatus.Allowed };

            var latestEvent = TownControl.GetLatestTownControlEventByTownId(townId.Value);

            if (latestEvent == null)
                return new ZergEntryResult { Status = ZergEntryStatus.TcEventEnded };

            if (IsTownControlIpRestricted && latestEvent.IpAddresses.Contains(ip))
                return new ZergEntryResult { Status = ZergEntryStatus.TcIpRestricted };

            if (latestEvent.CharacterEntries.Contains(Guid.Full))
                return new ZergEntryResult { Status = ZergEntryStatus.TcCharacterEntryLimitReached };

            var count = latestEvent.AllegianceEntries.GetValueOrDefault(monarchId);

            if (count >= TownControlAllegiancePlayerLimit)
                return new ZergEntryResult { Status = ZergEntryStatus.TcAllegianceEntryLimitReached };

            return new ZergEntryResult { Status = ZergEntryStatus.TcAllowed };
        }

        private int CountPlayersInAreaWithAllegiance(ZergControlArea area, uint monarchId)
        {
            var players = new HashSet<Player>();

            foreach (var landblockId in area.AreaLandblockIds)
            {
                var landblock = LandblockManager.GetLandblock(new LandblockId(landblockId << 16), false);
                foreach (var p in landblock.GetCurrentLandblockPlayers())
                {
                    var alleg = AllegianceManager.GetAllegiance(p);

                    if (alleg?.MonarchId == monarchId)
                        players.Add(p);
                }
            }

            return players.Count;
        }

        private ZergEntryResult EvaluateWorldBoss(uint monarchId, Position pos)
        {
            var wb = WorldBossManager.GetActiveWorldBoss();

            if (wb == null || !wb.MaxAllegianceEntries.HasValue || wb.IndoorLocation.Landblock != pos.Landblock)
                return new ZergEntryResult { Status = ZergEntryStatus.WbAllowed };

            var count = wb.AllegianceEntries.GetValueOrDefault(monarchId);

            if (count >= wb.MaxAllegianceEntries)
                return new ZergEntryResult { Status = ZergEntryStatus.WbAllegianceLimitReached };

            return new ZergEntryResult { Status = ZergEntryStatus.WbAllowed };
        }

        /// <summary>
        /// Side effects for ZergControl failure entry
        /// </summary>
        /// <param name="result"></param>
        /// <param name="zergArea"></param>
        public void HandleZergEntryFailure(ZergEntryResult result, ZergControlArea zergArea, Position pos)
        {
            var allegiance = AllegianceManager.GetAllegiance(this);
            var playerAllegName = allegiance?.Monarch?.Player?.Name ?? "Unknown";

            // If the player failed to enter a world boss area due to zerg, we don't want them locked out
            if (zergArea.IsWorldBossArea)
                QuestManager.Erase("EnterBattleDungeon");

            if (result.Status == ZergEntryStatus.NotWhitelisted)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a zerg restricted area.  This area is currently only open to clans who are whitelisted for town control to prevent players from breaking allegiance in order to exceed clan capacity restrictions.  Please contact an admin to get your clan whitelisted for entry.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.SameAllegianceLimitReached)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a zerg restricted area.  {playerAllegName} already has {zergArea.MaxPlayersPerAllegiance} players in this area, which is the maximum allowed per allegiance.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.TcIpRestricted)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a town control reward area.  Your IP address has already been used to enter this area during the current town control event, and IP restrictions are enabled for this event.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.TcAllegianceEntryLimitReached)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a town control reward area.  {playerAllegName} already has the maximum number of players entered in this area for the current town control event.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.TcCharacterEntryLimitReached)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a town control reward area.  You have already entered this area with this character for the current town control event.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.TcEventEnded)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a town control reward area.  The current town control event for this area has ended or does not exist.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }

            if (result.Status == ZergEntryStatus.WbAllegianceLimitReached)
            {
                Session.Network.EnqueueSend(
                    new GameMessageSystemChat($"You have attempted to enter a zerg restricted area.  Your allegiance {playerAllegName} has reached the maximum allowed entries for this world boss area.  You have been redirected to your lifestone.", ChatMessageType.System));
                return;
            }
        }

        /// <summary>
        /// Side effects for zerg control success entry
        /// </summary>
        /// <param name="result"></param>
        /// <param name="area"></param>
        /// <param name="pos"></param>
        public void HandleZergEntrySuccess(ZergControlArea area, Position pos)
        {
            if (area.IsTownControlArea)
                HandleZergTownControlEntrySuccess(area, pos);

            if (area.IsWorldBossArea)
                HandleZergWorldBossEntrySuccess(area, pos);
        }

        private void HandleZergTownControlEntrySuccess(ZergControlArea area, Position pos)
        {
            var allegiance = AllegianceManager.GetAllegiance(this);
            var clanName = allegiance?.Monarch?.Player?.Name ?? "Unknown";
            var ip = Session?.EndPointC2S?.Address.ToString() ?? string.Empty;

            var townId = TownControlLandblocks.GetTownIdByLandblockId(pos.Landblock);
            if (!townId.HasValue)
                return;

            var latestEvent = TownControl.GetLatestTownControlEventByTownId(townId.Value);
            if (latestEvent == null)
                return;

            latestEvent.IpAddresses.Add(ip);
            latestEvent.CharacterEntries.Add(Guid.Full);

            if (latestEvent.AllegianceEntries.ContainsKey(allegiance.MonarchId.Value))
                latestEvent.AllegianceEntries[allegiance.MonarchId.Value]++;
             else
                latestEvent.AllegianceEntries.Add(allegiance.MonarchId.Value, 1);

            Session.Network.EnqueueSend(
                new GameMessageSystemChat($"You have entered the town control area for {clanName}.  Good luck!", ChatMessageType.System));
        }

        private void HandleZergWorldBossEntrySuccess(ZergControlArea area, Position pos)
        {
            var wb = WorldBossManager.GetActiveWorldBoss();

            if (wb == null)
                return;

            if (wb.IndoorLocation.Landblock != pos.Landblock)
                return;

            if (wb.AllegianceEntries.ContainsKey(MonarchId.Value))
                wb.AllegianceEntries[MonarchId.Value]++;
            else
                wb.AllegianceEntries.Add(MonarchId.Value, 1);

            Session.Network.EnqueueSend(
                new GameMessageSystemChat($"You have entered the world boss area for {wb.Name}.  Good luck!", ChatMessageType.System));
        }
    }
}
