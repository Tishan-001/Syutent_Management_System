using Student_Management_System.DataBase;
using Student_Management_System.Models;
using Student_Management_System.ViewModels;
using System.Collections.ObjectModel;
using FluentAssertions;
using Moq;
using System.Windows;

namespace Student_Management_System_Test
{
    public class UnitTest1
    {

        [Fact]
        public void CalGPA_WhenSelectedStudent2IsNotNull_ShouldCalculateGPA()
        {
            // Arrange
            var viewModel = new AddGradeViewModel();
            viewModel.SelectedStudent2 = new Student(); // Set up the necessary dependencies for SelectedStudent2
            viewModel.SelectedStudent2.RegNo = "EG/000/000";
            viewModel.SelectedStudent2.FirstName = "Test";
            viewModel.SelectedStudent2.LastName = "Test";
            viewModel.SelectedStudent2.Address = "Test";
            viewModel.SelectedStudent2.TelephoneNo = 123;
            viewModel.ListRModule = new ObservableCollection<Module>(); // Set up the necessary modules for ListRModule
            viewModel.GradeList = new ObservableCollection<StudentModule>(); // Set up the necessary grade list for GradeList

            // Add modules and grades to the lists
            var module1 = new Module { Code = "MATH101", Credit = 3 };
            var module2 = new Module { Code = "ENGL101", Credit = 4 };
            var grade1 = new StudentModule { ModuleCode = "MATH101", Grade = "A" };
            var grade2 = new StudentModule { ModuleCode = "ENGL101", Grade = "B+" };
            viewModel.ListRModule.Add(module1);
            viewModel.ListRModule.Add(module2);
            viewModel.GradeList.Add(grade1);
            viewModel.GradeList.Add(grade2);
            bool v = viewModel.SelectedStudent2 != null;

            // Act
            viewModel.CalGPA();

            // Assert
            viewModel.SelectedStudent2.Gpa.Should().BeApproximately(3.5, 0.001);

        }
    }
}