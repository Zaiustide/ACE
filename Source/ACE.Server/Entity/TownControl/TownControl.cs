using ACE.Database;
using ACE.Database.Models.TownControl;
using log4net;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Entity.TownControl
{
    public static class TownControl
    {
        private static Dictionary<uint, Town> _towns = null;        

        public static Dictionary<uint, Town> TownsMap
        {
            get
            {
                if (_towns == null)
                {
                    _towns = new Dictionary<uint, Town>();
                    var townDbRecs = DatabaseManager.TownControl.GetAllTowns();
                    foreach(var townDb in townDbRecs)
                    {
                        _towns.Add(townDb.TownId, townDb);
                    }
                }

                return _towns;
            }
        }

        public static List<Town> Towns
        {
            get
            {
                return TownsMap.Values?.ToList();
            }
        }        

        public static Town GetTownById(uint id)
        {
            return TownsMap.ContainsKey(id) ? TownsMap[id] : null;
        }

        public static void UpdateTown(Town town)
        {
            if(TownsMap.ContainsKey(town.TownId))
            {
                TownsMap[town.TownId] = town;
                DatabaseManager.TownControl.UpdateTown(town);
            }            
        }

        private static Dictionary<uint, TownControlEvent> _latestEventsByTown = null;

        public static Dictionary<uint, TownControlEvent> LatestEventsByTown
        {
            get
            {
                if(_latestEventsByTown == null)
                {
                    _latestEventsByTown = new Dictionary<uint, TownControlEvent>();
                    foreach(var town in Towns)
                    {
                        var latestEvent = DatabaseManager.TownControl.GetLatestTownControlEventByTownId(town.TownId);
                        if(latestEvent != null)
                        {
                            _latestEventsByTown[town.TownId] = latestEvent;
                        }
                    }
                }

                return _latestEventsByTown;
            }
        }

        public static TownControlEvent GetLatestTownControlEventByTownId(uint townId)
        {
            return LatestEventsByTown[townId];
        }


        private static Dictionary<uint, List<TownControlEvent>> _latestEventsByMonarch = null;

        public static Dictionary<uint, List<TownControlEvent>> LatestEventsByMonarch
        {
            get
            {
                if (_latestEventsByMonarch == null)
                {
                    _latestEventsByMonarch = new Dictionary<uint, List<TownControlEvent>>();
                    var monarchIds = TownControlAllegiances.AllowedAllegianceList;
                    foreach (var monarchId in monarchIds)
                    {
                        var events = new List<TownControlEvent>();
                        foreach (var town in Towns)
                        {
                            var latestEvent = DatabaseManager.TownControl.GetLatestTownControlEventByAttackingMonarchId((uint)monarchId, town.TownId);
                            if (latestEvent != null)
                            {
                                events.Add(latestEvent);
                            }
                        }

                        if (events.Count > 0)
                        {
                            _latestEventsByMonarch.Add((uint)monarchId, events);
                        }
                    }
                }

                return _latestEventsByMonarch;
            }
        }

        public static TownControlEvent GetLatestTownControlEventByAttackingMonarchId(uint attackingMonarchId, uint townId)
        {
            if(LatestEventsByMonarch.ContainsKey(attackingMonarchId))
            {
                return LatestEventsByMonarch[attackingMonarchId].FirstOrDefault(x => x.TownId == townId);
            }

            return null;
        }

        public static TownControlEvent StartTownControlEvent(uint townId, uint attackingClanId, string attackingClanName, uint? defendingClanId, string defendingClanName)
        {
            var tcEvent = DatabaseManager.TownControl.StartTownControlEvent(townId, attackingClanId, attackingClanName, defendingClanId, defendingClanName);

            if(tcEvent != null)
            {
                LatestEventsByTown[townId] = tcEvent;

                LatestEventsByMonarch[attackingClanId]?.RemoveAll(x => x.TownId == townId);
                LatestEventsByMonarch[attackingClanId].Add(tcEvent);                
            }

            return tcEvent;
        }

        public static void UpdateTownControlEvent(TownControlEvent tcEvent)
        {
            if (tcEvent != null)
            {
                DatabaseManager.TownControl.UpdateTownControlEvent(tcEvent);

                LatestEventsByTown[tcEvent.TownId] = tcEvent;

                if (LatestEventsByMonarch.ContainsKey(tcEvent.AttackingClanId))
                {
                    LatestEventsByMonarch[tcEvent.AttackingClanId]?.RemoveAll(x => x.TownId == tcEvent.TownId);
                    LatestEventsByMonarch[tcEvent.AttackingClanId]?.Add(tcEvent);
                }
                else
                {
                    LatestEventsByMonarch.Add(tcEvent.AttackingClanId, new List<TownControlEvent> { tcEvent });
                }
            }
        }
    }
}
