using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace ShopBridge.API
{
    public partial class Items
    {
        public int Id { get; set; }
        public int? CategoryId { get; set; }
        public string ItemCode { get; set; }
        public string ItemName { get; set; }
        public decimal? Price { get; set; }
        public DateTime? CreatedOn { get; set; }
        public int? CreatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }
        public int? UpdatedBy { get; set; }
    }
}
