using Microsoft.AspNetCore.SignalR;
using Remax.BLL.Abstract;

namespace Remax.UI.Hubs
{
    public class SignalRHub:Hub
    {
        private readonly IStatisticService _statisticService;
        private readonly ITodoListService _todoListService;

        public SignalRHub(IStatisticService statisticService, ITodoListService todoListService)
        {
            _statisticService = statisticService;
            _todoListService = todoListService;
        }

        public async Task SendCategoryCount()
        {
            var categories = _statisticService.CategoryCount();

            await Clients.All.SendAsync("ReceiveCategoryCount", categories);
        }

        public async Task SendTodoList()
        {
            var todoList = _todoListService.GetAll();

            await Clients.All.SendAsync("ReceiveTodoList", todoList);
        }
    }
}
