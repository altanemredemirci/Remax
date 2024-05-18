using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.CategoryDTO
{
    public class UpdateCategoryDTO
    {
        public int Id { get; set; }
        [StringLength(40)]
        public string Name { get; set; }
        public string Icon { get; set; }
        public bool Status { get; set; }
    }
}
