﻿
using Microsoft.AspNetCore.Mvc;

namespace Remax.UI.ViewComponents.Home
{
    public class _HomeTeamAgentViewComponentPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}