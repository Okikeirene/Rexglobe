//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RexGlobe.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Role
    {
        public Role()
        {
            this.UserRoles = new HashSet<UserRole>();
            this.UserAccounts = new HashSet<UserAccount>();
        }
    
        public int RoleID { get; set; }
        public string RoleName { get; set; }
        public Nullable<int> ParentID { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreateDate { get; set; }
    
        public virtual ICollection<UserRole> UserRoles { get; set; }
        public virtual ICollection<UserAccount> UserAccounts { get; set; }
    }
}
