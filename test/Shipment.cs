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
    
    public partial class Shipment
    {
        public Shipment()
        {
            this.Bookings = new HashSet<Booking>();
        }
    
        public int ID { get; set; }
        public string Commodity { get; set; }
        public Nullable<decimal> Weight { get; set; }
        public Nullable<decimal> TotalWeight { get; set; }
        public Nullable<decimal> RatePerKG { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<System.DateTime> ExpectedDeliveryDate { get; set; }
        public Nullable<int> ServiceTax { get; set; }
        public string Freight { get; set; }
        public Nullable<int> BookingID { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
    
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}