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
    
    public partial class MenuCategory
    {
        public MenuCategory()
        {
            this.Resources = new HashSet<Resource>();
        }
    
        public byte CategoryId { get; set; }
        public string CategoryName { get; set; }
    
        public virtual ICollection<Resource> Resources { get; set; }
    }
}
