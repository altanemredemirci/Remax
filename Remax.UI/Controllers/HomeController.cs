using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.ProductDTO;
using Remax.Entity;
using Remax.UI.EmailServices;
using Remax.UI.Models;
using System.Diagnostics;
using System.Net.WebSockets;

namespace Remax.UI.Controllers
{
    public class HomeController : Controller
    {
        private readonly IMailService _mailService;

        public HomeController(IMailService mailService)
        {
            _mailService = mailService;
        }

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

        public IActionResult ProductDetail(int id)
        {
            return View(id);
        }

        public IActionResult ProductList()
        {
            return View();
        }

        public IActionResult AgencyList()
        {
            return View();
        }

        public IActionResult SendMail(Mail mail)
        {
            string body = $"<h2>Ýletiþim Bilgileri</h2><br>Ad Soyad:{mail.Name}<br>Email:{mail.Email}<br>Konu:{mail.Subject}<br>Mesaj:{mail.Message}";

            bool result = MailHelper.SendMail(body, "altanemre1989@gmail.com", mail.Subject);

            if (result)
            {
                mail.SendDate = DateTime.Now;
                mail.IsRead = false;

                _mailService.Create(mail);

                TempData["MailSuccess"]="true";
            }
            else
            {
                TempData["MailSuccess"] = "false";
            }

            return RedirectToAction("Contact");
        }
    }
}
