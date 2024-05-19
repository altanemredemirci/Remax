using AutoMapper;
using Humanizer;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.AgencyDTO;
using Remax.Entity;

namespace Remax.UI.Controllers
{
    public class AgencyController : Controller
    {
        private readonly IAgencyService _agencyService;
        private readonly IMapper _mapper;

        public AgencyController(IAgencyService agencyService, IMapper mapper)
        {
            _agencyService = agencyService;
            _mapper = mapper;
        }

        public IActionResult Index()
        {
            var agencies = _agencyService.GetAll();
                        
            return View(_mapper.Map<List<ResultAgencyDTO>>(agencies));
        }

        public IActionResult Create()
        {
            return View(new CreateAgencyDTO());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CreateAgencyDTO dto, IFormFile file)
        {
            ModelState.Remove("ImageUrl");
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ModelState.AddModelError("", "Acenta resmi yüklenmesi gereklidir.");
                    return View(dto);
                }

                dto.ImageUrl = await ImageMethods.UploadImage(file);
                dto.Status = true;
                var model = _mapper.Map<Agency>(dto);

                _agencyService.Create(model);

                return RedirectToAction("Index");
            }

            return View(dto);
        }

        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return BadRequest();
            }

            var agency = _agencyService.GetById((int)id);

            if (agency == null)
            {
                return NotFound();
            }

            return View(_mapper.Map<UpdateAgencyDTO>(agency));
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(UpdateAgencyDTO dto, IFormFile file)
        {
            ModelState.Remove("file");
            if (ModelState.IsValid)
            {
                var agency = _agencyService.GetById(dto.Id);

                if (file != null)
                {
                    ImageMethods.DeleteImage(agency.ImageUrl);
                    dto.ImageUrl = await ImageMethods.UploadImage(file);
                }

                _agencyService.Update(_mapper.Map<Agency>(dto));
                return RedirectToAction("Index");
            }

            return View(dto);
        }

        public IActionResult Delete(int id)
        {
            var agency = _agencyService.GetById(id);

            _agencyService.Delete(agency);
            ImageMethods.DeleteImage(agency.ImageUrl);

            return RedirectToAction("Index");

        }


        public IActionResult StatusChange(int id)
        {
            var agency = _agencyService.GetById(id);

            agency.Status = agency.Status == true ? false : true;

            _agencyService.Update(agency);

            return RedirectToAction("Index");
        }

    }
}
