using HtmlAgilityPack;
using UBBnewsApp.Models;

namespace UBBnewsApp.Services
{
    public class CreatePosts
    {

        public static List<Post> ParseHtml(string html)
        {
            var doc = new HtmlDocument();
            doc.LoadHtml(html);

            var baseUrl = "https://ubb.edu.pl";
            var posts = new List<Post>();
            var newsGrids = doc.DocumentNode.SelectNodes("//div[contains(@class, 'news-grid')]");

            foreach (var newsGrid in newsGrids)
            {
                var post = new Post
                {
                    Category = CreateCategory(newsGrid),
                    Title = CreateTitle(newsGrid),
                    ImageUrl = CreateImage(newsGrid, baseUrl),
                    Url = CreateUrl(newsGrid, baseUrl)
                };

                posts.Add(post);
            }

            return posts;
        }

        private static string CreateCategory(HtmlNode newsGrid)
        {
            var categoryNode = newsGrid.SelectSingleNode(".//a[contains(@class, 'category-in-news')]");
            return categoryNode?.InnerText.Trim();

        }
        private static string CreateTitle(HtmlNode newsGrid)
        {
            var titleNode = newsGrid.SelectSingleNode(".//div[@class='news-content']//a[@class='title']");
            return titleNode?.InnerText.Trim();

        }
        private static string CreateUrl(HtmlNode newsGrid, string baseUrl)
        {
            string? url = string.Empty;
            var titleNode = newsGrid.SelectSingleNode(".//div[@class='news-content']//a[@class='title']");
            var urlNode = titleNode?.Attributes["href"];
            if (urlNode != null)
            {
                url = urlNode.Value;
            }
            return new Uri(new Uri(baseUrl), url).AbsoluteUri;
        }
        private static string CreateImage(HtmlNode newsGrid, string baseUrl)
        {
            var imageNode = newsGrid.SelectSingleNode(".//img[contains(@class, 'photo-cont')]");
            var imageUrl = imageNode.GetAttributeValue("src", string.Empty);
            return new Uri(new Uri(baseUrl), imageUrl).AbsoluteUri;
        }
    }
}