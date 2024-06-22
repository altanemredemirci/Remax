using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.Controllers
{
    public class TestController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
