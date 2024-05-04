using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeProductListViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
