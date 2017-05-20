using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmCSR : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //lblUserName.Text = Session["userName"].ToString();
           // lblUserName.ToolTip = Session["userName"].ToString() + ", Credit Service Representative [User]";
        }

        protected void cmdLogOut_Click1(object sender, EventArgs e)
        {
            LogOut();
        }

        public void LogOut()
        {
            string sqlString = "Exec userLogout " + int.Parse(Session["userID"].ToString());
            try
            {
                db.openConnection();
                db.comm.CommandText = sqlString;
                db.comm.ExecuteNonQuery();

                Response.Redirect("frmLogin.aspx");

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

        protected void cmdNewApplicaion_Click(object sender, EventArgs e)
        {
            Response.Redirect("newApplication.aspx");
        }

        protected void cmdNewCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("newCustomer.aspx");
            //Response.Redirect("frmNewApplication.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmFiles.aspx");
        }

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            LogOut();
        }
    }
}