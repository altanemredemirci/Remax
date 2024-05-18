using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;

namespace Remax.UI.Controllers
{
    public class CityController : Controller
    {
        private readonly ICityService _cityService;

        public CityController(ICityService cityService)
        {
            _cityService = cityService;
        }

        public IActionResult GetDistricts(int cityId)
        {
            var districts = _cityService.GetById(cityId);
            return Json(districts.Districts);
        }
    }
}
