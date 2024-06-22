using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.Entity
{
    public class TodoList
    {
        public int Id { get; set; }

        [StringLength(100)]
        public string Description { get; set; }

        public bool Status { get; set; }

        [DataType(DataType.Date)]
        [Column(TypeName = "Date")]
        public DateTime AddDate { get; set; }
    }
}
