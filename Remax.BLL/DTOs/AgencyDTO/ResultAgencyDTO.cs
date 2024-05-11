using Remax.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.DTOs.AgencyDTO
{
    public class ResultAgencyDTO
    {
        public int Id { get; set; }

        [StringLength(70)]
        public string Name { get; set; }

        [StringLength(70)]
        public string Title { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [StringLength(15)]
        public string Phone { get; set; }

        public string ImageUrl { get; set; }

        [StringLength(200)]
        public string FacebookAddress { get; set; }

        [StringLength(200)]
        public string XAddress { get; set; }

        [StringLength(200)]
        public string InstagramAddress { get; set; }

        public bool Status { get; set; }
    }
}
