using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.UI.Models;
using System.Diagnostics;
using System.Net.WebSockets;

namespace Remax.UI.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProductService _productService;

        public HomeController(IProductService productService)
        {
            _productService = productService;
        }

        public IActionResult Index()
        {
            var products = _productService.GetAll();
            return View(products);
        }

       public IActionResult ProductDetail()
        {
            return View();
        }
    }
}
