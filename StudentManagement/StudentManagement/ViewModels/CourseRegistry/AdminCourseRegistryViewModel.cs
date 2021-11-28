﻿using ExcelDataReader;
using StudentManagement.Commands;
using StudentManagement.Models;
using StudentManagement.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Input;
using static StudentManagement.ViewModels.StudentCourseRegistryViewModel;

namespace StudentManagement.ViewModels
{
    public class AdminCourseRegistryViewModel : BaseViewModel
    {
        #region classes
        public class CourseItems : Models.SubjectClass
        {
            private bool _isSelected;
            public bool IsSelected
            {
                get => _isSelected;
                set { _isSelected = value; OnPropertyChanged(); }
            }
            public CourseItems(Models.SubjectClass a, bool isSelected)
            {
                this.Id = a.Id;
                this.Teachers = a.Teachers;
                this.Semester = a.Semester;
                this.Subject = a.Subject;
                this.StartDate = a.StartDate;
                this.EndDate = a.EndDate;
                this.Period = a.Period;
                this.WeekDay = a.WeekDay;
                this.IsSelected = false;
            }
        }
        #endregion
        #region properties
        private bool _isAllItemsSelected = false;
        public bool IsAllItemsSelected
        {
            get => _isAllItemsSelected;
            set
            {
                _isAllItemsSelected = value;
                OnPropertyChanged();
                CourseRegistryItemsDisplay.Select(c => { c.IsSelected = value; return c; }).ToList();
            }
        }
        private ObservableCollection<Models.SubjectClass> _subjectClasses;
        public ObservableCollection<Models.SubjectClass> SubjectClasses { get => _subjectClasses; set => _subjectClasses = value; }
        /*private ObservableCollection<ObservableCollection<CourseItems>> _courseRegistryItemsAll;
        public ObservableCollection<ObservableCollection<CourseItems>> CourseRegistryItemsAll { get => _courseRegistryItemsAll; set => _courseRegistryItemsAll = value; }
        private ObservableCollection<CourseItems> _courseRegistryItems;
        public ObservableCollection<CourseItems> CourseRegistryItems { get => _courseRegistryItems; set => _courseRegistryItems = value; }
        private ObservableCollection<CourseItems> _courseRegistryItemsDisplay;
        public ObservableCollection<CourseItems> CourseRegistryItemsDisplay { get => _courseRegistryItemsDisplay; set { _courseRegistryItemsDisplay = value; OnPropertyChanged(); } }*/
        private ObservableCollection<ObservableCollection<CourseRegistryItem>> _courseRegistryItemsAll;
        public ObservableCollection<ObservableCollection<CourseRegistryItem>> CourseRegistryItemsAll { get => _courseRegistryItemsAll; set => _courseRegistryItemsAll = value; }
        private static ObservableCollection<CourseRegistryItem> _courseRegistryItems;
        public static ObservableCollection<CourseRegistryItem> CourseRegistryItems { get => _courseRegistryItems; set => _courseRegistryItems = value; }
        private  ObservableCollection<CourseRegistryItem> _courseRegistryItemsDisplay;
        public  ObservableCollection<CourseRegistryItem> CourseRegistryItemsDisplay { get => _courseRegistryItemsDisplay; set { _courseRegistryItemsDisplay = value; OnPropertyChanged(); } }
        //
        public ObservableCollection<Models.Semester> Semesters { get => _semesters; set { _semesters = value; OnPropertyChanged(); } }
        private ObservableCollection<Models.Semester> _semesters;

        public Models.Semester SelectedSemester { get => _selectedSemester; 
            set 
            { 
                _selectedSemester = value; 
                OnPropertyChanged(); 
                AdminCourseRegistryRightSideBarViewModel.Instance.CanEdit = !(_selectedSemester.CourseRegisterStatus > 0); 
            } }
        private Models.Semester _selectedSemester;
        public int SelectedSemesterIndex { get => _selectedSemesterIndex; 
            set 
            { 
                _selectedSemesterIndex = value; 
                OnPropertyChanged(); 
                SelectData();

                AdminCourseRegistryRightSideBarViewModel.Instance.RightSideBarItemViewModel = new EmptyStateRightSideBarViewModel();
            } }
        private int _selectedSemesterIndex;

        public VietnameseStringNormalizer vietnameseStringNormalizer = VietnameseStringNormalizer.Instance;
        public bool IsFirstSearchButtonEnabled
        {
            get { return _isFirstSearchButtonEnabled; }
            set
            {
                _isFirstSearchButtonEnabled = value;
                OnPropertyChanged();
            }
        }

        private bool _isFirstSearchButtonEnabled = false;

        private string _searchQuery = "";
        public string SearchQuery
        {
            get => _searchQuery;
            set
            {
                _searchQuery = value;
                OnPropertyChanged();
                SearchCourseRegistryItemsFunction();
            }
        }
        private object _dialogItemViewModel;
        public object DialogItemViewModel
        {
            get { return _dialogItemViewModel; }
            set
            {
                _dialogItemViewModel = value;
                OnPropertyChanged();
            }
        }
        public object _creatNewCourseViewModel;

        #region CreateNewSemester
        private ObservableCollection<string> _batches;
        public ObservableCollection<string> Batches { get => _batches; set => _batches = value; }

        private string _selectedBatch;
        public string SelectedBatch { get => _selectedBatch; set { _selectedBatch = value; OnPropertyChanged(); } }

        private string _newSemesterName;
        public string NewSemesterName { get => _newSemesterName; set { _newSemesterName = value; OnPropertyChanged(); } }

        private bool _isDoneVisible;
        private bool _isErrorVisible;
        public bool IsDoneVisible { get => _isDoneVisible; set { _isDoneVisible = value; OnPropertyChanged(); } }
        public bool IsErrorVisible { get => _isErrorVisible; set { _isErrorVisible = value; OnPropertyChanged(); } }
        #endregion
        #endregion
        #region commands
        public ICommand SwitchSearchButton { get => _switchSearchButton; set => _switchSearchButton = value; }

        private ICommand _switchSearchButton;
        public ICommand SearchCourseRegistryItems { get => _searchCourseRegistryItems; set => _searchCourseRegistryItems = value; }

        private ICommand _searchCourseRegistryItems;
        public ICommand DeleteSelectedItemsCommand { get; set; }
        public ICommand CreateNewCourseCommand { get; set; }

        public ICommand OpenSemesterCommand { get; set; }
        public ICommand PauseSemesterCommand { get; set; }
        public ICommand StopSemesterCommand { get; set; }
        public ICommand CreateNewSemesterCommand { get; set; }
        public ICommand AddFromExcelCommand { get; set; }
        public ICommand SaveChangesCommand { get; set; }
        public ICommand ConvertChangesCommand { get; set; }
        public ICommand ExportExcelCommand { get; set; }


        #endregion

        public AdminCourseRegistryViewModel()
        {
            /*Thiếu lấy dữ liệu từ model cho semester và SubjectClasses*/
            Semesters = new ObservableCollection<Models.Semester>()
            {
                new Semester(){Batch = "2019-2020", DisplayName = "Học kỳ 2", CourseRegisterStatus = 2},
                new Semester(){Batch = "2020-2021", DisplayName = "Học kỳ 1", CourseRegisterStatus = 1},
                new Semester(){Batch = "2020-2021", DisplayName = "Học kỳ 2", CourseRegisterStatus = 0}
            };
            /*CourseRegistryItemsAll = new ObservableCollection<ObservableCollection<CourseItems>>();*/
            CourseRegistryItemsAll = new ObservableCollection<ObservableCollection<CourseRegistryItem>>();
            for (int i = 0; i < Semesters.Count; i++)
            {
                /*Semester semester = Semesters[i];*/
                /*var subjectClasses1Semester = SubjectClasses.Where(x => x.Semester == semester).ToList();*/
                /*var courseItems1Semester = new ObservableCollection<CourseItems>();*/
                /*foreach (Models.SubjectClass a in subjectClasses1Semester)
                {
                    courseItems1Semester.Add(new CourseItems(a, false));
                }*/
                /*var courseItems1Semester = new ObservableCollection<CourseItems>();*/
                var courseItems1Semester = new ObservableCollection<CourseRegistryItem>()
                {
                    new CourseRegistryItem(false, "IT008.L21.KHTN " + i, "Lập trình trực quan " + i, 4, 50, 30),
                    new CourseRegistryItem(false, "IT009.L21.KHCL " + i, "Không biết " + i, 2, 30, 30),
                    new CourseRegistryItem(false, "ENG02.L21 " + i, "Anh văn 2 " + i, 4, 30, 28)
                };
                CourseRegistryItemsAll.Add(courseItems1Semester);
            }
            SelectedSemester = Semesters.Last();
            InitCreateNewSemesterProperty();
            InitCommand();
            
        }

        public void InitCreateNewSemesterProperty()
        {
            var temp = Semesters.Select(x => x.Batch).Distinct().ToList();
            Batches = new ObservableCollection<string>(temp);
            NewSemesterName = "Học kỳ 1";

            CreateNewBatch();
            SelectedBatch = Batches.Last();

            IsDoneVisible = false;
            IsErrorVisible = false;
        }
        public void InitCommand()
        {
            SwitchSearchButton = new RelayCommand<object>((p) => { return true; }, (p) => SwitchSearchButtonFunction(p));
            SearchCourseRegistryItems = new RelayCommand<object>((p) => { return true; }, (p) => SearchCourseRegistryItemsFunction());
            DeleteSelectedItemsCommand = new RelayCommand<object>(
                (p) =>
                {
                    return CourseRegistryItemsDisplay.Where(x => x.IsSelected == true).Count() > 0 && !(SelectedSemester.CourseRegisterStatus > 0);
                },
                (p) =>
                {
                    DeleteSelectedItems();
                });
            CreateNewCourseCommand = new RelayCommand<object>((p) => {
                return !(SelectedSemester.CourseRegisterStatus > 0);
            }, (p) => CreateNewCourse());
            OpenSemesterCommand = new RelayCommand<object>((p) => true, (p) => SelectedSemester.CourseRegisterStatus = 1);
            PauseSemesterCommand = new RelayCommand<object>((p) => true, (p) => SelectedSemester.CourseRegisterStatus = 0);
            StopSemesterCommand = new RelayCommand<object>((p) => true, (p) => SelectedSemester.CourseRegisterStatus = 2);

            CreateNewSemesterCommand = new RelayCommand<object>((p) =>
            {
                if (String.IsNullOrEmpty(SelectedBatch) || String.IsNullOrEmpty(NewSemesterName))
                    return false;
                if (Semesters.Where(x => x.Batch.Replace(" ", "") == SelectedBatch.Replace(" ", "")).
                                Where(y => y.DisplayName.Replace(" ", "") == NewSemesterName.Replace(" ", "")).Count() > 0)
                    return false;
                return true;
            }, (p) => CreateNewSemester());

            AddFromExcelCommand = new RelayCommand<object>((p) =>
            {
                return !(SelectedSemester.CourseRegisterStatus > 0);
            }, (p) => AddFromExcel());
            SaveChangesCommand = new RelayCommand<object>((p) =>
            {
                return !(SelectedSemester.CourseRegisterStatus > 0);
            }, (p) => SaveChanges());
            ConvertChangesCommand = new RelayCommand<object>((p) =>
            {
                return !(SelectedSemester.CourseRegisterStatus > 0);
            }, (p) => ConvertChanges());
        }
        public void SelectData()
        {
            CourseRegistryItems = CourseRegistryItemsAll[SelectedSemesterIndex];
            CourseRegistryItemsDisplay = CourseRegistryItems;
        }
        public void SwitchSearchButtonFunction(object p)
        {
            IsFirstSearchButtonEnabled = !IsFirstSearchButtonEnabled;
        }

        public void SearchCourseRegistryItemsFunction()
        {
            if (SearchQuery == "" || SearchQuery == null)
            {
                CourseRegistryItemsDisplay = CourseRegistryItems;
                return;
            }
            if (!IsFirstSearchButtonEnabled)
            {
                var tmp = CourseRegistryItems.Where(x => x.IdSubjectClass.ToLower().Contains(SearchQuery.ToLower())).ToList();
                CourseRegistryItemsDisplay = new ObservableCollection<CourseRegistryItem>(tmp);
            }
            else
            {
                var tmp = CourseRegistryItems.Where(x => vietnameseStringNormalizer.Normalize(x.SubjectName).ToLower().Contains(vietnameseStringNormalizer.Normalize(SearchQuery.ToLower()))).ToList();
                CourseRegistryItemsDisplay = new ObservableCollection<CourseRegistryItem>(tmp);
            }
        }
        public void DeleteSelectedItems()
        {
            var SelectedItems = CourseRegistryItems.Where(x => x.IsSelected == true).ToList();
            foreach (CourseRegistryItem item in SelectedItems)
            {
                item.IsSelected = false;
                CourseRegistryItems.Remove(item);
            }
            SearchCourseRegistryItemsFunction();
        }
        public void CreateNewCourse()
        {
            CourseRegistryItem newCard = new CourseRegistryItem(false, "", "", 0, 0, 0);
            _creatNewCourseViewModel = new CreateNewCourseViewModel(newCard, SelectedSemester, CourseRegistryItems);
            this.DialogItemViewModel = this._creatNewCourseViewModel;
        }

        public void CreateNewSemester()
        {
            /*Thiếu cập nhật database*/
            try
            {
                Semesters.Add(new Semester() { Batch = SelectedBatch, CourseRegisterStatus = 0, DisplayName = NewSemesterName });
                IsDoneVisible = true;
                var courseItemsNewSemester = new ObservableCollection<CourseRegistryItem>() { };
                CourseRegistryItemsAll.Add(courseItemsNewSemester);
                SelectedSemester = Semesters.Last();
                CreateNewBatch();
            }
            catch
            {
                IsErrorVisible = true;
            }
        }

        public void CreateNewBatch()
        {
            string defaultNewBatch = "";
            foreach (string year in Batches.Last().Split('-'))
            {
                defaultNewBatch += Convert.ToString(Convert.ToInt32(year) + 1) + '-';
            }
            defaultNewBatch = defaultNewBatch.Remove(defaultNewBatch.Length - 1);
            Batches.Add(defaultNewBatch);
        }
        DataTableCollection dataSheets;
        public void AddFromExcel()
        {
            
            using (OpenFileDialog op = new OpenFileDialog() { Filter = "Excel|*.xls;*.xlsx;" })
            {
                if (op.ShowDialog() == DialogResult.OK)
                {
                    using (var stream = File.Open(op.FileName, FileMode.Open, FileAccess.Read))
                    {
                        using (IExcelDataReader reader = ExcelReaderFactory.CreateReader(stream))
                        {
                            DataSet result = reader.AsDataSet(new ExcelDataSetConfiguration()
                            {
                                ConfigureDataTable = (_) => new ExcelDataTableConfiguration() { UseHeaderRow = true }
                            });
                            dataSheets = result.Tables;
                        }
                    }
                }
            }
            /*DataTable data = dataSheets[dataSheets.Cast<DataTable>().Select(t=>t.TableName).Last().ToString()];*/
            DataTable data = dataSheets[0];

            ObservableCollection<CourseRegistryItem> excelList = new ObservableCollection<CourseRegistryItem>();
            foreach(DataRow course in data.Rows)
            {
                var temp = new CourseRegistryItem(false, 
                                                    Convert.ToString(course[0]), 
                                                    Convert.ToString(course[1]), 
                                                    Convert.ToInt32(course[2]), 
                                                    Convert.ToInt32(course[3]), 
                                                    0);
                excelList.Add(temp);
            }
            CourseRegistryItemsAll[SelectedSemesterIndex] = excelList;
            SelectData();
            /*CourseRegistryItems = excelList;*/
        }

        public void SaveChanges()
        {

        }

        public void ConvertChanges()
        {

        }
    }
}