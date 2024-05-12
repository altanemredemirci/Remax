using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.CategoryDTO;

namespace Remax.UI.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ICategoryService _categoryService;
        private readonly IMapper _mapper;

        public CategoryController(ICategoryService categoryService, IMapper mapper)
        {
            _categoryService = categoryService;
            _mapper = mapper;
        }

        public IActionResult Index()
        {
            var categories =_categoryService.GetAll();
            var models = _mapper.Map<List<ResultCategoryDTO>>(categories);
            return View(models);
        }

        public IActionResult Create()
        {
            return View(new CreateCategoryDTO());
        }

        [HttpPost]
        public IActionResult Create(CreateCategoryDTO model, IFormFile file)
        {
            ModelState.Remove("Icon");
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ModelState.AddModelError("", "Ikon yüklemelisiniz.");
                    return View(model);
                } 
            }
            return View(model);
        }
    }
}
