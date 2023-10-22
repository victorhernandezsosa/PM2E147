using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.IO;
using PM2E147.Views;

namespace PM2E147
{
    public partial class App : Application
    {

        static Controller.DBProc dbProc;

        public static Controller.DBProc Instancia
        {
            get
            {
                if (dbProc == null)
                {
                    string dbname = "SitioDB.db3";
                    String dbpath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
                    String dbfull = Path.Combine(dbpath, dbname);
                    dbProc = new Controller.DBProc(dbfull);
                }

                return dbProc;
            }
        }

        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new PageListSitios());

        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
