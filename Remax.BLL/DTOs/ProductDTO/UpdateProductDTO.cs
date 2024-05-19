using Remax.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.ProductDTO
{
    public class UpdateProductDTO
    {
        public int Id { get; set; }

        [StringLength(100)]
        public string Title { get; set; }

        public decimal Price { get; set; }

        [StringLength(200)]
        public string CoverImage { get; set; }

        [StringLength(200)]
        public string Address { get; set; }

        [StringLength(10)]
        public string Type { get; set; }

        [StringLength(50)]
        public string District { get; set; }

        public bool IsFavorite { get; set; }

        public bool Status { get; set; }

        public int CategoryId { get; set; }
        public Category Category { get; set; }

        public int CityId { get; set; }
        public City City { get; set; }

        public int AgencyId { get; set; }
        public Agency Agency { get; set; }
    }
}
