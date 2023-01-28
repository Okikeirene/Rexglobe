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
    
    public partial class Quantity
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Quantity()
        {
            this.In_Bound_Dispatch = new HashSet<In_Bound_Dispatch>();
            this.Out_Bound_Dispatch = new HashSet<Out_Bound_Dispatch>();
        }
    
        public int QuantityID { get; set; }
        public string ProductName { get; set; }
        public Nullable<decimal> Deposit_Credit { get; set; }
        public string VesselName { get; set; }
        public string TruckNumber { get; set; }
        public string DriversName { get; set; }
        public string DriversPhoneNumber { get; set; }
        public Nullable<decimal> WithDrawal_Debit { get; set; }
        public Nullable<decimal> Balance { get; set; }
        public byte[] AttachedWayBill { get; set; }
        public string TankFarm { get; set; }
        public Nullable<int> Quantityperton { get; set; }
        public string ProductPurchasedFrom { get; set; }
        public string LCFormNumber { get; set; }
        public Nullable<decimal> LCValue { get; set; }
        public Nullable<decimal> FormNvalue { get; set; }
        public Nullable<decimal> CommercialInvoiceValue { get; set; }
        public string PointofDischarge { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public string PaymentReference { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public string CreatedBy { get; set; }
    
        public virtual Customer Customer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<In_Bound_Dispatch> In_Bound_Dispatch { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Out_Bound_Dispatch> Out_Bound_Dispatch { get; set; }
    }
}
