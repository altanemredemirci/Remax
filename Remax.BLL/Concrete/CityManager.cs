using Remax.BLL.Abstract;
using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Concrete
{
    public class CityManager : ICityService
    {
        private readonly ICityDal _cityDal;

        public CityManager(ICityDal cityDal)
        {
            _cityDal = cityDal;
        }

        public List<City> GetAll(Expression<Func<City, bool>> filter=null)
        {
            return _cityDal.GetAll(filter);
        }

        public City GetById(int id)
        {
            return _cityDal.GetById(id);
        }
    }
}
