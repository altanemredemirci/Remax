using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Identity.Client;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.WhoWeAreDTO;

namespace Remax.UI.ViewComponents.About
{
    public class _AboutStartViewComponentPartial:ViewComponent
    {
        private readonly IWhoWeAreService _whoWeAreService;
        private readonly IMapper _mapper;
        public _AboutStartViewComponentPartial(IWhoWeAreService whoWeAreService,IMapper mapper)
        {
            _whoWeAreService = whoWeAreService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var whoWeAre = _whoWeAreService.GetAll().FirstOrDefault();
            return View(_mapper.Map<ResultWhoWeAreDTO>(whoWeAre));
        }
    }
}
