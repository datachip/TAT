using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TAT
{
    class clsSettings
    {
        clsDatabase db = new clsDatabase();

        public clsSettings()
        {
            try
            {
                string sqlString = "SELECT * FROM tbl_Settings";

                db.openConnection();
                db.comm.CommandText = sqlString;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    clsGlobal.CustomersUploadsPathRaw = db.reader["CustomersUploadsPathRaw"].ToString();
                    clsGlobal.CustomersUploadsPathResized = db.reader["CustomersUploadsPathResized"].ToString();

                    clsGlobal.CustomersUploadsReadPathResized = db.reader["CustomersUploadsReadPathResized"].ToString();

                    clsGlobal.UsersUploadsPathRaw = db.reader["UsersUploadsPathRaw"].ToString();
                    clsGlobal.UsersUploadsPathResized = db.reader["UsersUploadsPathResized"].ToString();
                    clsGlobal.ApplicationsUploadsPathResized = db.reader["ApplicationsUploadsPathResized"].ToString();
                    clsGlobal.ApplicationsUploadsPathRaw = db.reader["ApplicationsUploadsPathRaw"].ToString();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        
    }
            
}