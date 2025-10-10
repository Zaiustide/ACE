using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ACE.Common.Extensions
{
    public static class EnumHelper
    {
        /// <summary>
        /// Returns a list of flags for enum
        /// </summary>
        public static List<Enum> GetFlags(this Enum e)
        {
            return Enum.GetValues(e.GetType()).Cast<Enum>().Where(e.HasFlag).ToList();
        }

        /// <summary>
        /// Returns the # of bits set in a Flags enum
        /// </summary>
        /// <param name="enumVal">The enum uint value</param>
        public static int NumFlags(uint enumVal)
        {
            var cnt = 0;
            while (enumVal != 0)
            {
                // remove the next set bit
                enumVal &= enumVal - 1;
                cnt++;
            }
            return cnt;
        }

        /// <summary>
        /// Returns TRUE if this flags enum has multiple flags set
        /// </summary>
        /// <param name="enumVal">The enum uint value</param>
        public static bool HasMultiple(uint enumVal)
        {
            return (enumVal & (enumVal - 1)) != 0;
        }

        /// <summary>
        /// Converts a PascalCase enum name to display-friendly text by adding spaces before capital letters that start new words.
        /// For example: "BlackGarnet" becomes "Black Garnet", "ImperialTopaz" becomes "Imperial Topaz"
        /// </summary>
        /// <param name="enumValue">The enum value to convert</param>
        /// <returns>A display-friendly string with spaces between words</returns>
        public static string ToDisplayString(this Enum enumValue)
        {
            var name = enumValue.ToString();
            return AddSpacesToPascalCase(name);
        }

        /// <summary>
        /// Converts a PascalCase string to display-friendly text by adding spaces before capital letters that start new words.
        /// For example: "BlackGarnet" becomes "Black Garnet", "ImperialTopaz" becomes "Imperial Topaz"
        /// </summary>
        /// <param name="pascalCaseString">The PascalCase string to convert</param>
        /// <returns>A display-friendly string with spaces between words</returns>
        public static string AddSpacesToPascalCase(string pascalCaseString)
        {
            if (string.IsNullOrEmpty(pascalCaseString))
                return pascalCaseString;

            var result = new StringBuilder();

            for (int i = 0; i < pascalCaseString.Length; i++)
            {
                char currentChar = pascalCaseString[i];

                // Add space before uppercase letters that start a new word
                // (not the first character and the previous character is lowercase)
                if (i > 0 && char.IsUpper(currentChar) && char.IsLower(pascalCaseString[i - 1]))
                {
                    result.Append(' ');
                }

                result.Append(currentChar);
            }

            return result.ToString();
        }
    }
}
