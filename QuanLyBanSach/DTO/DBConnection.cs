using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanSach.DTO
{
    class DBConnection
    {
        const string connectionString = "Data Source=DESKTOP-7217769;Initial Catalog=bookstore-manager;Integrated Security=True";
        protected SqlConnection _connection;
        public DBConnection()
        {
            try
            {
                _connection = new SqlConnection(connectionString);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
