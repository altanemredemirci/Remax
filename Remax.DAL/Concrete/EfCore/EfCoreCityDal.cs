using Microsoft.EntityFrameworkCore;
using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreCityDal : ICityDal
    {
        public List<City> GetAll(Expression<Func<City, bool>> filter)
        {
            using (var context = new DataContext())
            {
                return filter == null
                    ? context.Cities.ToList()
                    : context.Cities.Where(filter).ToList();
            }
        }

        public City GetById(int id)
        {
            using (var context = new DataContext())
            {
                return context.Cities.Include(i=> i.Districts).FirstOrDefault(i=> i.Id==id);
            }
        }
    }
}
