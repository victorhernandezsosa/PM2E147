using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plugin.Geolocator;
using Plugin.Media;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace PM2E147.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageSitios : ContentPage
    {
        Plugin.Media.Abstractions.MediaFile photo = null;
        public PageSitios()
        {
            InitializeComponent();

            VerificarPermisos();
        }

        private async void VerificarPermisos()
        {
            var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();

            if (status != PermissionStatus.Granted)
            {
                status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
            }

            if (status == PermissionStatus.Granted)
            {
                ObtenerUbicacionActual();
            }
            else
            {
                
            }
        }

        private async Task<bool> CheckPermissions()
        {
            var status = await Permissions.CheckStatusAsync<Permissions.StorageWrite>();

            if (status != PermissionStatus.Granted)
            {
                status = await Permissions.RequestAsync<Permissions.StorageWrite>();
            }

            return status == PermissionStatus.Granted;
        }

        private async void ObtenerUbicacionActual()
        {
            var locator = CrossGeolocator.Current;
            locator.DesiredAccuracy = 50; 

            var position = await locator.GetPositionAsync();

            txtlatitud.Text = position.Latitude.ToString();
            txtlongi.Text = position.Longitude.ToString();
        }

        public String ImageToBase64()
        {
            if (photo != null)
            {
                using (MemoryStream memory = new MemoryStream())
                {
                    Stream stream = photo.GetStream();
                    stream.CopyTo(memory);
                    byte[] data = memory.ToArray();
                    String base64 = Convert.ToBase64String(data);
                    return base64;
                }
            }

            return null;
        }

        public byte[] ImageToArrayByte()
        {
            if (photo != null)
            {
                using (MemoryStream memory = new MemoryStream())
                {
                    Stream stream = photo.GetStream();
                    stream.CopyTo(memory);
                    byte[] data = memory.ToArray();

                }
            }

            return null;
        }

        private async void btnfoto_Clicked(object sender, EventArgs e)
        {
            photo = await CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
            {
                Directory = "MIALBUM",
                Name = "Foto.jpg",
                SaveToAlbum = true
            });

            if (photo != null)
            {
                foto.Source = ImageSource.FromStream(() => { return photo.GetStream(); });
            }
            else
            {
                await DisplayAlert("Alerta", "No se pudo capturar la foto.", "OK");
            }
        }

        private async void btnproceso_Clicked(object sender, EventArgs e)
        {
            bool hasWritePermission = await CheckPermissions(); 

            if (hasWritePermission)
            {
                if (string.IsNullOrEmpty(txtdesc.Text) || photo == null)
                {
                    await DisplayAlert("Alerta", "Por favor, ingrese una descripción y seleccione una foto.", "OK");
                }
                else
                {
                    var site = new Models.Sitios
                    {
                        Latitud = txtlatitud.Text,
                        Longitud = txtlongi.Text,
                        Descripcion = txtdesc.Text,
                        ImagenPath = ImageToArrayByte()
                    };

                    if (await App.Instancia.addPerson(site) > 0)
                    {
                        await DisplayAlert("Aviso", "Sitio Agregado", "OK");
                    }
                    else
                    {
                        await DisplayAlert("Alerta", "Ocurrió un error al agregar el sitio.", "OK");
                    }
                }
            }
            else
            {
                await DisplayAlert("Alerta", "La aplicación no tiene permisos para escribir en el almacenamiento.", "OK");
            }
        }


        private async void btnlist_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Views.PageListSitios());
        }

        private  void btnclose_Clicked(object sender, EventArgs e)
        {
            var closer = DependencyService.Get<ICloseApplication>();
            closer?.closeApplication();
        }
    }
}