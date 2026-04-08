using System;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity.TownControl;
using ACE.Server.Managers;

namespace ACE.Server.Entity.Bounties
{
    public static class IPlayerBountyExtensions
    {
        public static bool IsHighPriorityTarget(this IPlayer target) =>
            target.GetProperty(PropertyBool.IsBountyHighPriorityTarget)
            ?? false;

        public static string GetPriorityOwnerName(this IPlayer target) =>
            target.GetProperty(PropertyString.BountyPriorityOwnerName)
            ?? throw new InvalidOperationException("BountyOwnerName is missing");

        public static int GetPriorityCurrency(this IPlayer target) =>
            target.GetProperty(PropertyInt.BountyPriorityCurrency)
            ?? throw new InvalidOperationException("BountyPriorityCurrency is missing");

        public static int GetPriorityRewardAmount(this IPlayer target) =>
            target.GetProperty(PropertyInt.BountyPriorityTargetRewardAmount)
            ?? throw new InvalidOperationException("BountyPriorityTargetRewardAmount is missing");

        public static int GetTargetKillStreak(this IPlayer target) =>
            target.GetProperty(PropertyInt.PlayerKillStreak)
            ?? 0;

        public static void ClearHighPriorityBountyProps(this IPlayer player)
        {
            player.RemoveProperty(ACE.Entity.Enum.Properties.PropertyBool.IsBountyHighPriorityTarget);
            player.RemoveProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityTargetRewardAmount);
            player.RemoveProperty(ACE.Entity.Enum.Properties.PropertyInt.BountyPriorityCurrency);
            player.RemoveProperty(ACE.Entity.Enum.Properties.PropertyString.BountyPriorityOwnerName);
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
