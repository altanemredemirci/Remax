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
    public class EfCoreProductDetailDal : EfCoreGenericRepositoryDal<ProductDetail, DataContext>, IProductDetailDal
    {
        public override ProductDetail GetById(int id)
        {
            using (var context = new DataContext())
            {
                return context.ProductDetails
                    .Include(i => i.Images)
                    .Include(i => i.Product)
                    .ThenInclude(i => i.Agency).FirstOrDefault(i => i.Id == id);
            }
        }
    }
}
