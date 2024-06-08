using AutoMapper;
using Remax.BLL.DTOs.AgencyDTO;
using Remax.BLL.DTOs.CategoryDTO;
using Remax.BLL.DTOs.ClientDTO;
using Remax.BLL.DTOs.ContactDTO;
using Remax.BLL.DTOs.ProductDetailDTO;
using Remax.BLL.DTOs.ProductDTO;
using Remax.BLL.DTOs.SliderDTO;
using Remax.BLL.DTOs.WhoWeAreDTO;
using Remax.Entity;

namespace Remax.UI.Mapping
{
    public class MapProfile:Profile
    {
        public MapProfile()
        {
            CreateMap<Product, ResultProductDTO>().ReverseMap();
            CreateMap<Product, CreateProductDTO>().ReverseMap();
            CreateMap<Product, UpdateProductDTO>().ReverseMap();

            CreateMap<ProductDetail, ResultProductDetailDTO>().ReverseMap();
            CreateMap<ProductDetail, CreateProductDetailDTO>().ReverseMap();

            CreateMap<Category, ResultCategoryDTO>().ReverseMap();
            CreateMap<Category, CreateCategoryDTO>().ReverseMap();
            CreateMap<Category, UpdateCategoryDTO>().ReverseMap();

            CreateMap<Agency, ResultAgencyDTO>().ReverseMap();
            CreateMap<Agency, CreateAgencyDTO>().ReverseMap();
            CreateMap<Agency, UpdateAgencyDTO>().ReverseMap();


            CreateMap<Client, ResultClientDTO>().ReverseMap();
            CreateMap<Contact, ResultContactDTO>().ReverseMap();
            CreateMap<Slider, ResultSliderDTO>().ReverseMap();

            CreateMap<WhoWeAre, ResultWhoWeAreDTO>().ReverseMap();
            CreateMap<WhoWeAre, UpdateWhoWeAreDTO>().ReverseMap();
        }
    }
}
