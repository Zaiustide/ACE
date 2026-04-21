using System;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity.Bounties;
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
    }
}
