using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.BLL.DTOs.TodoListDTO;

namespace Remax.UI.ViewComponents.Dashboard
{
    public class _DashboardTodoListViewComponentPartial:ViewComponent
    {
        private readonly ITodoListService _todoListService;
        private readonly IMapper _mapper;

        public _DashboardTodoListViewComponentPartial(ITodoListService todoListService, IMapper mapper)
        {
            _todoListService = todoListService;
            _mapper = mapper;
        }

        public IViewComponentResult Invoke()
        {
            var todoList = _mapper.Map<List<ResultTodoListDTO>>(_todoListService.GetAll());
            return View(todoList);
        }
    }
}
