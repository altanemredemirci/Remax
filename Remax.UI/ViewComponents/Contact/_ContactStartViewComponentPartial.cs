using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ContactDTO;

namespace Remax.UI.ViewComponents.Contact
{
    public class _ContactStartViewComponentPartial:ViewComponent
    {
        private readonly IContactService _contactService;
        private readonly IMapper _mapper;

        public _ContactStartViewComponentPartial(IContactService contactService, IMapper mapper)
        {
            _contactService = contactService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var models = _mapper.Map<ResultContactDTO>(_contactService.GetOne());
            return View(models);
        }
    }
}
