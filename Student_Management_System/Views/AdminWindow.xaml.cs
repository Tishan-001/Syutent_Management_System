﻿using Student_Management_System.ViewModels;
using System.Windows;


namespace Student_Management_System.Views
{
    /// <summary>
    /// Interaction logic for AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
            var vm = new AdminWindowViewModel();
            DataContext = vm;
            vm.CloseAction = () => Close();
        }
    }
}
