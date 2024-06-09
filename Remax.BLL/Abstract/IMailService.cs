using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Abstract
{
    public interface IMailService:IRepositoryService<Mail>
    {
        List<Mail> GetLast4();
    }
}
