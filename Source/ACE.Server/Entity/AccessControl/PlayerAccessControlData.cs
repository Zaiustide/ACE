using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.AccessControl
{
    public class PlayerAccessControlData
    {
        public string IpAddress { get; set; }

        public bool? IsVpn;
        public DateTime LastLoginTime { get; set; }
        public DateTime LastLogoutTime { get; set; }

    }
}
