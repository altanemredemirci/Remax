using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remax.BLL.Abstract
{
    public interface IStatisticService
    {
        int CategoryCount();
        int ActiveCategoryCount();
        int PassiveCategoryCount();
        int ProductCount();
        int ApartmentCount();
        string TopAgencyByProductCount();
        string TopCategoryByProductCount();
        decimal AvgProductBySale();
        decimal AvgProductByRent();
        string TopCityByProductCount();
        int DiffrentCityCount();
        decimal LastProductPrice();
        decimal TheMostExpensiveProduct();
        decimal CheapestProduct();
        string NewestBuildingYear();
        string OldestBuildingYear();
        int ActiveAgencyCount();
    }
}
