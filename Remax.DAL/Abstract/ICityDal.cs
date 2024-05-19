using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Abstract
{
    public interface ICityDal
    {
        List<City> GetAll(Expression<Func<City, bool>> filter);
        List<District> GetDistrictByCityId(int id);
    }
}
