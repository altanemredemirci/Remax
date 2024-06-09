using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _ProductDetailPopularPostViewComponentPartial:ViewComponent
    {
        private readonly IProductService _productService;
        private readonly IMapper _mapper;

        public _ProductDetailPopularPostViewComponentPartial(IProductService productService, IMapper mapper)
        {
            _productService = productService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            return View(_mapper.Map<List<ResultProductDTO>>(_productService.GetAll(i=> i.IsFavorite==true && i.Status==true).OrderByDescending(i=> i.PublishDate).Take(3).ToList()));
        }
    }
}
