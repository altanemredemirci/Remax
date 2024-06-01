using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.Entity
{
    public class Image
    {
        public int Id { get; set; }

        public string ImageUrl { get; set; }

        public int ProductDetailId { get; set; }
        public ProductDetail ProductDetail { get; set; }
    }
}
