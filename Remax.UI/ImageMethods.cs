using Humanizer;
using Microsoft.AspNetCore.Components.QuickGrid;
using System.Xml;
using System;

namespace Remax.UI
{
    public class ImageMethods
    {
        private static string GenerateUniqueName(string fileExtension =".png")
        {
            var timeStamp = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            var uniqueName = $"{timeStamp}{fileExtension}";

            return uniqueName;
        }

        internal static async Task<string> UploadImage(IFormFile file)
        {
            string newFileName = GenerateUniqueName();
            var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\realestate\\img", newFileName);

            using(var stream = new FileStream(path, FileMode.Create))
            {
                await file.CopyToAsync(stream); 
            }

            return newFileName;
        }

        internal static void DeleteImage(string fileName)
        {
            var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\realestate\\img", fileName);
            if (File.Exists(path))
            {
               File.Delete(path);
            }
        }
    }
}
