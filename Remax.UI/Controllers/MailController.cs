using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.Entity;
using Remax.UI.EmailServices;

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

        public IActionResult StatusChange(int id)
        {
            var mail = _mailService.GetById(id);
            mail.IsRead = !mail.IsRead;
            _mailService.Update(mail);

            return RedirectToAction("Index");
        }

        public IActionResult Replymail(Mail mail)
        {
            string body = $"<h2>Merhaba {mail.Name}</h2><br>{mail.Subject} konusunda cevabımız:<br>{mail.Message}";

            bool result = MailHelper.SendMail(body, mail.Email, mail.Subject);

            var email = _mailService.GetById(mail.Id);
            email.IsReply = true;
            _mailService.Update(email);

            return RedirectToAction("Index");
        }
    }
}
