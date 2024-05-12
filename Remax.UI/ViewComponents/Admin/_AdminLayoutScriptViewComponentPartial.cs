using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Admin
{
    public class _AdminLayoutScriptViewComponentPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
