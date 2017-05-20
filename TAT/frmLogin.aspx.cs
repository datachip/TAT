using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmLogin : System.Web.UI.Page
    {

        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            clsSettings loadSettings = new clsSettings();

            if (!Directory.Exists(clsGlobal.CustomersUploadsPathRaw))
            {
                //Directory.CreateDirectory(clsGlobal.CustomersUploadsPathRaw);
            }

            if (!Directory.Exists(clsGlobal.CustomersUploadsPathResized))
            {
               // Directory.CreateDirectory(clsGlobal.CustomersUploadsPathResized);
            }

            if (!Directory.Exists(clsGlobal.UsersUploadsPathRaw))
            {
               // Directory.CreateDirectory(clsGlobal.UsersUploadsPathRaw);
            }

            if (!Directory.Exists(clsGlobal.UsersUploadsPathResized))
            {
               // Directory.CreateDirectory(clsGlobal.UsersUploadsPathResized);
            }

            if (!Directory.Exists(clsGlobal.ApplicationsUploadsPathResized))
            {
               // Directory.CreateDirectory(clsGlobal.ApplicationsUploadsPathResized);
            }

            if (!Directory.Exists(clsGlobal.ApplicationsUploadsPathRaw))
            {
               // Directory.CreateDirectory(clsGlobal.ApplicationsUploadsPathRaw);
            }
        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            Login();
        }


        /* Login Function */

        public void Login()
        {
            string sqlString = "SELECT * FROM tbl_users WHERE user_name LIKE '" + txtUserName.Text.ToString() + "' AND user_password LIKE '" + txtPassword.Text.ToString() + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sqlString;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    Session["userID"] = db.reader["ID"].ToString();
                    Session["userName"] = db.reader["user_name"].ToString();
                    Session["firstName"] = db.reader["first_name"].ToString();
                    Session["middleName"] = db.reader["middle_name"].ToString();
                    Session["lastName"] = db.reader["last_name"].ToString();
                    Session["departmentID"] = db.reader["department_id"].ToString();

                    Session["controlValue"] = "Add User";

                    Response.Redirect("frmMain.aspx");
                }
                else
                {
                    lblMessage.Visible = true;
                    lnkSupport.Visible = true;
                    lblMessage.Text = "Sorry, Wrong Details Entries or you are Logged in with another Device. Contact Support ";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                db.conn.Close();
            }
        }
    }
}