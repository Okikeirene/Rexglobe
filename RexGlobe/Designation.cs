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
    
    public partial class Designation
    {
        public int ID { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public string DesignationName { get; set; }
        public string Region { get; set; }
        public string Country { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    }
}