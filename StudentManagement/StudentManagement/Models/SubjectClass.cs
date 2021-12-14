//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StudentManagement.Models
{
    using StudentManagement.ViewModels;
    using System;
    using System.Collections.Generic;
    
    public partial class SubjectClass : BaseViewModel
    {
        public SubjectClass()
        {
            this.AbsentCalendars = new HashSet<AbsentCalendar>();
            this.ComponentScores = new HashSet<ComponentScore>();
            this.CourseRegisters = new HashSet<CourseRegister>();
            this.Documents = new HashSet<Document>();
            this.Examinations = new HashSet<Examination>();
            this.Folders = new HashSet<Folder>();
            this.Notifications = new HashSet<Notification>();
            this.Notifications1 = new HashSet<Notification>();
            this.Teachers = new HashSet<Teacher>();
        }
    
        private System.Guid _id { get; set; }
        public System.Guid Id { get => _id; set { _id = value; OnPropertyChanged(); } }
        private Nullable<System.Guid> _idSubject { get; set; }
        public Nullable<System.Guid> IdSubject { get => _idSubject; set { _idSubject = value; OnPropertyChanged(); } }
        private Nullable<System.DateTime> _startDate { get; set; }
        public Nullable<System.DateTime> StartDate { get => _startDate; set { _startDate = value; OnPropertyChanged(); } }
        private Nullable<System.DateTime> _endDate { get; set; }
        public Nullable<System.DateTime> EndDate { get => _endDate; set { _endDate = value; OnPropertyChanged(); } }
        private Nullable<System.Guid> _idSemester { get; set; }
        public Nullable<System.Guid> IdSemester { get => _idSemester; set { _idSemester = value; OnPropertyChanged(); } }
        private string _period { get; set; }
        public string Period { get => _period; set { _period = value; OnPropertyChanged(); } }
        private Nullable<int> _weekDay { get; set; }
        public Nullable<int> WeekDay { get => _weekDay; set { _weekDay = value; OnPropertyChanged(); } }
        private Nullable<System.Guid> _idThumbnail { get; set; }
        public Nullable<System.Guid> IdThumbnail { get => _idThumbnail; set { _idThumbnail = value; OnPropertyChanged(); } }
        private Nullable<System.Guid> _idTrainingForm { get; set; }
        public Nullable<System.Guid> IdTrainingForm { get => _idTrainingForm; set { _idTrainingForm = value; OnPropertyChanged(); } }
        private string _code { get; set; }
        public string Code { get => _code; set { _code = value; OnPropertyChanged(); } }
        private Nullable<int> _numberOfStudents { get; set; }
        public Nullable<int> NumberOfStudents { get => _numberOfStudents; set { _numberOfStudents = value; OnPropertyChanged(); } }
        private Nullable<int> _maxNumberOfStudents { get; set; }
        public Nullable<int> MaxNumberOfStudents { get => _maxNumberOfStudents; set { _maxNumberOfStudents = value; OnPropertyChanged(); } }
        private Nullable<bool> _isDeleted { get; set; }
        public Nullable<bool> IsDeleted { get => _isDeleted; set { _isDeleted = value; OnPropertyChanged(); } }
    
        public virtual ICollection<AbsentCalendar> AbsentCalendars { get; set; }
        public virtual ICollection<ComponentScore> ComponentScores { get; set; }
        public virtual ICollection<CourseRegister> CourseRegisters { get; set; }
        public virtual DatabaseImageTable DatabaseImageTable { get; set; }
        public virtual ICollection<Document> Documents { get; set; }
        public virtual ICollection<Examination> Examinations { get; set; }
        public virtual ICollection<Folder> Folders { get; set; }
        public virtual ICollection<Notification> Notifications { get; set; }
        public virtual ICollection<Notification> Notifications1 { get; set; }
        public virtual Semester Semester { get; set; }
        public virtual Subject Subject { get; set; }
        public virtual TrainingForm TrainingForm { get; set; }
        public virtual ICollection<Teacher> Teachers { get; set; }
    }
}
