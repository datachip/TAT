using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TAT;

namespace HF
{
    public partial class frmChooseCustomer : System.Web.UI.Page
    {
        string url;
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadCustomerChoices();
        }

        public void loadCustomerChoices()
        {
            try
            {
                clsGlobal.sqlString = "Select * from tbl_loans_mode";
                db.openConnection();
                db.comm.CommandText = clsGlobal.sqlString;
                db.reader = db.comm.ExecuteReader();
            while (db.reader.Read())
            {
               chooseCustomerList.Items.Add(db.reader["LoaneemodeTitle"].ToString());
            }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                db.conn.Close();
            }
        }
        protected void BtnGo_Click(object sender, EventArgs e)
        {
            if (chooseCustomerList.SelectedValue == "Limited Company")
            {
                url = "http://localhost:23457/frmCompaniesSection.aspx";
                Response.Redirect(url);
            }
            if (chooseCustomerList.SelectedValue == "Employed")
            {
                url = "http://localhost:23457/frmEmployedPersons.aspx";
                Response.Redirect(url);
            }
            if (chooseCustomerList.SelectedValue == "Self Employed")
            {
                url = "http://localhost:23457/frmSelfEmployedPersons.aspx";
                Response.Redirect(url);
            }
        }
    }
}