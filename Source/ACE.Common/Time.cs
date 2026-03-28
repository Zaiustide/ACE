using System;
using System.Collections.Generic;

namespace ACE.Common
{
    public class Time
    {
        private static readonly DateTime unixEpoch = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);

        public static double GetUnixTime()
        {
            return GetUnixTime(DateTime.UtcNow);
        }

        public static double GetUnixTime(DateTime dateTime)
        {
            TimeSpan span = (dateTime - unixEpoch);

            return span.TotalSeconds;
        }

        public static double GetFutureUnixTime(double seconds)
        {
            TimeSpan span = (DateTime.UtcNow.AddSeconds(seconds) - unixEpoch);

            return span.TotalSeconds;
        }

        public static DateTime GetDateTimeFromTimestamp(double timestamp)
        {
            return unixEpoch.AddSeconds(timestamp);
        }

        public static string GetHumanReadableTimestamp()
        {
            var unixTimestamp = Time.GetUnixTime();
            var dto = DateTimeOffset.FromUnixTimeSeconds((long)unixTimestamp);
            return dto.ToLocalTime().ToString("MMM-dd-yyyy h:mm:ss tt");
        }

        public static string GetTimeRemainingString(DateTime? startTime, TimeSpan duration, DateTime? now = null, string expiredText = "expired")
        {
            if (!startTime.HasValue)
                return expiredText;

            var currentTime = now ?? DateTime.UtcNow;
            var expirationTime = startTime.Value + duration;
            var remaining = expirationTime - currentTime;

            if (remaining <= TimeSpan.Zero)
                return expiredText;

            var parts = new List<string>();

            if (remaining.Days > 0)
                parts.Add($"{remaining.Days} day{(remaining.Days > 1 ? "s" : "")}");

            if (remaining.Hours > 0)
                parts.Add($"{remaining.Hours} hour{(remaining.Hours > 1 ? "s" : "")}");

            if (remaining.Minutes > 0)
                parts.Add($"{remaining.Minutes} minute{(remaining.Minutes > 1 ? "s" : "")}");

            if (remaining.Seconds > 0 || parts.Count == 0)
                parts.Add($"{remaining.Seconds} second{(remaining.Seconds != 1 ? "s" : "")}");

            return string.Join(", ", parts);
        }
    }
}
