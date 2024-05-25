using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.SliderDTO
{
    public class ResultSliderDTO
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ImageUrl1 { get; set; }
        public string? ImageUrl2 { get; set; }
        public string Page { get; set; }
    }
}
