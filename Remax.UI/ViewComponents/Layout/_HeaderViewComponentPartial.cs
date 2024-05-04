using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Layout
{
    public class _HeaderViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
