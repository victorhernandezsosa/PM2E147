using System;
using System.Globalization;
using System.IO;
using Xamarin.Forms;

namespace PM2E147.Controller
{
    public class ByteArrayImage : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            ImageSource image = null;

            if (value != null)
            {
                byte[] bytes = (byte[])value;
                var stream = new MemoryStream(bytes);
                image = ImageSource.FromStream(() => stream);
            }

            return image;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
