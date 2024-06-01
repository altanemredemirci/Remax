using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.WhoWeAreDTO;
using Remax.Entity;

namespace Remax.UI.Controllers
{
    public class WhoWeAreController : Controller
    {
        private readonly IWhoWeAreService _whoWeAreService;
        private readonly IMapper _mapper;

        public WhoWeAreController(IWhoWeAreService whoWeAreService, IMapper mapper)
        {
            _whoWeAreService = whoWeAreService;
            _mapper = mapper;
        }

        public IActionResult Index()
        {
            var whoWeAre = _whoWeAreService.GetOne();
            return View(_mapper.Map<ResultWhoWeAreDTO>(whoWeAre));
        }


        public IActionResult Edit(int id)
        {
            var whoWeAre = _whoWeAreService.GetById(id);
            return View(_mapper.Map<UpdateWhoWeAreDTO>(whoWeAre));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(UpdateWhoWeAreDTO dto, IFormFile file)
        {
            ModelState.Remove("file");
            ModelState.Remove("Employments[0].WhoWeAre");
            ModelState.Remove("Employments[1].WhoWeAre");
            ModelState.Remove("Employments[2].WhoWeAre");
            if (ModelState.IsValid)
            {
                var whoWeAre = _whoWeAreService.GetById(dto.Id);

                if (whoWeAre == null)
                {
                    return NotFound();
                }

                if (file != null)
                {
                    if (whoWeAre.ImageUrl != null)
                    {
                        ImageMethods.DeleteImage(whoWeAre.ImageUrl);
                    }

                    dto.ImageUrl = await ImageMethods.UploadImage(file);
                }

                _whoWeAreService.Update(_mapper.Map<WhoWeAre>(dto));

                return RedirectToAction("Index");
            }

            return View(dto);
        }
    }
}
