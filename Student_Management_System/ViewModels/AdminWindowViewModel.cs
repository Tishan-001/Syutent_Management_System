using CommunityToolkit.Mvvm.ComponentModel;
using Student_Management_System.DataBase;
using System;
using Student_Management_System.Models;
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.Input;
using System.Linq;

namespace Student_Management_System.ViewModels
{
    public partial class AdminWindowViewModel:ObservableObject
    {
        [ObservableProperty]
        public string userName;

        [ObservableProperty]
        public string password;

        public AdminWindowViewModel() 
        {
            userData = new DataBaseContext();
            LoadUser();
            LoadModule();
        }

        DataBaseContext userData;

        [ObservableProperty]
        public ObservableCollection<User> listofuser;

        [ObservableProperty]
        public ObservableCollection<Module> listofmodule;

        [ObservableProperty]
        public User selectedUser;

        [ObservableProperty]
        public string code;

        [ObservableProperty]
        public string name;

        [ObservableProperty]
        public int credit;

        public Action CloseAction { get; internal set; }

        private void LoadUser()
        {
            Listofuser = new ObservableCollection<User>(userData.Users);
        }

        private void LoadModule()
        {
            Listofmodule = new ObservableCollection<Module>(userData.Modules);
        }

        [RelayCommand]
        public void Delete(object obj)
        {
            var us = obj as User;
            userData.Users.Remove(us);
            userData.SaveChanges();
            Listofuser.Remove(us);
        }

        [RelayCommand]
        public void Update(object obj)
        {
            SelectedUser = obj as User;
        }

        [RelayCommand]
        public void UpdateUser()
        {
            userData.SaveChanges();
            SelectedUser = new User();
        }

        [RelayCommand]
        public void AddUser()
        {
            var user = new User();
            user.Name = UserName;
            user.Password = Password;
            int id = 1 + userData.Users.Count();
            user.Id = id;
            userData.Users.Add(user);
            userData.SaveChanges();

            UserName = null;
            Password = null;

            Listofuser.Add(user);
        }

        [RelayCommand]
        public void AddModule() 
        { 
            var module = new Module();
            module.Code = Code;
            module.Name = Name;
            module.Credit = Credit;
            userData.Modules.Add(module);
            userData.SaveChanges();

            Listofmodule.Add(module);

            Code = null;
            Name = null;
            Credit = 0;
        }

        [RelayCommand]
        public void Close()
        {
            CloseAction();
        }
    }
}
