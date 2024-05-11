
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.AgencyDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeTeamAgentViewComponentPartial:ViewComponent
    {
        private readonly IAgencyService _agencyService;
        private readonly IMapper _mapper;

        public _HomeTeamAgentViewComponentPartial(IAgencyService agencyService, IMapper mapper)
        {
            _agencyService = agencyService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            return View(_mapper.Map<List<ResultAgencyDTO>>(_agencyService.GetAll().Where(i=> i.Status==true).ToList()));
        }
    }
}
