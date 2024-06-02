using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;

namespace Remax.UI.Controllers
{
    public class MailController : Controller
    {
        private readonly IMailService _mailService;

        public MailController(IMailService mailService)
        {
            _mailService = mailService;
        }

        public IActionResult Index()
        {
            return View(_mailService.GetAll());
        }
    }
}
