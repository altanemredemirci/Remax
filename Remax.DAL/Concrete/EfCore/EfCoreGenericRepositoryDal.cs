﻿using Microsoft.EntityFrameworkCore;
using Remax.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreGenericRepositoryDal <T, TContext> : IRepository<T>
        where T:class
        where TContext:DbContext, new()
    {
        public void Create(T entity)
        {
            using (var context = new TContext()) // DataContext db = new DataContext()
            {
                context.Set<T>().Add(entity); // db.Categories.Add(entity);
                context.SaveChanges();
            }
        }

        public void Delete(T entity)
        {
            using (var context = new TContext())
            {
                context.Set<T>().Remove(entity);
                context.SaveChanges();
            }
        }

        public virtual List<T> GetAll(Expression<Func<T, bool>> filter) //filter = i=> i.Price>2000
        {
            using (var context = new TContext())
            {
                return filter == null
                    ? context.Set<T>().ToList()
                    : context.Set<T>().Where(filter).ToList();
            }
        }

        public virtual T GetById(int id)
        {
            using (var context = new TContext())
            {
                return context.Set<T>().Find(id);
            }
        }

        public virtual T GetOne(Expression<Func<T, bool>> filter)
        {
            using (var context = new TContext())
            {
                return filter==null
                    ? context.Set<T>().FirstOrDefault()  
                    : context.Set<T>().Where(filter).FirstOrDefault();
            }
        }

        public virtual void Update(T entity)
        {
            using (var context = new TContext())
            {
                context.Entry(entity).State = EntityState.Modified;
                context.SaveChanges();
            }
        }
    }
}
