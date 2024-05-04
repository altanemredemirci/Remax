using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeHeaderViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
