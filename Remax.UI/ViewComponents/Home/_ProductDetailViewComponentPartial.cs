using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDetailDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _ProductDetailViewComponentPartial:ViewComponent
    {
        private readonly IProductDetailService _productDetailService;
        private readonly IMapper _mapper;

        public _ProductDetailViewComponentPartial(IProductDetailService productDetailService, IMapper mapper)
        {
            _productDetailService = productDetailService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke(int id)
        {
            var productDetail = _productDetailService.GetById(id);
            return View(_mapper.Map<ResultProductDetailDTO>(productDetail));
        }
    }
}
