using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeSearchViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}