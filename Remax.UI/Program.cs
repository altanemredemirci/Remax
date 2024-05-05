using Remax.BLL.Abstract;
using Remax.BLL.Concrete;
using Remax.DAL.Abstract;
using Remax.DAL.Concrete.EfCore;
using Remax.DAL.Concrete.PostgreSQL;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();


//DEPENDENCY INJECTION
builder.Services.AddScoped<IProductService, ProductManager>();             //AddSingleton//AddTransient//Add.Scoped 
builder.Services.AddScoped<IProductDal, EfCoreProductDal>();
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
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
