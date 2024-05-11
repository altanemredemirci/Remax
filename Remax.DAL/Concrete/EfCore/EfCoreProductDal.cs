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
    public class EfCoreProductDal : EfCoreGenericRepositoryDal<Product,DataContext>, IProductDal
    {
        public override List<Product> GetAll(Expression<Func<Product, bool>> filter)
        {
            using (var context = new DataContext())
            {
                var products = context.Products.Include(i => i.Category).Include(i=> i.City).AsQueryable();

                if (filter != null)
                    products = products.Where(filter);

                return products.ToList();

            }
        }
    }
}
