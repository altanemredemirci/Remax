using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.Entity
{
    public class Employment
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public bool Status { get; set; }

        public int WhoWeAreId { get; set; }
        public WhoWeAre WhoWeAre { get; set; }
    }
}
