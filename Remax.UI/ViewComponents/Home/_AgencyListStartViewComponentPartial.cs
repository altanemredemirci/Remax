using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.AgencyDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _AgencyListStartViewComponentPartial:ViewComponent
    {
        private readonly IAgencyService _agencyService;
        private readonly IMapper _mapper;

        public _AgencyListStartViewComponentPartial(IAgencyService agencyService, IMapper mapper)
        {
            _agencyService = agencyService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var agencies = _agencyService.GetAll();
            return View(_mapper.Map<List<ResultAgencyDTO>>(agencies));
        }
    }
}
