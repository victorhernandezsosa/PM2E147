
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using Plugin.Geolocator;
using Xamarin.Forms.Maps;

namespace PM2E147.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageMap : ContentPage
    {

        public Xamarin.Forms.Maps.Map Mapa { get { return mapa; } }
        public PageMap()
        {
            InitializeComponent();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            var conexion = Connectivity.NetworkAccess;
            var locl = CrossGeolocator.Current;

            if (conexion == NetworkAccess.Internet)
            {
                if (locl != null)
                {
                    locl.PositionChanged += Locl_PositionChanged;

                    if (!locl.IsListening)
                    {
                        await locl.StartListeningAsync(TimeSpan.FromSeconds(10), 100);
                    }

                    var posicion = await locl.GetPositionAsync();
                    var mapcenter = new Xamarin.Forms.Maps.Position(posicion.Latitude, posicion.Longitude);

                    mapa.MoveToRegion(MapSpan.FromCenterAndRadius(mapcenter, Distance.FromMiles(0.1)));

                    var pin = new Pin { Type = PinType.Place, Position = mapcenter, Label = "Mi Ubicacion", Address = "Mi Ubicacion" };
                    mapa.Pins.Add(pin);

                    mapa.IsShowingUser = true;
                }
            }
            else
            {
                var posicion = await locl.GetPositionAsync();
                var mapcenter = new Xamarin.Forms.Maps.Position(posicion.Latitude, posicion.Longitude);

                var pin = new Pin { Type = PinType.Place, Position = mapcenter, Label = "Mi Ultima Ubicacion", Address = "Mi Ultima Ubicacion" };

                mapa.Pins.Add(pin);
                mapa.MoveToRegion(new Xamarin.Forms.Maps.MapSpan(mapcenter, 0.1, 0.1));
            }
        }

        private void Locl_PositionChanged(object sender, Plugin.Geolocator.Abstractions.PositionEventArgs e)
        {

            var mapcenter = new Xamarin.Forms.Maps.Position(e.Position.Latitude, e.Position.Longitude);
            mapa.MoveToRegion(new Xamarin.Forms.Maps.MapSpan(mapcenter, 0.1, 0.1));
        }


    }
}