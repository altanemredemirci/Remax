using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.Entity
{
    public class Slider
    {
        public int Id { get; set; }
        public string Title { get; set; }     
        public string Description { get; set; }
        public string ImageUrl1 { get; set; }
        public string? ImageUrl2 { get; set; }
        public string Page { get; set; }
    }
}
