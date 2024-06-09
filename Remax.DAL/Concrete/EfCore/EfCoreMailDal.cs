using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreMailDal : EfCoreGenericRepositoryDal<Mail, DataContext>, IMailDal
    {
        public List<Mail> GetLast4()
        {
            using (var context = new DataContext())
            {
                return context.Mails.Where(i => i.IsRead == false).OrderByDescending(i => i.SendDate).Take(4).ToList();
            }
        }
    }
}
