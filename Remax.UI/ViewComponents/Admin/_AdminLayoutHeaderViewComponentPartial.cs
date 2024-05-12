using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Admin
{
    public class _AdminLayoutHeaderViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
