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
using log4net.Core;

namespace ACE.Server.Managers
{
    public static class SeasonsManager
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static void Initialize()
        {
            
        }

        private static DateTime LastTickDateTime = DateTime.MinValue;
        public static void Tick()
        {
            if (DateTime.Now.AddMinutes(-15) < LastTickDateTime)
                return;

            LastTickDateTime = DateTime.Now;

            try
            {
                var currentSeason = PropertyManager.GetLong("current_season").Item;

                if (currentSeason < 1)
                    return;

                var lastLevelCapUpdate = Time.GetDateTimeFromTimestamp(PropertyManager.GetLong("season_level_cap_timestamp").Item);
                if(lastLevelCapUpdate < DateTime.Today)
                {
                    UpdateLevelCap();
                }
            }
            catch (Exception ex)
            {
                log.Error($"Exception in SeasonsManager.Tick. Ex: {ex}");
            }
        }

        public static void UpdateLevelCap()
        {
            /*
                -At season launch, cap starts at level 15
                -Weeks 1 - 2
                Cap increases 4 levels per day
                would bring cap to
                39 at week 1
                67 at week 2

                -Week 3-6
                Cap increases 3.5 levels per day
                91.5 week 3
                116 week 4
                140.5 week 5
                165 week 6

                -Week 7-10
                Cap increases 3.25 lvls per day
                187.75 week 7
                210.5 week 8
                233.25 week 9
                256 week 10

                -Weeks 11 and 12
                Cap increases 1.35 levels per day
                266 week 11
                275 week 12
            */

            try
            {
                //var currLevelCap = PropertyManager.GetLong("season_level_cap").Item;
                double newLevelCap = 15;
                var seasonStartDate = Time.GetDateTimeFromTimestamp(PropertyManager.GetLong("season_start_timestamp").Item).Date;
                var daysSinceStart = Math.Floor((DateTime.Now - seasonStartDate).TotalDays);

                for (int i = 0; i < daysSinceStart; i++)
                {
                    if (i < 15)
                    {
                        newLevelCap += 4;
                    }
                    else if (i < 42)
                    {
                        newLevelCap += 3.5;
                    }
                    else if (i < 70)
                    {
                        newLevelCap += 3.25;
                    }
                    else if (i < 84)
                    {
                        newLevelCap += 1.35;
                    }
                }

                PropertyManager.ModifyLong("season_level_cap", Convert.ToInt64(Math.Ceiling(newLevelCap)));
                PropertyManager.ModifyLong("season_level_cap_timestamp", (long)Time.GetUnixTime(DateTime.Now));
            }
            catch (Exception ex)
            {
                log.Error($"Exception in SeasonsManager.UpdateLevelCap. Ex: {ex}");
            }
        }
    }
}
