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
    
    public partial class Employee
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public Nullable<decimal> Salary { get; set; }
        public string EmployeeNumber { get; set; }
        public string EmployeeType { get; set; }
        public string Phone { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string Manager { get; set; }
        public Nullable<System.DateTime> Joining_Date { get; set; }
        public string NextofKinName { get; set; }
        public string NextofKinPhone { get; set; }
        public string Status { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    
        public virtual Employee Employees1 { get; set; }
        public virtual Employee Employee1 { get; set; }
        public virtual Employee Employees11 { get; set; }
        public virtual Employee Employee2 { get; set; }
    }
}