using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.WhoWeAreDTO
{
    public class ResultWhoWeAreDTO
    {
        public int Id { get; set; }
        public string ImageUrl { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public List<Employment> Employments { get; set; }
    }
}
