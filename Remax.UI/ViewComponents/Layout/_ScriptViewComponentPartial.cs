using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Layout
{
    public class _ScriptViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
