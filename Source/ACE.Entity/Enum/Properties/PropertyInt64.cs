using System.ComponentModel;

namespace ACE.Entity.Enum.Properties
{
    // No properties are sent to the client unless they featured an attribute.
    // SendOnLogin gets sent to players in the PlayerDescription event
    // AssessmentProperty gets sent in successful appraisal
    public enum PropertyInt64 : ushort
    {
        Undef                 = 0,
        [SendOnLogin]
        TotalExperience       = 1,
        [SendOnLogin]
        AvailableExperience   = 2,
        [AssessmentProperty]
        AugmentationCost      = 3,
        [AssessmentProperty]
        ItemTotalXp           = 4,
        [AssessmentProperty]
        ItemBaseXp            = 5,
        [SendOnLogin]
        AvailableLuminance    = 6,
        [SendOnLogin]
        MaximumLuminance      = 7,
        InteractionReqs       = 8,

        /* Custom Properties */
        AllegianceXPCached    = 9000,
        AllegianceXPGenerated = 9001,
        AllegianceXPReceived  = 9002,
        VerifyXp              = 9003,

        /* Seasons Properties */
        QuestXp = 9101,
        MonsterXp = 9102,
        PvpXp = 9103,

        SeasonalQuestXp = 9104,
        SeasonalMonsterXp = 9105,
        SeasonalPvpXp = 9106,
        SeasonalAdminXp = 9107,
        PreviousLevelCap = 9108,
        DailyMaxXpPerCategory = 9109,
    }
}
