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
    public class EfCoreWhoWeAreDal:EfCoreGenericRepositoryDal<WhoWeAre,DataContext>,IWhoWeAreDal
    {
        public override List<WhoWeAre> GetAll(Expression<Func<WhoWeAre, bool>> filter)
        {
            using(var context = new DataContext())
            {
                return filter == null
                    ? context.WhoWeAres.Include(i=> i.Employments).ToList()
                    : context.WhoWeAres.Include(i => i.Employments).Where(filter).ToList();
            }
        }
    }
}
