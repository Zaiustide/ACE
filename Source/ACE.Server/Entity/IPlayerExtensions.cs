using System;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity.TownControl;
using ACE.Server.Managers;
using log4net;
using Newtonsoft.Json;

namespace ACE.Server.Entity
{
    public static class IPlayerExtensions
    {
        private static readonly ILog log =
            LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static T LoadSerialized<T>(this IPlayer player, PropertyString propertyKey)
            where T : new()
        {
            var serialized = player.GetProperty(propertyKey);

            if (string.IsNullOrEmpty(serialized))
                return new T();

            try
            {
                return JsonConvert.DeserializeObject<T>(serialized) ?? new T();
            }
            catch (Exception ex)
            {
                log.Error($"Failed to deserialize {propertyKey} for player {player.Name} (Guid: {player.Guid.Full}). Exception: {ex}");
                return new T();
            }
        }

        public static void SaveSerialized<T>(this IPlayer player, PropertyString propertyKey, T data)
        {
            try
            {
                player.SetProperty(propertyKey, JsonConvert.SerializeObject(data));
            }
            catch (Exception ex)
            {
                log.Error($"Failed to serialize {propertyKey} for player {player.Name} (Guid: {player.Guid.Full}). Exception: {ex}");
            }
        }

        public static bool IsAllegianceWhitelisted(this IPlayer player)
        {
            var allegiance = AllegianceManager.GetAllegiance(player);
            return allegiance?.MonarchId.HasValue == true && TownControlAllegiances.IsAllowedAllegiance((int)allegiance.MonarchId!.Value);
        }

        public static bool IsSameAllegiance(this IPlayer playerA, IPlayer playerB)
        {
            var playerAMonarch = playerA.MonarchId != null ? playerA.MonarchId : playerA.Guid.Full;
            var playerBMonarch = playerB.MonarchId != null ? playerB.MonarchId : playerB.Guid.Full;

            return playerAMonarch == playerBMonarch;
        }
    }
}
