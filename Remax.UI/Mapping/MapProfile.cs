﻿using AutoMapper;
using Remax.BLL.DTOs.AgencyDTO;
using Remax.BLL.DTOs.CategoryDTO;
using Remax.BLL.DTOs.ClientDTO;
using Remax.BLL.DTOs.ProductDTO;
using Remax.Entity;

namespace Remax.UI.Mapping
{
    public class MapProfile:Profile
    {
        public MapProfile()
        {
            CreateMap<Product, ResultProductDTO>().ReverseMap();
            CreateMap<Category, ResultCategoryDTO>().ReverseMap();
            CreateMap<Agency, ResultAgencyDTO>().ReverseMap();
            CreateMap<Client, ResultClientDTO>().ReverseMap();
        }
    }
}
