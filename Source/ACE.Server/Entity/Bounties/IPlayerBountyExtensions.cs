using System;
using ACE.Entity.Enum.Properties;
using log4net;
using Newtonsoft.Json;

namespace ACE.Server.Entity.Bounties
{
    public static class IPlayerBountyExtensions
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static BountyInformation LoadBountyInformation(this IPlayer player)
        {
            var bountyInformationSerialized = player.GetProperty(PropertyString.BountyInformationsSerialized);
            if (string.IsNullOrEmpty(bountyInformationSerialized))
                return new BountyInformation();
            try
            {
                return JsonConvert.DeserializeObject<BountyInformation>(bountyInformationSerialized)
                       ?? new BountyInformation();
            }
            catch (Exception ex)
            {
                log.Error($"Failed to deserialize BountyInformations for player {player.Name} (Guid: {player.Guid.Full}). Exception: {ex}");
                return new BountyInformation();
            }
        }

        public static void SaveBountyInformation(this IPlayer player, BountyInformation info)
        {
            try
            {
                player.SetProperty(ACE.Entity.Enum.Properties.PropertyString.BountyInformationsSerialized, JsonConvert.SerializeObject(info));
            }
            catch (Exception ex)
            {
                log.Error($"Failed to serialize BountyInformations for player {player.Name} (Guid: {player.Guid.Full}). Exception: {ex}");
            }
        }
    }
}
