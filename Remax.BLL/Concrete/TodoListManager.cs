using Remax.BLL.Abstract;
using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Concrete
{
    public class TodoListManager : ITodoListService
    {
        private readonly ITodoListDal _todoListDal;

        public TodoListManager(ITodoListDal todoListDal)
        {
            _todoListDal = todoListDal;
        }

        public void Create(TodoList entity)
        {
            _todoListDal.Create(entity);
        }

        public void Delete(TodoList entity)
        {
            _todoListDal.Delete(entity);
        }

        public List<TodoList> GetAll(Expression<Func<TodoList, bool>> filter = null)
        {
            return _todoListDal.GetAll(filter);
        }

        public TodoList GetById(int id)
        {
            return _todoListDal.GetById(id);
        }

        public TodoList GetOne(Expression<Func<TodoList, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public void Update(TodoList entity)
        {
            throw new NotImplementedException();
        }
    }
}
