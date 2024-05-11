using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.CategoryDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeCategoryViewComponentPartial:ViewComponent
    {
        private readonly ICategoryService _categoryService;
        private readonly IMapper _mapper;
        public _HomeCategoryViewComponentPartial(ICategoryService categoryService,IMapper mapper)
        {
            _categoryService = categoryService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            return View(_mapper.Map<List<ResultCategoryDTO>>(_categoryService.GetAll().Where(i=> i.Status==true).ToList()));
        }
    }
}
