﻿using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.SliderDTO;

namespace Remax.UI.ViewComponents.Home
{
    public class _AgencyListHeaderViewComponentPartial:ViewComponent
    {
        private readonly ISliderService _sliderService;
        private readonly IMapper _mapper;

        public _AgencyListHeaderViewComponentPartial(ISliderService sliderService, IMapper mapper)
        {
            _sliderService = sliderService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            return View(_mapper.Map<ResultSliderDTO>(_sliderService.GetOne(i => i.Page == "AgencyList")));
        }
    }
}
