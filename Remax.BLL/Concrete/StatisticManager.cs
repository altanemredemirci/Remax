﻿using Remax.BLL.Abstract;
using Remax.DAL.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Concrete
{
    public class StatisticManager : IStatisticService
    {
        private readonly IStatisticDal _statisticDal;

        public StatisticManager(IStatisticDal statisticDal)
        {
            _statisticDal = statisticDal;
        }

        public int ActiveAgencyCount()
        {
            return _statisticDal.ActiveAgencyCount();
        }

        public int ActiveCategoryCount()
        {
            return _statisticDal.ActiveCategoryCount();
        }

        public int ApartmentCount()
        {
            return _statisticDal.ApartmentCount();
        }

        public decimal AvgProductByRent()
        {
            return _statisticDal.AvgProductByRent();
        }

        public decimal AvgProductBySale()
        {
            return _statisticDal.AvgProductBySale();
        }

        public int CategoryCount()
        {
            return _statisticDal.CategoryCount();
        }

        public decimal CheapestProduct()
        {
            return _statisticDal.CheapestProduct();
        }

        public int DiffrentCityCount()
        {
            return _statisticDal.DiffrentCityCount();
        }

        public decimal LastProductPrice()
        {
            return _statisticDal.LastProductPrice();
        }

        public string NewestBuildingYear()
        {
            return _statisticDal.NewestBuildingYear();
        }

        public string OldestBuildingYear()
        {
            return _statisticDal.OldestBuildingYear();
        }

        public int PassiveCategoryCount()
        {
            return _statisticDal.PassiveCategoryCount();
        }

        public int ProductCount()
        {
            return _statisticDal.ProductCount();
        }

        public decimal TheMostExpensiveProduct()
        {
            return _statisticDal.TheMostExpensiveProduct();
        }

        public string TopAgencyByProductCount()
        {
            return _statisticDal.TopAgencyByProductCount();
        }

        public string TopCategoryByProductCount()
        {
            return _statisticDal.TopCategoryByProductCount();
        }

        public string TopCityByProductCount()
        {
            return _statisticDal.TopCityByProductCount();
        }
    }
}
