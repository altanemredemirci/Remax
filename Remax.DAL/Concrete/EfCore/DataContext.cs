using Microsoft.EntityFrameworkCore;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class DataContext:DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=DESKTOP-58CMK8T\\SQLDERS; Database=Remax; Integrated Security=True; TrustServerCertificate=True");
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<ProductDetail> ProductDetails { get; set; }
        public DbSet<Agency> Agencies { get; set; }
        public DbSet<City> Cities { get; set; }
        public DbSet<District> Districts { get; set; }
        public DbSet<Client> Clients { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<Mail> Mails { get; set; }
        public DbSet<Slider> Sliders { get; set; }
        public DbSet<WhoWeAre> WhoWeAres { get; set; }
        public DbSet<Employment> Employments { get; set; }
    }
}
