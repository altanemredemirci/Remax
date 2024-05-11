using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ClientDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeTestimonialViewComponentPartial:ViewComponent
    {
        private readonly IClientService _clientService;
        private readonly IMapper _mapper;

        public _HomeTestimonialViewComponentPartial(IClientService clientService, IMapper mapper)
        {
            _clientService = clientService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            return View(_mapper.Map<List<ResultClientDTO>>(_clientService.GetAll()));
        }
    }
}
