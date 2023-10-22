using System;
using System.Collections.Generic;
using System.Text;
using SQLite;

namespace PM2E147.Models
{
    public class Sitios
    {
        [PrimaryKey, AutoIncrement]
        public int id { get; set; }
        public byte[] ImagenPath { get; set; }
        public string Latitud { get; set; }
        public string Longitud { get; set; }
        [MaxLength(100)]
        public string Descripcion { get; set; }


    }
}
