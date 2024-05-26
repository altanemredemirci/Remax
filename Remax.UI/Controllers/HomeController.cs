using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;
using Remax.UI.Models;
using System.Diagnostics;
using System.Net.WebSockets;

namespace Remax.UI.Controllers
{
    public class HomeController : Controller
    {

        public IActionResult Index()
        {           
            return View();
        }

        public IActionResult About()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult ProductDetail()
        {
            return View();
        }

        public IActionResult ProductList()
        {
            return View();
        }

        public IActionResult AgencyList()
        {
            return View();
        }
    }
}
