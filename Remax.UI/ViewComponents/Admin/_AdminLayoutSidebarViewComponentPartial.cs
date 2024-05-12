using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Admin
{
    public class _AdminLayoutSidebarViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
