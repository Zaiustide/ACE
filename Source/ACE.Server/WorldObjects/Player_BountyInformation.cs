using System;
using System.Linq;
using ACE.Common;
using ACE.Common.Extensions;
using ACE.Server.Entity;
using ACE.Server.Entity.Bounties;
using ACE.Server.Managers;
using Newtonsoft.Json;

namespace ACE.Server.WorldObjects;

public partial class Player
{
    private BountyInformation _bountyInformation;

    private BountyInformation BountyInformation
    {
        get
        {
            if (_bountyInformation == null)
            {
                _bountyInformation = this.LoadBountyInformation();
            }
            return _bountyInformation;
        }
    }

    private void SaveBountyInformation()
    {
        this.SaveBountyInformation(BountyInformation);
    }

    private double GetBountyCooldown(uint targetGuid)
    {
        var target = GetBountyTargetInfo(targetGuid);

        return target.LastCompletedTimestamp;
    }

    private int GetBountiesCompletedInLastMinutes(int minutes)
    {
        var cutoffTime = DateTime.UtcNow.AddMinutes(-minutes);

        return BountyInformation.BountyCompletionTimestamps
            .Count(t => t >= cutoffTime);
    }

    private void SaveBountyExpiration(uint targetGuid)
    {
        var info = BountyInformation;
        var target = GetBountyTargetInfo(targetGuid);
        target.TotalExpirations++;
        info.TotalBountyExpirationsCount++;
        SaveBountyInformation();
    }

    private class BountyCompletionResult
    {
        public uint TargetGuid;
        public bool IsNewUniqueTarget;
        public bool IsHighPriorityTarget;
        public uint RepeatCount;
        public uint DailyHighPriorityCount;

        public int CountLast30Min;
        public int CountLast60Min;
        public int CountLast90Min;
    }

    private BountyCompletionResult UpdateCompletedBountyInformation(IPlayer bountyTarget, BountyContract contract)
    {
        var targetGuid = bountyTarget.Guid.Full;
        var info = BountyInformation;
        var targetInfo = GetBountyTargetInfo(targetGuid);

        info.TotalBountiesCompleted++;

        targetInfo.LastCompletedTimestamp = Time.GetUnixTime();
        targetInfo.TotalCompletions++;

        // timestamps
        info.BountyCompletionTimestamps.Add(DateTime.UtcNow);
        if (info.BountyCompletionTimestamps.Count > 30)
            info.BountyCompletionTimestamps.RemoveAt(0);

        // repeat count
        if (info.RepeatKillCounts.TryGetValue(targetGuid, out var repeatCount))
            repeatCount++;
        else
            repeatCount = 1;

        info.RepeatKillCounts[targetGuid] = repeatCount;

        // unique
        var isNewUnique = info.UniqueBountyTargets.Add(targetGuid);

        // high priority
        var isHighPriorityTarget = BountyManager.IsHighPriorityTarget(bountyTarget);

        if (isHighPriorityTarget)
        {
            targetInfo.TotalHighPriorityCompletions++;
            info.TotalHighPriorityBountiesCompleted++;
            info.TotalDailyHighPriorityBountiesCompleted++;
        }

        return new BountyCompletionResult
        {
            TargetGuid = targetInfo.TargetGuid,
            IsNewUniqueTarget = isNewUnique,
            IsHighPriorityTarget = isHighPriorityTarget,
            RepeatCount = repeatCount,
            DailyHighPriorityCount = info.TotalDailyHighPriorityBountiesCompleted,
            CountLast30Min = GetBountiesCompletedInLastMinutes(30),
            CountLast60Min = GetBountiesCompletedInLastMinutes(60),
            CountLast90Min = GetBountiesCompletedInLastMinutes(90)
        };
    }

    private BountyTargetInfo GetBountyTargetInfo(uint targetGuid)
    {
        return BountyInformation.BountyTargets.GetOrAdd(targetGuid, guid => new BountyTargetInfo
        {
            TargetGuid = guid
        });
    }

    private void ResetDailyBountyQuestsIfNeeded()
    {
        var today = DateTime.Today;

        if (BountyInformation.LastBountyQuestResetDate < today)
        {
            BountyInformation.UniqueBountyTargets.Clear();
            BountyInformation.RepeatKillCounts.Clear();
            BountyInformation.BountyCompletionTimestamps.Clear();
            BountyInformation.LastBountyQuestResetDate = today;
            BountyInformation.TotalDailyHighPriorityBountiesCompleted = 0;

            SaveBountyInformation();
        }
    }
}
