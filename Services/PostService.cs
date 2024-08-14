using HtmlAgilityPack;
using UBBnewsApp.Models;
namespace UBBnewsApp.Services;
public class PostService
{
    private readonly HttpClient _httpClient;

    public PostService()
    {
        _httpClient = new HttpClient();
    }


    public async Task<List<Post>> GetPostsAsync(string baseUrl)
    {
        var allPosts = new List<Post>();
        int numberOfPages = await GetNumberOfPages(baseUrl);

        for (int i = 1; i <= numberOfPages; i++)
        {
            var url = i == 1 ? $"{baseUrl}/aktualnosci/" : $"{baseUrl}/aktualnosci/page{i}.html";
            var response = await _httpClient.GetStringAsync(url);
            var posts = CreatePosts.ParseHtml(response);
            allPosts.AddRange(posts);
        }

        return allPosts;
    }

    private async Task<int> GetNumberOfPages(string baseUrl)
    {
        var url = $"{baseUrl}/aktualnosci/";
        var response = await _httpClient.GetStringAsync(url);
        var doc = new HtmlDocument();
        doc.LoadHtml(response);
        var paginationNodes = doc.DocumentNode.SelectNodes("//li[contains(@class, 'page-item') and not(contains(@class, 'next'))]/a");
        return CreatePagination.CurrentPage(paginationNodes);
    }

}
