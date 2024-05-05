using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.Entity
{
    public class Category
    {
        public int Id { get; set; }
        [StringLength(40)]
        public string Name { get; set; }
        public string Icon { get; set; }
        public bool Status { get; set; }

        public List<Product> Products { get; set; }
    }
}
