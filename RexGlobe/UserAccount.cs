//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RexLubs
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserAccount
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string PasswordHash { get; set; }
        public string Salt { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<int> RoleId { get; set; }
        public string StateID { get; set; }
        public Nullable<int> CountryID { get; set; }
        public bool IsActive { get; set; }
        public string REXID { get; set; }
        public string Email { get; set; }
        public string CompanyName { get; set; }
        public Nullable<bool> ChangePassword { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreateDate { get; set; }
    
        public virtual Role Role { get; set; }
        public virtual State State { get; set; }
    }
}
