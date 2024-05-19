using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Abstract
{
    public interface ICityService
    {
        List<City> GetAll(Expression<Func<City,bool>> filter=null);
        List<District> GetDistrictByCityId(int id);
    }
}
