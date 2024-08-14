using System.Collections.ObjectModel;
using System.Windows.Input;
using UBBnewsApp.Helpers;
using UBBnewsApp.Models;
using UBBnewsApp.Services;

namespace UBBnewsApp.ViewModels
{
    public class MainPageViewModel : BaseViewModel
    {
        private readonly PostService _postService;
        private ObservableCollection<Post> _allPosts;
        private ObservableCollection<Post> _filteredPosts;

        private const int PostsPerPage = 10;
        private int _currentPage;

        public ICommand SearchCommand
        {
            get;
        }
        public ICommand NextPageCommand
        {
            get;
        }
        public ICommand PreviousPageCommand
        {
            get;
        }
        public ICommand FilterPostsCommand
        {
            get;
        }
        public ICommand OpenUrlCommand
        {
            get;
        }


        private bool _isPreviousPageVisible;
        public bool IsPreviousPageVisible
        {
            get => _isPreviousPageVisible;
            set
            {
                if (_isPreviousPageVisible != value)
                {
                    _isPreviousPageVisible = value;
                    OnPropertyChanged();
                }
            }
        }

        private bool _isNextPageVisible;
        public bool IsNextPageVisible
        {
            get => _isNextPageVisible;
            set
            {
                if (_isNextPageVisible != value)
                {
                    _isNextPageVisible = value;
                    OnPropertyChanged();
                }
            }
        }

        private bool _isLoading;
        public bool IsLoading
        {
            get => _isLoading;
            set
            {
                if (_isLoading != value)
                {
                    _isLoading = value;
                    OnPropertyChanged();
                }
            }
        }

        public ObservableCollection<Post> Posts
        {
            get;
        }
        public ObservableCollection<string> Categories
        {
            get;
        }

        public MainPageViewModel()
        {
            _postService = new PostService();
            Posts = [];
            Categories = [];
            OpenUrlCommand = new Command<string>(async (url) => await Launcher.OpenAsync(url));
            FilterPostsCommand = new Command<string>(async (category) => await FilterPostsAsync(category));
            SearchCommand = new Command<string>(async (search) => await SearchPostsAsync(search));
            NextPageCommand = new Command(NextPage);
            PreviousPageCommand = new Command(PreviousPage);

            _allPosts = [];
            _currentPage = 0;
            _ = LoadPostsAsync();
        }

        private void UpdatePosts(IEnumerable<Post> postsToShow)
        {
            Posts.Clear();
            var pagedPosts = postsToShow.Skip(_currentPage * PostsPerPage).Take(PostsPerPage);
            foreach (var post in pagedPosts)
            {
                Posts.Add(post);
            }

            IsPreviousPageVisible = _currentPage > 0;
            IsNextPageVisible = (_currentPage + 1) * PostsPerPage < postsToShow.Count();
        }

        private void NextPage()
        {
            if ((_currentPage + 1) * PostsPerPage < _filteredPosts.Count)
            {
                _currentPage++;
                UpdatePosts(_filteredPosts);
            }
        }

        private void PreviousPage()
        {
            if (_currentPage > 0)
            {
                _currentPage--;
                UpdatePosts(_filteredPosts);
            }
        }

        private async Task LoadPostsAsync()
        {
            IsLoading = true;

            try
            {
                var posts = await _postService.GetPostsAsync("https://ubb.edu.pl/");
                _allPosts = new ObservableCollection<Post>(posts);

                var uniqueCategories = _allPosts.Select(p => p.Category.Trim()).Distinct(StringComparer.OrdinalIgnoreCase).ToList();
                foreach (var category in uniqueCategories)
                {
                    Categories.Add(category);
                }

                _currentPage = 0;
                _filteredPosts = _allPosts;
                UpdatePosts(_allPosts);
            }
            finally
            {
                IsLoading = false;
            }
        }

        private async Task SearchPostsAsync(string search)
        {
            _currentPage = 0;
            if (string.IsNullOrWhiteSpace(search))
            {
                _filteredPosts = _allPosts;
            }
            else
            {
                _filteredPosts = new ObservableCollection<Post>(PostFilteringHelper.GetPostsBySearch(_allPosts, search));
            }
            UpdatePosts(_filteredPosts);
        }

        private async Task FilterPostsAsync(string category)
        {
            _currentPage = 0;
            if (category == "Clear")
            {
                _filteredPosts = _allPosts;
            }
            else
            {
                _filteredPosts = new ObservableCollection<Post>(PostFilteringHelper.GetPostsByCategory(_allPosts, category));
            }
            UpdatePosts(_filteredPosts);
        }

    }
}