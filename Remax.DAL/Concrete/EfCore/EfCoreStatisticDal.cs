using Microsoft.EntityFrameworkCore;
using Remax.DAL.Abstract;
using Remax.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.DAL.Concrete.EfCore
{
    public class EfCoreStatisticDal : IStatisticDal
    {
        public int ActiveAgencyCount()
        {
            using (var context = new DataContext())
            {
                return context.Agencies.Where(i => i.Status == true).Count();
            }
        }

        public int ActiveCategoryCount()
        {
            using (var context = new DataContext())
            {
                return context.Categories.Where(i => i.Status == true).Count();
            }
        }

        public int ApartmentCount()
        {
            using (var context = new DataContext())
            {
                return context.Categories.Where(i => i.Name == "Daire").Include(i => i.Products).Count();
            }
        }

        public decimal AvgProductByRent()
        {
            using (var context = new DataContext())
            {
                return context.Products.Where(i=> i.Type=="Kiralık").Average(i => i.Price);
            }
        }

        public decimal AvgProductBySale()
        {
            using (var context = new DataContext())
            {
                return context.Products.Where(i => i.Type == "Satılık").Average(i => i.Price);
            }
        }

        public int CategoryCount()
        {
            using (var context = new DataContext())
            {
                return context.Categories.Count();
            }
        }

        public decimal CheapestProduct()
        {
            using (var context = new DataContext())
            {
                return context.Products.Min(i=> i.Price);
            }
        }

        public int DiffrentCityCount()
        {
            using (var context = new DataContext())
            {
                return context.Products.Select(i => i.CityId).Distinct().Count();
            }
        }

        public decimal LastProductPrice()
        {
            using (var context = new DataContext())
            {
                return context.Products.OrderBy(i => i.PublishDate).FirstOrDefault().Price;
            }
        }

        public string NewestBuildingYear()
        {
            using (var context = new DataContext())
            {
                return context.ProductDetails.OrderByDescending(i => i.BuildYear).Select(i => i.BuildYear).FirstOrDefault();
            }
        }

        public string OldestBuildingYear()
        {
            using (var context = new DataContext())
            {
                return context.ProductDetails.OrderBy(i => i.BuildYear).Select(i => i.BuildYear).FirstOrDefault();
            }
        }

        public int PassiveCategoryCount()
        {
            using (var context = new DataContext())
            {
                return context.Categories.Where(i => i.Status == false).Count();
            }
        }

        public int ProductCount()
        {
            using (var context = new DataContext())
            {
                return context.Products.Count();
            }
        }

        public decimal TheMostExpensiveProduct()
        {
            using (var context = new DataContext())
            {
                return context.Products.Max(i => i.Price);
            }
        }

        public string TopAgencyByProductCount()
        {
            using (var context = new DataContext())
            {
                return context.Products
                    .GroupBy(i => i.Agency.Name)
                    .Select(group => new { AgencyName = group.Key, ProductCount = group.Count() })
                    .OrderByDescending(x => x.ProductCount)
                    .FirstOrDefault().AgencyName;
            }
        }

        public string TopCategoryByProductCount()
        {
            using (var context = new DataContext())
            {
                return context.Products
                    .GroupBy(i => i.Category.Name)
                    .Select(group => new { CategoryName = group.Key, ProductCount = group.Count() })
                    .OrderByDescending(x => x.ProductCount)
                    .FirstOrDefault().CategoryName;
            }
        }

        public string TopCityByProductCount()
        {
            using (var context = new DataContext())
            {
                return context.Products
                    .GroupBy(i => i.City.Name)
                    .Select(group => new { CityName = group.Key, ProductCount = group.Count() })
                    .OrderByDescending(x => x.ProductCount)
                    .FirstOrDefault().CityName;
            }
        }
    }
}
