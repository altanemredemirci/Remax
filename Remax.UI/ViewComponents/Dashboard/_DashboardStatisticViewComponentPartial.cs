﻿using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;

namespace Remax.UI.ViewComponents.Dashboard
{
    public class _DashboardStatisticViewComponentPartial:ViewComponent
    {
        private readonly IStatisticService _statisticService;

        public _DashboardStatisticViewComponentPartial(IStatisticService statisticService)
        {
            _statisticService = statisticService;
        }

        public IViewComponentResult Invoke()
        {
            ViewBag.TopAgencyByProductCount = _statisticService.TopAgencyByProductCount();
            ViewBag.LastProductPrice = _statisticService.LastProductPrice();
            ViewBag.TopCityByProductCount = _statisticService.TopCityByProductCount();
            ViewBag.TopCategoryByProductCount = _statisticService.TopCategoryByProductCount();
            return View();
        }
    }
}
