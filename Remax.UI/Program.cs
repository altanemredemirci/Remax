using Remax.BLL.Abstract;
using Remax.BLL.Concrete;
using Remax.DAL.Abstract;
using Remax.DAL.Concrete.EfCore;
using Remax.UI.Mapping;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddAutoMapper(typeof(MapProfile));

//DEPENDENCY INJECTION
builder.Services.AddScoped<IProductService, ProductManager>(); 
builder.Services.AddScoped<IProductDal, EfCoreProductDal>();

builder.Services.AddScoped<IProductDetailService, ProductDetailManager>();
builder.Services.AddScoped<IProductDetailDal, EfCoreProductDetailDal>();

builder.Services.AddScoped<ICategoryService, CategoryManager>();
builder.Services.AddScoped<ICategoryDal, EfCoreCategoryDal>();

builder.Services.AddScoped<IAgencyService, AgencyManager>();
builder.Services.AddScoped<IAgencyDal, EfCoreAgencyDal>();

builder.Services.AddScoped<IClientService, ClientManager>();
builder.Services.AddScoped<IClientDal, EfCoreClientDal>();

builder.Services.AddScoped<IContactService, ContactManager>();
builder.Services.AddScoped<IContactDal, EfCoreContactDal>();

builder.Services.AddScoped<ICityService, CityManager>();
builder.Services.AddScoped<ICityDal, EfCoreCityDal>();

builder.Services.AddScoped<ISliderService, SliderManager>();
builder.Services.AddScoped<ISliderDal, EfCoreSliderDal>();

builder.Services.AddScoped<IWhoWeAreService, WhoWeAreManager>();
builder.Services.AddScoped<IWhoWeAreDal, EfCoreWhoWeAreDal>();

builder.Services.AddScoped<IMailService, MailManager>();
builder.Services.AddScoped<IMailDal, EfCoreMailDal>();

builder.Services.AddScoped<IStatisticService, StatisticManager>();
builder.Services.AddScoped<IStatisticDal, EfCoreStatisticDal>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Category}/{action=Index}/{id?}");

app.Run();
