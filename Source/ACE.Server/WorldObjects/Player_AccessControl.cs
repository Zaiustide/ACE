using System;
using ACE.Server.Entity;
using ACE.Common.Extensions;
using System.Collections.Generic;
using ACE.Server.Entity.AccessControl;
using ACE.Server.Managers;
using System.Collections.Concurrent;
using ACE.Server.Entity.TownControl;
using ACE.Entity;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Database.Models.TownControl;
using ACE.Entity.Enum;

namespace ACE.Server.WorldObjects
{
    public partial class Player
    {
        private PlayerAccessControl _playerAccessControl;

        private PlayerAccessControl AccessControl
        {
            get
            {
                if (_playerAccessControl == null)
                {
                    _playerAccessControl = this.LoadSerialized<PlayerAccessControl>(ACE.Entity.Enum.Properties.PropertyString.PlayerAccessControlSerialized);
                }
                return _playerAccessControl;
            }
        }

        private void SavePlayerAccessControl()
        {
            this.SaveSerialized(ACE.Entity.Enum.Properties.PropertyString.PlayerAccessControlSerialized, AccessControl);
        }

        private void HandleAccessControlOnLogin()
        {
            var address = Session?.EndPointC2S?.Address;
            var ip = address?.MapToIPv4().ToString();
            if (string.IsNullOrEmpty(ip))
                return;

            var accessControlData = AccessControl.AccessHistory.GetOrAdd(ip, ip => new PlayerAccessControlData { IpAddress = ip });
            accessControlData.LastLoginTime = DateTime.UtcNow;

            SavePlayerAccessControl();
        }

        private void HandleAccessControlOnLogout()
        {
            var address = Session?.EndPointC2S?.Address;
            var ip = address?.MapToIPv4().ToString();
            if (string.IsNullOrEmpty(ip))
                return;

            var accessControlData = AccessControl.AccessHistory.GetOrAdd(ip, ip => new PlayerAccessControlData { IpAddress = ip });
            accessControlData.LastLogoutTime = DateTime.UtcNow;

            SavePlayerAccessControl();

            // Stamp the town control event access history on logout to prevent re-entry immediately after logging out
            HandleTownControlOnLeave(Location);
        }

        private bool HandleTownControlAction(Position location, Func<TownControlEvent, bool> action)
        {
            if (TownControlLandblocks.IsTownControlRewardLandblock(location.Landblock))
            {
                var townId = TownControlLandblocks.GetTownIdByLandblockId(location.Landblock);

                if (townId.HasValue)
                {
                    var latestEvent = TownControl.GetLatestTownControlEventByTownId(townId.Value);

                    if (latestEvent != null)
                    {
                        return action(latestEvent);
                    }
                }
            }

            return false;
        }

        private void HandleTownControlOnLeave(Position location)
        {
            HandleTownControlAction(location, (latestEvent) =>
            {
                var address = Session?.EndPointC2S?.Address;
                var ip = address?.MapToIPv4().ToString();
                if (!string.IsNullOrWhiteSpace(ip))
                {
                    latestEvent.IpAccessHistory[ip] = DateTime.UtcNow;
                    return true;
                }

                return false;
            });
        }

        private bool HandleTownControlOnEnter(Position location)
        {
            return HandleTownControlAction(location, (latestEvent) =>
            {
                if (!CanAccessTownControlEvent(latestEvent.IpAccessHistory))
                {
                    this.Session.Network.EnqueueSend(new GameMessageSystemChat("You have recently accessed this town control area on one of your characters. Please wait before re-entering.", ChatMessageType.Broadcast));
                    Teleport(Sanctuary, force: true);
                    return false;
                }

                var address = Session?.EndPointC2S?.Address;
                var ip = address?.MapToIPv4().ToString();
                if (!string.IsNullOrWhiteSpace(ip))
                {
                    latestEvent.IpAccessHistory[ip] = DateTime.UtcNow;
                    return true;
                }

                return false;
            });
        }

        private bool CanAccessTownControlEvent(Dictionary<string, DateTime> townEventIpAccessHistory)
        {
            var now = DateTime.UtcNow;
            var cooldownMinutes = PropertyManager.GetLong("town_control_event_cooldown_minutes").Item;
            var cutoff = now.AddMinutes(-cooldownMinutes);

            var address = Session?.EndPointC2S?.Address;
            var currentIp = address?.MapToIPv4().ToString();

            if (string.IsNullOrEmpty(currentIp))
                return false;

            var accessHistory = AccessControl.AccessHistory;

            // Check current IP
            if (townEventIpAccessHistory.TryGetValue(currentIp, out var lastSeen))
            {
                if (lastSeen > cutoff)
                    return false;
            }

            // Compare IPs from town event to account access history 
            foreach (var kvp in townEventIpAccessHistory)
            {
                var ip = kvp.Key;

                // we already checked current Ip, skip it 
                if (ip == currentIp)
                    continue;

                if (kvp.Value > cutoff && accessHistory.ContainsKey(ip))
                {
                    return false;
                }
            }

            return true;
        }
    }
}
