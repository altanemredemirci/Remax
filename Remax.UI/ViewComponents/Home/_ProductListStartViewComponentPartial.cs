using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _ProductListStartViewComponentPartial:ViewComponent
    {
        private readonly IProductService _productService;
        private readonly IMapper _mapper;
        public _ProductListStartViewComponentPartial(IProductService productService, IMapper mapper)
        {
            _productService = productService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var products = _productService.GetAll(i => i.Status == true).ToList();

            var models = _mapper.Map<List<ResultProductDTO>>(products);
            return View(models);
        }
    }
}
