using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmSupervisor : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            loadApplications();
            //lblUserName.Text = Session["userName"].ToString();
           // lblUserName.ToolTip = Session["userName"].ToString() + ", Supervisor [User]";
           // lblTitle1.Text = "Approved Application(s) from Credit Analyst(s) [" + getCount() + "]";
        }

        protected void cmdLogOut_Click1(object sender, EventArgs e)
        {
            LogOut();
        }


        public int getCount()
        {
            int count = 0;
            clsGlobal.sqlString = "Exec supervisorApplicationCount " + int.Parse(Session["userID"].ToString());
            try
            {
                db.openConnection();
                db.comm.CommandText = clsGlobal.sqlString;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    count = int.Parse(db.reader["applicationsCount"].ToString());
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
            return count;
        }


        protected void cmdSearch_Click1(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                try
                {
                    DataSet emptyDs = new DataSet();
                    emptyDs.Reset();
                    gvNewApplications.DataSource = emptyDs.Tables["empty"];
                    //gvApplications.Rows.Clear();

                    DataSet ds = new DataSet();
                    db.openConnection();
                    string sqlString = "EXEC supervisorApplicationSelect " + int.Parse(Session["userID"].ToString()) + ", " + int.Parse(txtSearch.Text.ToString());
                    db.adapter(sqlString).Fill(ds);
                    db.comm.Dispose();
                    if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                    if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                    

                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        lblResult1.Visible = true;
                        lnkResult1.Visible = true;
                        lblResult1.Text = "No Record that Matches your Search [" + txtSearch.Text.ToString() + "]    ";
                        gvNewApplications.Visible = false;
                    }
                    else
                    {
                        gvNewApplications.Visible = true;
                        lblResult1.Visible = true;
                        lnkResult1.Visible = true;
                        lblResult1.Text = "Got your Search";
                        gvNewApplications.DataSource = ds.Tables[0];
                        gvNewApplications.DataBind();
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
            else
            {
                lblResult1.Visible = true;
                lnkResult1.Visible = true;
                lblResult1.Text = "Enter Search term";
                txtSearch.ID = "inputError";
                gvNewApplications.Visible = false;
            }
        }

        protected void lnkResult1_Click(object sender, EventArgs e)
        {
            loadApplications();
            lblResult1.Visible = false;
            lnkResult1.Visible = false;
            txtSearch.Text = "";
        }

        protected void gvNewApplications_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["applicationId"] = gvNewApplications.SelectedRow.Cells[1].Text.ToString();

            Response.Redirect("frmSupervisorApplicationSelect.aspx");
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

        public void loadApplications()
        {
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvNewApplications.DataSource = emptyDs.Tables["empty"];
                //gvApplications.Rows.Clear();

                DataSet ds = new DataSet();
                db.openConnection();
                clsGlobal.sqlString = "Exec supervisorAllapplications " + int.Parse(Session["userID"].ToString());
                db.adapter(clsGlobal.sqlString).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblResult1.Visible = true;
                    lnkResult1.Visible = true;
                    lblResult1.Text = "You have No Record " + txtSearch.Text.ToString();
                    gvNewApplications.Visible = false;
                }
                else
                {
                    gvNewApplications.Visible = true;
                    lblResult1.Visible = false;
                    lnkResult1.Visible = false;
                    gvNewApplications.DataSource = ds.Tables[0];
                    gvNewApplications.DataBind();
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