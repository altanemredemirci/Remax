﻿using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Abstract
{
    public interface IRepositoryService<T>
    {
        void Create(T entity);
        void Update(T entity);
        void Delete(T entity);

        List<T> GetAll(Expression<Func<T, bool>> filter = null);
        T GetOne(Expression<Func<T, bool>> filter);
        T GetById(int id);
    }
}
