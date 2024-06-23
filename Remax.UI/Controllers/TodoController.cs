using Microsoft.AspNetCore.Mvc;
using Remax.BLL.Abstract;
using Remax.DAL.Abstract;
using Remax.Entity;

namespace Remax.UI.Controllers
{
    public class TodoController : Controller
    {
        private readonly ITodoListService _todoListService;

        public TodoController(ITodoListService todoListService)
        {
            _todoListService = todoListService;
        }

        public IActionResult Delete(int id)
        {
            var todo = _todoListService.GetById(id);
            if (todo != null)
            {
                _todoListService.Delete(todo);
            }
           
            return RedirectToAction("Index","Admin");
        }

        public IActionResult Create(string description)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index", "Admin");
            }

            var todo = new TodoList()
            {
                Description = description,
                Status = false,
                AddDate = DateTime.Now.Date
            };

            _todoListService.Create(todo);

            return RedirectToAction("Index", "Admin");
        }
    }
}
