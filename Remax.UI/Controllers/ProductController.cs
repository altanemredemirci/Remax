using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;
using Remax.Entity;

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
        public async Task<IActionResult> Create(CreateProductDTO dto, IFormFile file)
        {
            ModelState.Remove("CoverImage");
            ModelState.Remove("City");
            ModelState.Remove("Agency");
            ModelState.Remove("Category");
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ModelState.AddModelError("", "Resim yüklenemeli.");

                    ViewBag.Categories = _categoryService.GetAll();
                    ViewBag.Agencies = _agencyService.GetAll();
                    ViewBag.Cities = _cityService.GetAll();
                    return View(dto);
                }

                dto.CoverImage = await ImageMethods.UploadImage(file);
                dto.Status = true;

                _productService.Create(_mapper.Map<Product>(dto));
                return RedirectToAction("Index");
            }

            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            ViewBag.Cities = _cityService.GetAll();
            return View(dto);
        }

        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return BadRequest();
            }

            var product = _productService.GetById(id.Value);

            if (product == null)
            {
                return NotFound();
            }

            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            ViewBag.Cities = _cityService.GetAll();

            return View(_mapper.Map<UpdateProductDTO>(product));
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(UpdateProductDTO dto, IFormFile file)
        {
            ModelState.Remove("file");
            ModelState.Remove("City");
            ModelState.Remove("Agency");
            ModelState.Remove("Category");
            if (ModelState.IsValid)
            {
                var product = _productService.GetById(dto.Id);

                if (file != null)
                {
                    ImageMethods.DeleteImage(product.CoverImage);
                    dto.CoverImage = await ImageMethods.UploadImage(file);
                }


                _productService.Update(_mapper.Map<Product>(dto));
                return RedirectToAction("Index");
            }

            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            ViewBag.Cities = _cityService.GetAll();

            return View(dto);
        }

        public IActionResult Delete(int id)
        {
            var product = _productService.GetById(id);

            _productService.Delete(product);
            ImageMethods.DeleteImage(product.CoverImage);
            return RedirectToAction("Index");
        }
        

        public IActionResult StatusChange(int id)
        {
            var product = _productService.GetById(id);

            product.Status = product.Status == true ? false : true;

            _productService.Update(product);

            return RedirectToAction("Index");
        }
    }
}
