using HtmlAgilityPack;

namespace UBBnewsApp.Services
{
    public class CreatePagination
    {
        private static bool IsInteger(string text)
        {
            return int.TryParse(text, out _);
        }

        private static int ParsePageNumber(HtmlNode node)
        {
            return int.Parse(node.InnerText.Trim());
        }
        private static HtmlNode GetLastPageNode(HtmlNodeCollection paginationNodes)
        {
            return paginationNodes
                .Where(node => IsInteger(node.InnerText.Trim()))
                .OrderByDescending(ParsePageNumber)
                .FirstOrDefault();
        }

        public static int CurrentPage(HtmlNodeCollection paginationNodes)
        {
            if (paginationNodes != null)
            {
                var lastPageNode = GetLastPageNode(paginationNodes);

                if (lastPageNode != null)
                {
                    return ParsePageNumber(lastPageNode);
                }
            }

            return 1;
        }
    }
}
