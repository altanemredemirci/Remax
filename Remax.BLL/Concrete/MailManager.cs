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
    public class MailManager : IMailService
    {
        private readonly IMailDal _mailDal;

        public MailManager(IMailDal mailDal)
        {
            _mailDal = mailDal;
        }

        public void Create(Mail entity)
        {
            _mailDal.Create(entity);
        }

        public void Delete(Mail entity)
        {
            throw new NotImplementedException();
        }

        public List<Mail> GetAll(Expression<Func<Mail, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public Mail GetById(int id)
        {
            throw new NotImplementedException();
        }

        public Mail GetOne(Expression<Func<Mail, bool>> filter = null)
        {
            throw new NotImplementedException();
        }

        public void Update(Mail entity)
        {
            throw new NotImplementedException();
        }
    }
}
