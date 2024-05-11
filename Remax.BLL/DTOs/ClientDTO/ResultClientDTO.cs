using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.ClientDTO
{
    public class ResultClientDTO
    {
        public int Id { get; set; }
        [StringLength(50)]
        public string Name { get; set; }
        [StringLength(50)]
        public string Title { get; set; }
        [StringLength(200)]
        public string ImageUrl { get; set; }
        [StringLength(300)]
        public string Comment { get; set; }
    }
}
