using System;
using System.Collections.Generic;
using System.Text;

namespace ACE.Common
{
    public static class Formatting
    {
        public static string FormatIntWithCommas(ulong number)
        {
            return number.ToString("#,0");
        }

        public static string FormatTimeRemaining(TimeSpan timeRemaining)
        {
            if (timeRemaining.TotalSeconds < 1)
            {
                return "less than a second";
            }
            else if (timeRemaining.TotalMinutes < 1)
            {
                return $"{timeRemaining.Seconds} second{(timeRemaining.Seconds != 1 ? "s" : "")}";
            }
            else if (timeRemaining.TotalHours < 1)
            {
                return $"{timeRemaining.Minutes} minute{(timeRemaining.Minutes != 1 ? "s" : "")} and {timeRemaining.Seconds} second{(timeRemaining.Seconds != 1 ? "s" : "")}";
            }
            else
            {
                return $"{timeRemaining.Hours} hour{(timeRemaining.Hours != 1 ? "s" : "")}, {timeRemaining.Minutes} minute{(timeRemaining.Minutes != 1 ? "s" : "")}, and {timeRemaining.Seconds} second{(timeRemaining.Seconds != 1 ? "s" : "")}";
            }
        }

        public static string FormatUtcToPst(DateTime utcTime)
        {
            TimeZoneInfo pstZone = TimeZoneInfo.FindSystemTimeZoneById("Pacific Standard Time");

            DateTime pstTime = TimeZoneInfo.ConvertTimeFromUtc(utcTime, pstZone);

            return $"{pstTime} PST";
        }
    }
}
