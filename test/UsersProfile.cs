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
    
    public partial class UsersProfile
    {
        public int ProfileId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public int UserId { get; set; }
        public string FileName { get; set; }
        public byte[] FileContent { get; set; }
        public string REXID { get; set; }
        public string REXCode { get; set; }
        public Nullable<System.Guid> SecurityID { get; set; }
    
        public virtual UserAccount UserAccount { get; set; }
    }
}
