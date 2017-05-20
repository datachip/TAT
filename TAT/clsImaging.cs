using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace TAT
{
    public class clsImaging
    {
        
        public void Get_ResizeImageCustomer(string path, string names) // 120 * 120
        {
            Bitmap image = new Bitmap(Image.FromFile(path));
            int maxWidth = 120;
            int maxHeight = 120;
            //var ratioX = (double)maxWidth;
            //var ratioY = (double)maxHeight;
            //var ratio = Math.Min(ratioX, ratioY);

            var newWidth = (int)(maxWidth);
            var newHeight = (int)(maxHeight);

            var newImage = new Bitmap(newWidth, newHeight);
            Graphics.FromImage(newImage).DrawImage(image, 0, 0, newWidth, newHeight);
            Bitmap bmp = new Bitmap(newImage);

            bmp.Save(clsGlobal.CustomersUploadsPathResized +names + ".jpg");
            //return bmp;
        }


        public void Get_ResizeImageUser(string path, string names) // 120 * 120
        {
            Bitmap image = new Bitmap(Image.FromFile(path));
            int maxWidth = 120;
            int maxHeight = 120;
            //var ratioX = (double)maxWidth;
            //var ratioY = (double)maxHeight;
            //var ratio = Math.Min(ratioX, ratioY);

            var newWidth = (int)(maxWidth);
            var newHeight = (int)(maxHeight);

            var newImage = new Bitmap(newWidth, newHeight);
            Graphics.FromImage(newImage).DrawImage(image, 0, 0, newWidth, newHeight);
            Bitmap bmp = new Bitmap(newImage);

            bmp.Save(clsGlobal.UsersUploadsPathResized + names + ".jpg");
            //return bmp;
        }

    }
}