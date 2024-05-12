using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Admin
{
    public class _AdminLayoutNavbarViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}