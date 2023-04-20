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
    
    public partial class PaymentsLubricant
    {
        public int ID { get; set; }
        public string PaymentReference { get; set; }
        public int ProductRequestID { get; set; }
        public string ProductName { get; set; }
        public string ProductType { get; set; }
        public Nullable<decimal> UnitPrice { get; set; }
        public Nullable<int> ProductQuantity { get; set; }
        public Nullable<decimal> Total_Amount { get; set; }
        public string PaymentTerms { get; set; }
        public string TrasactionType { get; set; }
        public System.DateTime PaymentDate { get; set; }
        public string PaymentYear { get; set; }
        public string Payment_type { get; set; }
        public string Payment_currency { get; set; }
        public string Payment_channel { get; set; }
        public string Revenue_type { get; set; }
        public string Status { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    
        public virtual ProductRequest ProductRequest { get; set; }
    }
}
