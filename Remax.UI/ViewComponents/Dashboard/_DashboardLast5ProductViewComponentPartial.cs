using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;

namespace Remax.UI.ViewComponents.Dashboard
{
    public class _DashboardLast5ProductViewComponentPartial:ViewComponent
    {
        private readonly IProductService _productService;
        private readonly IMapper _mapper;
        public _DashboardLast5ProductViewComponentPartial(IProductService productService, IMapper mapper)
        {
            _productService = productService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var products = _productService.GetAll().OrderByDescending(i=> i.PublishDate).Take(5).ToList();

            var models = _mapper.Map<List<ResultProductDTO>>(products);
            return View(models);
        }
    }
}
