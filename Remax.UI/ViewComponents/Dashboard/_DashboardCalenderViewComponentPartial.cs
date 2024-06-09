using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Dashboard
{
    public class _DashboardCalenderViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
