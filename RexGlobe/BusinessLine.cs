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
    
    public partial class BusinessLine
    {
        public string BusinessLineId { get; set; }
        public string BusinessLineName { get; set; }
        public string GroupId { get; set; }
    
        public virtual BusinessLineGroup BusinessLineGroup { get; set; }
    }
}
