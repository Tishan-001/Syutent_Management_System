using Student_Management_System.ViewModels;
using System.Windows;
using System.Windows.Input;

namespace Student_Management_System.Views
{
    /// <summary>
    /// Interaction logic for StudentWindow.xaml
    /// </summary>
    public partial class StudentWindow : Window
    {
        public StudentWindow()
        {
            InitializeComponent();
            var vm = new StudentWindowViewModel();
            DataContext = vm;
            vm.CloseAction = () => Close();
        }

        private void Border_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if(e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }
    }
}
