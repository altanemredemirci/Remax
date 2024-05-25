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
    public class SliderManager : ISliderService
    {
        private readonly ISliderDal _sliderDal;

        public SliderManager(ISliderDal sliderDal)
        {
            _sliderDal = sliderDal;
        }

        public void Create(Slider entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(Slider entity)
        {
            throw new NotImplementedException();
        }

        public List<Slider> GetAll(Expression<Func<Slider, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public Slider GetById(int id)
        {
            throw new NotImplementedException();
        }

        public Slider GetOne(Expression<Func<Slider, bool>> filter)
        {
            return _sliderDal.GetOne(filter);
        }

        public void Update(Slider entity)
        {
            throw new NotImplementedException();
        }
    }
}
