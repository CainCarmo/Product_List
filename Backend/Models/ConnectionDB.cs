using System.Data.SqlClient;

namespace Product_List.Backend.Models
{
    public class ConnectionDB
    {
        private readonly string _connectionUrl = @"Data Source=LAPTOP-CQLV0K0J\SQLEXPRESS;Initial Catalog=PRODUCT_LIST;Persist Security Info=True;User ID=sa;Password=77000520Ccos+";

        SqlConnection sqlConnection = new SqlConnection();

        protected ConnectionDB()
        {
            sqlConnection.ConnectionString = _connectionUrl;
        }

        protected SqlConnection Connect()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();

            return sqlConnection;
        }

        protected void Disconnect()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Open)
                sqlConnection.Close();
        }
    }
}