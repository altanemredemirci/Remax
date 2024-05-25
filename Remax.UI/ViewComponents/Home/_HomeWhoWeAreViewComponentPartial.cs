﻿using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.WhoWeAreDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeWhoWeAreViewComponentPartial : ViewComponent
    {
        private readonly IWhoWeAreService _whoWeAreService;
        private readonly IMapper _mapper;
        public _HomeWhoWeAreViewComponentPartial(IWhoWeAreService whoWeAreService, IMapper mapper)
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