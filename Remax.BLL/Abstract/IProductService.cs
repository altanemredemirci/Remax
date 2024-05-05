using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Abstract
{
    public interface IProductService
    {
        void Create(Product entity);
        void Update(Product entity);
        void Delete(Product entity);

        List<Product> GetAll(Expression<Func<Product, bool>> filter=null);
        Product GetOne(Expression<Func<Product, bool>> filter);
        Product GetById(int id);
    }
}
