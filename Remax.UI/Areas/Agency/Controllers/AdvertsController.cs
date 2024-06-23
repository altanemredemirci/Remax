using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;

namespace Remax.UI.Areas.Agency.Controllers
{
    [Area("Agency")]
    public class AdvertsController : Controller
    {
        private readonly IProductService _productService;
        private readonly IMapper _mapper;

        public AdvertsController(IProductService productService, IMapper mapper)
        {
            _productService = productService;
            _mapper = mapper;
        }

        [Route("advert")]
        public IActionResult Index()
        {
            var models = _productService.GetAll(i => i.AgencyId == 1 && i.Status == true);

            return View(_mapper.Map<List<ResultProductDTO>>(models));
        }


        public IActionResult ExpiredProduct()
        {
            var models = _productService.GetAll(i => i.AgencyId == 1 && i.Status == false);

            return View(_mapper.Map<List<ResultProductDTO>>(models));
        }
    }
}
