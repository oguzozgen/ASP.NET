//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication8.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class bolum
    {
        public bolum()
        {
            this.derslers = new HashSet<dersler>();
        }
    
        public int Bolum_id { get; set; }
        public string bolum_name { get; set; }
        public Nullable<int> fak_id { get; set; }
    
        public virtual fakulte fakulte { get; set; }
        public virtual ICollection<dersler> derslers { get; set; }
    }
}