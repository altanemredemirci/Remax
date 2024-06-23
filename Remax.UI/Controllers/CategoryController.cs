using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.CategoryDTO;
using Remax.Entity;

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

        [Route("kategoriler")]
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
        public async Task<IActionResult> Create(CreateCategoryDTO model, IFormFile file)
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

                model.Icon= await ImageMethods.UploadImage(file);

                _categoryService.Create(_mapper.Map<Category>(model));
                return RedirectToAction("Index");
            }
            return View(model);
        }

        [Route("kategori/edit/{id?}")]
        public IActionResult Edit(int id)
        {
            var cat =_categoryService.GetById(id);

            return View(_mapper.Map<UpdateCategoryDTO>(cat));
        }


        [HttpPost]
        public async Task<IActionResult> Edit(UpdateCategoryDTO dto, IFormFile file)
        {
            ModelState.Remove("Icon");
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                var cat = _categoryService.GetById(dto.Id);

                if (file != null)
                {
                    ImageMethods.DeleteImage(cat.Icon);
                    
                    dto.Icon= await ImageMethods.UploadImage(file);
                }

                _categoryService.Update(_mapper.Map<Category>(dto));

                return RedirectToAction("Index");
            }

            return View(dto);
        }

        public IActionResult Delete(int id)
        {
            var cat = _categoryService.GetById(id);

            _categoryService.Delete(cat);

            ImageMethods.DeleteImage(cat.Icon);

            return RedirectToAction("Index");
        }
    }
}
