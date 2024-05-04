using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeTestimonialViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
