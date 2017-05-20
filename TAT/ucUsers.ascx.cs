using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace TAT
{
    public partial class ucUsers : System.Web.UI.UserControl
    {
        clsDatabase db = new clsDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
            populateBranches();
            populateDepartments();
            

            if (Session["controlValue"].ToString() == "Adding User")
            {
                fillUserPersonalDetails();
            }
            else if (Session["controlValue"].ToString() == "Listing Users")
            {
                listUsers();
            }
        }

        public void populateBranches()
        {

            try
            {
                DataSet ds = new DataSet();
                db.openConnection();
                string sqlString = "SELECT branch_name from tbl_branches WHERE status LIKE 'true'";
                db.adapter(sqlString).Fill(ds, "Branches");
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();


                dlBranches.Items.Clear();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int i = 0;
                    int j = ds.Tables[0].Rows.Count - 1;

                    for (i = 0; i <= j; i++)
                    {
                        dlBranches.Items.Add(ds.Tables["Branches"].Rows[i].ItemArray[0].ToString());
                    }
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

        public void populateDepartments()
        {
            dlDepartments.Items.Clear();
            string sql = "SELECT department_name from tbl_departments WHERE status LIKE 'true'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                while (db.reader.Read())
                {
                    dlDepartments.Items.Add(db.reader["department_name"].ToString());
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

        protected void lnkCustomerContact_Click(object sender, EventArgs e)
        {
            panelPersonaLDetails.Visible = false;
            PanelContacts.Visible = true;
        }

        protected void lnkCustomerOther_Click(object sender, EventArgs e)
        {
            PanelOtherDetails.Visible = true;
            panelPersonaLDetails.Visible = false;
            PanelContacts.Visible = false;
        }

         protected void cmdSubmit_Click(object sender, EventArgs e)
         {
             try
             {
                 //checkContactDetails validation
                 if (string.IsNullOrWhiteSpace(this.txtMobile.Text) || string.IsNullOrWhiteSpace(this.txtEmail.Text))
                 {
                     MessageBox.Show("Fill the blank fields");
                     return;
                 }

                 //checkPersonalDetails validation
                 if (string.IsNullOrWhiteSpace(this.txtIDPassNo.Text) || string.IsNullOrWhiteSpace(this.txtSurName.Text) || string.IsNullOrWhiteSpace(this.txtFirstName.Text) || string.IsNullOrWhiteSpace(this.txtMiddleName.Text) ||
                 string.IsNullOrWhiteSpace(this.txtEmployeeNo.Text) || string.IsNullOrWhiteSpace(this.txtLeaveDateFrom.Text) || string.IsNullOrWhiteSpace(this.txtLeaveDateTo.Text) || string.IsNullOrWhiteSpace(this.dlGender.Text))
                 {
                     MessageBox.Show("Fill the blank fields");
                     return;
                 }

                 //checkOtherDetails validation
                 if (string.IsNullOrWhiteSpace(this.txtMobile.Text) || string.IsNullOrWhiteSpace(this.txtEmail.Text))
                 {
                     MessageBox.Show("Fill the blank fields");
                     return;
                 }

                 string sql = "Exec user_InsertUser "
                     + int.Parse(txtIDPassNo.Text.ToString()) + ", '"
                     + txtSurName.Text.ToString() + "', '"
                     + txtFirstName.Text.ToString() + "', '"
                     + txtMiddleName.Text.ToString() + "', "
                     + int.Parse(txtEmployeeNo.Text.ToString()) + ", '"
                     + txtLeaveDateFrom.Text.ToString() + "', '"
                     + txtLeaveDateTo.Text.ToString() + "', '"
                     + dlGender.SelectedValue.ToString() + "', '"
                     + txtUsername.Text.ToString() + "','"
                     + txtUserpassword.Text.ToString() + "','"
                     + txtMobile.Text.ToString() + "','"
                     + txtEmail.Text.ToString() + "', '"
                     + dlStatus.SelectedValue.ToString() + "','"
                     + dlBranches.SelectedValue.ToString() + "', '"
                     + dlDepartments.SelectedValue.ToString() + "'";
                 db.openConnection();
                 db.comm.CommandText = sql;
                 db.comm.ExecuteNonQuery();

                 MessageBox.Show("User Added Successfully!!");

             }
             catch (Exception ex)
             {
                 MessageBox.Show(ex.Message);
             }
         }

         protected void cmdCompletePersonalDetails_Click(object sender, EventArgs e) //Next fill User Contact Details
         {
             fillUserContactDetails();
         }

         protected void cmdCompleteContactDetails_Click(object sender, EventArgs e) //Next fill User Other Details
         {
             fillUserOtherDetails();
         }

         protected void lnkCustomerPersonal_Click(object sender, EventArgs e)
         {
             fillUserPersonalDetails();
         }

         protected void cmdBackToPersonalDetails_Click(object sender, EventArgs e)
         {
             fillUserPersonalDetails();
         }

         protected void cmdBackToPersonalContacts_Click(object sender, EventArgs e)
         {
             fillUserContactDetails();
         }

         protected void lnkUserPersonalDetails_Click(object sender, EventArgs e)
         {
             fillUserPersonalDetails();
         }

         protected void lnkUserContactDetails_Click(object sender, EventArgs e)
         {
             fillUserContactDetails();
         }

         protected void lnkUserOtherDetails_Click(object sender, EventArgs e)
         {
             fillUserOtherDetails();
         }

         protected void fillUserPersonalDetails()
         {
             panelPersonaLDetails.Visible = true;
             lnkUserPersonalDetails.ForeColor = Color.Red;

             PanelContacts.Visible = false;
             lnkUserContactDetails.ForeColor = Color.Black;

             PanelOtherDetails.Visible = false;
             lnkUserOtherDetails.ForeColor = Color.Black;
         }

         protected void fillUserContactDetails()
         {
             panelPersonaLDetails.Visible = false;
             lnkUserPersonalDetails.ForeColor = Color.Black;

             PanelContacts.Visible = true;
             lnkUserContactDetails.ForeColor = Color.Red;

             PanelOtherDetails.Visible = false;
             lnkUserOtherDetails.ForeColor = Color.Black;
         }

         protected void fillUserOtherDetails()
         {
             panelPersonaLDetails.Visible = false;
             lnkUserPersonalDetails.ForeColor = Color.Black;

             PanelContacts.Visible = false;
             lnkUserContactDetails.ForeColor = Color.Black;

             PanelOtherDetails.Visible = true;
             lnkUserOtherDetails.ForeColor = Color.Red;
         }

         protected void listUsers()
         {
             panelPersonaLDetails.Visible = false;
             lnkUserPersonalDetails.ForeColor = Color.Black;

             PanelContacts.Visible = false;
             lnkUserContactDetails.ForeColor = Color.Black;

             PanelOtherDetails.Visible = false;
             lnkUserOtherDetails.ForeColor = Color.Red;

             panelListUsers.Visible = true;
             listAllUsers();


         }

         public void listAllUsers()
         {
             try
             {
                 DataSet emptyDs = new DataSet();
                 emptyDs.Reset();
                 gvListUsers.DataSource = emptyDs.Tables["empty"];

                 DataSet ds = new DataSet();
                 db.openConnection();
                 string sqlString = "SELECT ID, first_name, middle_name, last_name, user_name FROM tbl_users";
                 db.adapter(sqlString).Fill(ds);
                 db.comm.Dispose();
                 if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                 if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();

                 if (ds.Tables[0].Rows.Count > 0)
                 {
                     gvListUsers.DataSource = null;
                     gvListUsers.Visible = true;
                     gvListUsers.DataSource = ds.Tables[0];
                     gvListUsers.DataBind();
                 }
                 else
                 {
                     MessageBox.Show("No Users Found");
                 }
             }
             catch (Exception ex)
             {
                 MessageBox.Show(ex.Message);
             }
         }


    }
}