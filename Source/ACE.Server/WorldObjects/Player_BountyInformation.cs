using System;
using System.Linq;
using ACE.Common;
using ACE.Common.Extensions;
using ACE.Server.Entity.Bounties;
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
                _bountyInformation = LoadBountyInformation();
            }
            return _bountyInformation;
        }
    }

    private BountyInformation LoadBountyInformation()
    {
        if (string.IsNullOrEmpty(BountyInformationsSerialized))
            return new BountyInformation();
        try
        {
            return JsonConvert.DeserializeObject<BountyInformation>(BountyInformationsSerialized)
                   ?? new BountyInformation();
        }
        catch (Exception ex)
        {
            log.Error($"Failed to deserialize BountyInformations for player {Name} (Guid: {Guid.Full}). Exception: {ex}");
            return new BountyInformation();
        }
    }

    private void SaveBountyInformation()
    {
        try
        {
            BountyInformationsSerialized = JsonConvert.SerializeObject(BountyInformation);
        }
        catch (Exception ex)
        {
            log.Error($"Failed to serialize BountyInformations for player {Name} (Guid: {Guid.Full}). Exception: {ex}");
        }
    }

    private double GetBountyCooldown(uint targetGuid)
    {
        var target = GetBountyTarget(targetGuid);

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
        var target = GetBountyTarget(targetGuid);
        target.TotalExpirations++;
        info.TotalBountyExpirationsCount++;
        SaveBountyInformation();
    }

    private class BountyCompletionResult
    {
        public uint TargetGuid;
        public bool IsNewUniqueTarget;
        public uint RepeatCount;

        public int CountLast30Min;
        public int CountLast60Min;
        public int CountLast90Min;
    }

    private BountyCompletionResult UpdateCompletedBountyInformation(uint bountyTargetGuid, BountyContract contract)
    {
        var info = BountyInformation;
        var target = GetBountyTarget(bountyTargetGuid);

        info.TotalBountiesCompleted++;

        target.LastCompletedTimestamp = Time.GetUnixTime();
        target.TotalCompletions++;

        // timestamps
        info.BountyCompletionTimestamps.Add(DateTime.UtcNow);
        if (info.BountyCompletionTimestamps.Count > 30)
            info.BountyCompletionTimestamps.RemoveAt(0);

        // repeat count
        if (info.RepeatKillCounts.TryGetValue(bountyTargetGuid, out var repeatCount))
            repeatCount++;
        else
            repeatCount = 1;

        info.RepeatKillCounts[bountyTargetGuid] = repeatCount;

        // unique
        var isNewUnique = info.UniqueBountyTargets.Add(bountyTargetGuid);

        return new BountyCompletionResult
        {
            TargetGuid = bountyTargetGuid,
            IsNewUniqueTarget = isNewUnique,
            RepeatCount = repeatCount,
            CountLast30Min = GetBountiesCompletedInLastMinutes(30),
            CountLast60Min = GetBountiesCompletedInLastMinutes(60),
            CountLast90Min = GetBountiesCompletedInLastMinutes(90)
        };
    }

    private BountyTargetInfo GetBountyTarget(uint targetGuid)
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

            SaveBountyInformation();
        }
    }
}
