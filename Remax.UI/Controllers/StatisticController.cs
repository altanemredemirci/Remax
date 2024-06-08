using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;

namespace Remax.UI.Controllers
{
    public class StatisticController : Controller
    {
        private readonly IStatisticService _statisticService;

        public StatisticController(IStatisticService statisticService)
        {
            _statisticService = statisticService;
        }

        public IActionResult Index()
        {
            ViewBag.CategoryCount = _statisticService.CategoryCount();
            ViewBag.ActiveCategoryCount = _statisticService.ActiveCategoryCount();
            ViewBag.PassiveCategoryCount = _statisticService.PassiveCategoryCount();
            ViewBag.ProductCount = _statisticService.ProductCount();
            ViewBag.TopAgencyByProductCount = _statisticService.TopAgencyByProductCount();
            ViewBag.TopCategoryByProductCount = _statisticService.TopCategoryByProductCount();
            ViewBag.AvgProductBySale = _statisticService.AvgProductBySale();
            ViewBag.AvgProductByRent = _statisticService.AvgProductByRent();
            ViewBag.TopCityByProductCount = _statisticService.TopCityByProductCount();
            ViewBag.DiffrentCityCount = _statisticService.DiffrentCityCount();
            ViewBag.LastProductPrice = _statisticService.LastProductPrice();
            ViewBag.TheMostExpensiveProduct = _statisticService.TheMostExpensiveProduct();
            ViewBag.CheapestProduct = _statisticService.CheapestProduct();
            ViewBag.NewestBuildingYear = _statisticService.NewestBuildingYear();
            ViewBag.OldestBuildingYear = _statisticService.OldestBuildingYear();
            ViewBag.ActiveAgencyCount = _statisticService.ActiveAgencyCount();
            return View();
        }
    }
}
