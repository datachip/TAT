﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    
    public partial class frmNewApplication : System.Web.UI.Page
    {
        
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = Session["userName"].ToString();
            lblUserName.ToolTip = Session["userName"].ToString() + ", Credit Service Representative";
           //// populateUsersView();
           // //details();

        }
        string url;
        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            url = "http://localhost:23457/frmChooseCustomer.aspx";
            Response.Redirect(url);

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


    //    public void details()
    //    {

    //        try
    //        {
    //            DataSet emptyDs = new DataSet();
    //            emptyDs.Reset();

    //            DataTable dt = new DataTable();
    //            db.openConnection();
    //            clsGlobal.sqlString = "Exec customerSelect_ApplyLoan ";
    //            db.adapter(clsGlobal.sqlString).Fill(dt);
    //            if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };


    //            //Building an HTML string.
    //            StringBuilder html = new StringBuilder();

    //            Button[] picks = new Button[dt.Rows.Count];
    //            int i = 0;

    //            html.Append("<br/><br/>");
    //            //Table start.
    //            html.Append("<table border = '1' id='derek' class='table'>");

    //            //Building the Header row.
    //            html.Append("<tr>");
    //            foreach (DataColumn column in dt.Columns)
    //            {
    //                html.Append("<th>");
    //                html.Append(column.ColumnName);
    //                html.Append("</th>");
    //            }

    //            html.Append("<th>");
    //            html.Append("Check");
    //            html.Append("</th>");

    //            //Building the Data rows.
    //            foreach (DataRow row in dt.Rows)
    //            {
    //                html.Append("<tr>");
    //                foreach (DataColumn column in dt.Columns)
    //                {
    //                    html.Append("<td>");
    //                    html.Append(row[column.ColumnName]);
    //                    html.Append("</td>");
    //                }

    //                html.Append("<td>");
    //                html.Append("Moris");
    //                html.Append("</td>");

    //                html.Append("</tr>");
    //            }

    //            //Table end.
    //            html.Append("</table>");

    //            //Append the HTML string to Placeholder.
    //            usersPlace.Controls.Add(new Literal { Text = html.ToString() });


                //db.comm.Dispose();
                //if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                //if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
    //            
    //        }
    //        catch (Exception ex)
    //        {

    //        }
    //        finally
    //        {
    //            db.conn.Close();
    //        }
    //    }

    //    public void populateUsersView()
    //    {
    //        try
    //        {
    //            DataSet emptyDs = new DataSet();
    //            emptyDs.Reset();
    //            gvUsers.DataSource = emptyDs.Tables["empty"];

    //            DataSet ds = new DataSet();
    //            db.openConnection();
    //            clsGlobal.sqlString = "Exec customerSelect_ApplyLoan ";
    //            db.adapter(clsGlobal.sqlString).Fill(ds);
    //            if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
    //            db.comm.Dispose();if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
    //            

    //            gvUsers.DataSource = ds.Tables[0];
    //            gvUsers.DataBind();

    //        }
    //        catch (Exception ex)
    //        {

    //        }
    //        finally
    //        {
    //            db.conn.Close();
    //        }
    //    }
    }
}