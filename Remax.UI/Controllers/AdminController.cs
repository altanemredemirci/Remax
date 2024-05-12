using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
