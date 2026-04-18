using System;
using System.Collections.Generic;

namespace ACE.Database.Models.Log
{
    public class StuckCharacterLog
    {
        public long Id { get; set; }

        public uint PlayerGuid { get; set; }
        public string PlayerName { get; set; }

        public string AccountName { get; set; }
        public int AccountId { get; set; }

        public string SessionInfo { get; set; }

        public string Landblock { get; set; }
        public string Location { get; set; }

        public bool IsLoggingOut { get; set; }
        public bool IsInDeathProcess { get; set; }
        public bool FoundOnLandblock { get; set; }
        public bool ForcedLogOffRequested { get; set; }
        public uint PkLogoutState { get; set; }
        public uint MaterializedLogoutState { get; set; }

        public string LogoffPath { get; set; }

        public DateTime CreatedAtUtc { get; set; }
    }
}
