using Microsoft.AspNetCore.Mvc;
using Remax.Entity;

namespace Remax.UI.ViewComponents.Contact
{
    public class _ContactMailViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View(new Mail());
        }
    }
}
