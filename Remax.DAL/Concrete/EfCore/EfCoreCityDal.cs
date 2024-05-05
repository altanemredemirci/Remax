using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreCityDal : EfCoreGenericRepositoryDal<City, DataContext>, ICityDal
    {
    }
}
