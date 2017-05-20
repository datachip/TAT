using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TAT
{

    public class clsDatabase
    {
     
        private static string dbServer = @".";
        private static string dataBase = "HousingFinance";
        private static string userName = "sa";
        private static string password = "Morr1s";

        public SqlConnection conn;
        public SqlCommand comm;
        public SqlDataReader reader;


        public void openConnection()
        {
            try
            {
                clsGlobal.connstr = "SERVER=" + dbServer + "; DATABASE=" + dataBase + "; User ID=" + userName + "; Password=" + password + ";";
                conn = new SqlConnection(clsGlobal.connstr);
                conn.Open();

                if (conn.State == ConnectionState.Open)
                {
                    comm = conn.CreateCommand();
                }
                else
                {
                    clsGlobal.errorMessage = "Failed to Connect To Database";
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
        }

        public void executeReader()
        {
            reader = comm.ExecuteReader();
        }

        public SqlDataAdapter adapter(string sqlString)
        {
            SqlDataAdapter adapt = new SqlDataAdapter(sqlString, conn);
            return adapt;
        }
    }
}