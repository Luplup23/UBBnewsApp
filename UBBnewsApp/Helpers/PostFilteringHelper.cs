using System.Text.RegularExpressions;
using UBBnewsApp.Models;

namespace UBBnewsApp.Helpers
{
    public static partial class PostFilteringHelper
    {
        public static IEnumerable<Post> GetPostsBySearch(IEnumerable<Post> allPosts, string search)
        {
            if (string.IsNullOrWhiteSpace(search))
            {
                return allPosts;
            }

            var trimmedSearch = search.Trim();
            return allPosts
              //Sprawdza każde słowo w tytule, dodatkowo sprawdza, czy po słowie nie ma znaku specjalnego, aby wyłapać każdą instancję słowa
              .Where(post => post.Title != null && CheckSpecialSigns().Split(post.Title)
                .Any(word => string.Equals(word.Trim(), trimmedSearch, StringComparison.OrdinalIgnoreCase)))
              .ToList();
        }

        public static IEnumerable<Post> GetPostsByCategory(IEnumerable<Post> allPosts, string category)
        {
            if (string.IsNullOrWhiteSpace(category))
            {
                return allPosts;
            }

            var trimmedCategory = category.Trim();
            return allPosts.Where(post => post.Category != null && post.Category.Trim().Equals(trimmedCategory, StringComparison.OrdinalIgnoreCase)).ToList();
        }

        [GeneratedRegex(@"\W+")]
        private static partial Regex CheckSpecialSigns();
    }
}