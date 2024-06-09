using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDetailDTO;
using Remax.BLL.DTOs.ProductDTO;
using Remax.Entity;

namespace Remax.UI.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        private readonly IProductDetailService _productDetailService;
        private readonly ICategoryService _categoryService;
        private readonly IAgencyService _agencyService;
        private readonly ICityService _cityService;
        private readonly IMapper _mapper;

        public ProductController(IProductService productService, IMapper mapper,ICategoryService categoryService,IAgencyService agencyService,ICityService cityService,IProductDetailService productDetailService)
        {
            _productService = productService;
            _categoryService = categoryService;
            _mapper = mapper;
            _agencyService = agencyService;
            _cityService = cityService;
            _productDetailService = productDetailService;
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

            return View(new CreateProductDetailDTO());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CreateProductDetailDTO dto, IFormFile file, IFormFile[] files)
        {
            ModelState.Remove("Product.CoverImage");
            ModelState.Remove("Product.City");
            ModelState.Remove("Product.Agency");
            ModelState.Remove("Product.Category");
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ViewBag.Cities = _cityService.GetAll();
                    ViewBag.Categories = _categoryService.GetAll();
                    ViewBag.Agencies = _agencyService.GetAll();
                    ModelState.AddModelError("", "Ana resim için dosya yüklenmedi.");
                    return View(dto);
                }

                if (files.Length == 0)
                {
                    ViewBag.Cities = _cityService.GetAll();
                    ViewBag.Categories = _categoryService.GetAll();
                    ViewBag.Agencies = _agencyService.GetAll();
                    ModelState.AddModelError("", "İlan Detay Resimleri yüklenmedi.");
                    return View(dto);
                }

                dto.Product.CoverImage = await ImageMethods.UploadImage(file);

                foreach (var item in files)
                {
                    Entity.Image image = new Entity.Image();
                    image.ImageUrl = await ImageMethods.UploadImage(item);
                    dto.Images.Add(image);
                }
                dto.Product.Status = true;
                dto.PublishDate = DateTime.Now;
                //_productService.Create(_mapper.Map<Product>(dto.Product));
                _productDetailService.Create(_mapper.Map<ProductDetail>(dto));

                return RedirectToAction("Index");

            }

            ViewBag.Cities = _cityService.GetAll();
            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            return View(dto);
        }

        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return BadRequest();
            }

            var product = _productDetailService.GetById(id.Value);

            if (product == null)
            {
                return NotFound();
            }

            ViewBag.Categories = _categoryService.GetAll();
            ViewBag.Agencies = _agencyService.GetAll();
            ViewBag.Cities = _cityService.GetAll();

            return View(_mapper.Map<UpdateProductDetailDTO>(product));
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(UpdateProductDTO dto, IFormFile file)
        {
            ModelState.Remove("file");
            ModelState.Remove("City");
            ModelState.Remove("Agency");
            ModelState.Remove("Category");
            ModelState.Remove("PublishDate");
            if (ModelState.IsValid)
            {
                var product = _productService.GetById(dto.Id);

                if (file != null)
                {
                    ImageMethods.DeleteImage(product.CoverImage);
                    dto.CoverImage = await ImageMethods.UploadImage(file);
                }

                dto.PublishDate = DateTime.Now;
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
