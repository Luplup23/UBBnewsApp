
namespace UBBnewsApp.Models
{
    public class Post
    {
        public int Id { get; set; } 
        public required string Title { get; set; }
        public required string Url { get; set; } 
        public required string Category { get; set; }
        public required string ImageUrl { get; set; }
    }
}