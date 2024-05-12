using Microsoft.EntityFrameworkCore;
using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreContactDal : IContactDal
    {
        public Contact GetOne()
        {
            using (var context = new DataContext()) // DataContext db = new DataContext()
            {
                return context.Contacts.FirstOrDefault();
            }
        }
    }
}
