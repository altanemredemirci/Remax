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
    public class EfCoreSliderDal : EfCoreGenericRepositoryDal<Slider, DataContext>, ISliderDal
    {
       
    }
}
