using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.Areas.Agency.Controllers
{
    public class LayoutAgencyController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
