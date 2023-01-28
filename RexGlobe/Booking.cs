//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RexGlobe
{
    using System;
    using System.Collections.Generic;
    
    public partial class Booking
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Booking()
        {
            this.Payments = new HashSet<Payment>();
            this.In_Bound_Dispatch = new HashSet<In_Bound_Dispatch>();
            this.Out_Bound_Dispatch = new HashSet<Out_Bound_Dispatch>();
        }
    
        public int ID { get; set; }
        public Nullable<int> ShipmentID { get; set; }
        public string SenderName { get; set; }
        public string SenderEmail { get; set; }
        public string OriginServiceLocation { get; set; }
        public string ReceiverName { get; set; }
        public string ReceiverEmail { get; set; }
        public string ReceiverDestination { get; set; }
        public string ReceiverPinCode { get; set; }
        public string ReceiverRegion { get; set; }
        public string ReceiverCity { get; set; }
        public string ServiceLocation { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
    
        public virtual Booking Booking1 { get; set; }
        public virtual Booking Booking2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Payment> Payments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<In_Bound_Dispatch> In_Bound_Dispatch { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Out_Bound_Dispatch> Out_Bound_Dispatch { get; set; }
        public virtual Shipment Shipment { get; set; }
    }
}