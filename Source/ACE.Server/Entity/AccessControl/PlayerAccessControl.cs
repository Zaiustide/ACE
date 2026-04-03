using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using ACE.Server.Network;

namespace ACE.Server.Entity.AccessControl
{
    public class PlayerAccessControl
    {
        public Dictionary<string, PlayerAccessControlData> AccessHistory { get; set; } = new Dictionary<string, PlayerAccessControlData>();
    }
}
