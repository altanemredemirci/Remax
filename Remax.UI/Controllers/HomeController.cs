using Microsoft.AspNetCore.Mvc;
using Remax.UI.Models;
using System.Diagnostics;

namespace Remax.UI.Controllers
{
    public class HomeController : Controller
    {
        
        public IActionResult Index()
        {
            return View();
        }

       
    }
}
