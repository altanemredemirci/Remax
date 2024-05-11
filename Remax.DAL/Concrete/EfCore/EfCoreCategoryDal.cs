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
    public class EfCoreCategoryDal :EfCoreGenericRepositoryDal<Category,DataContext>, ICategoryDal
    {
        public override List<Category> GetAll(Expression<Func<Category, bool>> filter)
        {
            using (var context = new DataContext())
            {
                return filter == null
                    ? context.Categories.Include(i=> i.Products).ToList()
                    : context.Categories.Include(i => i.Products).Where(filter).ToList();
            }
        }
    }
}
