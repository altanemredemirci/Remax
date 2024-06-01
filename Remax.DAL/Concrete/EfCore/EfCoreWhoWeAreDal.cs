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

        public override WhoWeAre GetById(int id)
        {
            using (var context = new DataContext())
            {
                return context.WhoWeAres.Include(i=> i.Employments).FirstOrDefault(i=> i.Id==id);
            }
        }

        public override void Update(WhoWeAre entity)
        {
            using (var context = new DataContext())
            {
                var employments = context.Employments.Where(i => i.WhoWeAreId == entity.Id).ToList();

                for (int i = 0; i < 3; i++)
                {
                    employments[i].Text = entity.Employments[i].Text;
                    employments[i].Status = entity.Employments[i].Status;
                }

                context.Entry(entity).State = EntityState.Modified;
                context.SaveChanges();
            }
        }
    }
}
