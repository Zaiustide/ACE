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
    }
}
