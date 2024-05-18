using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;

namespace Remax.UI.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        private readonly ICategoryService _categoryService;
        private readonly IAgencyService _agencyService;
        private readonly ICityService _cityService;
        private readonly IMapper _mapper;

        public ProductController(IProductService productService, IMapper mapper,ICategoryService categoryService,IAgencyService agencyService,ICityService cityService)
        {
            _productService = productService;
            _categoryService = categoryService;
            _mapper = mapper;
            _agencyService = agencyService;
            _cityService = cityService;
        }

        public IActionResult Index()
        {
            var products = _productService.GetAll();
            return View(_mapper.Map<List<ResultProductDTO>>(products));
        }

        public IActionResult Create()
        {
            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            ViewBag.Cities = _cityService.GetAll();

            return View(new CreateProductDTO());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CreateProductDTO dto, IFormFile file)
        {
            return View();
        }
    }
}
