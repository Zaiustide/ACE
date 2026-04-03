using System;
using ACE.Server.Entity;
using ACE.Common.Extensions;
using ACE.Server.Network.Handlers;
using System.Collections.Generic;
using ACE.Server.Network;
using System.Threading.Tasks;
using System.Net;
using ACE.Server.Entity.AccessControl;
using ACE.Server.Managers;

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
        }
    }
}
