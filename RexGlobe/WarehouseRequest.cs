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
    
    public partial class WarehouseRequest
    {
        public int ID { get; set; }
        public Nullable<int> RequestApprovalID { get; set; }
        public Nullable<int> RequestID { get; set; }
        public string ManagerName { get; set; }
        public string ManagerPhoneNumber { get; set; }
        public string Message { get; set; }
        public string ApprovalStatus { get; set; }
        public string SalesRepresentative { get; set; }
        public string PickUpPersonName { get; set; }
        public string PickUpPersonPhoneNumber { get; set; }
        public string ProductName { get; set; }
        public string ProductType { get; set; }
        public Nullable<decimal> UnitPrice { get; set; }
        public Nullable<int> RequestedProductQuantity { get; set; }
        public Nullable<int> AvailableProductQuantity { get; set; }
        public Nullable<decimal> Total_Amount { get; set; }
        public string PaymentStatus { get; set; }
        public string TrasactionType { get; set; }
        public string DeliveryStatus { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    }
}
