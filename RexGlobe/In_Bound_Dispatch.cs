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
    
    public partial class In_Bound_Dispatch
    {
        public int In_Bound_ID { get; set; }
        public Nullable<int> QuantityID { get; set; }
        public Nullable<int> DispatchID { get; set; }
        public Nullable<int> VehicleID { get; set; }
        public string Region { get; set; }
        public string Route_Cities { get; set; }
        public Nullable<System.TimeSpan> Dispatch_Date_Time { get; set; }
        public Nullable<int> BookingID { get; set; }
        public string WareHouseAgent { get; set; }
        public string BankStaffatDepo { get; set; }
        public string RexGlobeStaff { get; set; }
        public string NameofDepo { get; set; }
        public string CompanyName { get; set; }
        public string CompanyRep { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string CreatedBy { get; set; }
    
        public virtual Booking Booking { get; set; }
        public virtual DispatchType DispatchType { get; set; }
        public virtual Quantity Quantity { get; set; }
        public virtual Vechicle Vechicle { get; set; }
    }
}
