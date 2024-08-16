using UBBnewsApp.ViewModels;

namespace UBBnewsApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            BindingContext = new MainPageViewModel();
        }

    }

}