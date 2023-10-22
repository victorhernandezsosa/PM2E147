using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using PM2E147.Models;
using SQLite;

namespace PM2E147.Controller
{
    public class DBProc
    {
        readonly SQLiteAsyncConnection _connection;

        public DBProc() { }

        public DBProc(string path)
        {
            _connection = new SQLiteAsyncConnection(path);
            _connection.CreateTableAsync<Sitios>().Wait();
        }

        public Task<int> addPerson(Sitios sitio)
        {
            if (sitio.id == 0)
            {
                return _connection.InsertAsync(sitio);
            }
            else
            {
                return _connection.UpdateAsync(sitio);
            }
        }

        public Task<List<Sitios>> listPersonas()
        {
            return _connection.Table<Sitios>().ToListAsync();
        }

        public Task<Sitios> GetPersonID(int id)
        {
            return _connection.Table<Sitios>()
                .Where(p => p.id == id)
                .FirstOrDefaultAsync();
        }

        public Task<int> DeletePersona(Sitios sitio)
        {
            return _connection.DeleteAsync(sitio);
        }
    }
}
