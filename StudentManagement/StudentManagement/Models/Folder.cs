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
    
    public partial class Folder : BaseViewModel
    {
        public Folder()
        {
            this.Documents = new HashSet<Document>();
        }
    
        private System.Guid _id { get; set; }
        public System.Guid Id { get => _id; set { _id = value; OnPropertyChanged(); } }
        private string _displayName { get; set; }
        public string DisplayName { get => _displayName; set { _displayName = value; OnPropertyChanged(); } }
        private System.Guid _idSubjectClass { get; set; }
        public System.Guid IdSubjectClass { get => _idSubjectClass; set { _idSubjectClass = value; OnPropertyChanged(); } }
    
        public virtual ICollection<Document> Documents { get; set; }
        public virtual SubjectClass SubjectClass { get; set; }
    }
}