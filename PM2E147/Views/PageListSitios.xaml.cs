using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using PM2E147.Models;


namespace PM2E147.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageListSitios : ContentPage
    {
        public PageListSitios()
        {
            InitializeComponent();
        }

        private async void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Views.PageSitios());
        }

        private async void list_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           
        }

        protected async override void OnAppearing()
        {
            base.OnAppearing();
            list.ItemsSource = await App.Instancia.listPersonas();

        }

        private async void Eliminar_Clicked(object sender, EventArgs e)
        {
            if (list.SelectedItem != null)
            {
                bool confirmarEliminar = await DisplayAlert("Confirmar", "¿Estás seguro de que deseas eliminar este sitio?", "Sí", "No");

                if (confirmarEliminar)
                {
                    var sitioSeleccionado = list.SelectedItem as Sitios;
                    await App.Instancia.DeletePersona(sitioSeleccionado);

                    list.ItemsSource = await App.Instancia.listPersonas();

                    list.SelectedItem = null;
                }
            }
            else
            {
                await DisplayAlert("Alerta", "Por favor, selecciona un sitio para eliminar.", "OK");
            }
        }

        private async void VerMapa_Clicked(object sender, EventArgs e)
        {
            var respuesta = await DisplayAlert("Ubicación", "¿Desea ver su ubicación en el mapa?", "Sí", "No");

            if (respuesta)
            {
                var selectedItem = list.SelectedItem as Sitios;
                if (selectedItem != null)
                {
                    double latitud = Convert.ToDouble(selectedItem.Latitud);
                    double longitud = Convert.ToDouble(selectedItem.Longitud);
                    string desc = selectedItem.Descripcion;

                    var ubicacion = new Xamarin.Forms.Maps.Position(latitud, longitud);
                    var pin = new Xamarin.Forms.Maps.Pin
                    {
                        Position = ubicacion,
                        Label = desc
                    };

                    var mapaPage = new PageMap();
                    mapaPage.Mapa.Pins.Add(pin);

                    await Navigation.PushAsync(mapaPage);
                }
                else
                {
                    await DisplayAlert("Error", "Seleccione un sitio de la lista.", "OK");
                }
            }
        }
    }
}