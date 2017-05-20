using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmCreditAnalystApplicationSelect1 : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = Session["userName"].ToString();
            lblUserName.ToolTip = Session["userName"].ToString() + ", Credit Risk [User]";
            lblTitle1.Text = "Application Selected";

            getDetails();
        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            submitAction();
            Response.Redirect("frmCreditAnalyst.aspx");
        }

        public void submitAction()
        {
            clsGlobal.sqlString = "Exec creditAnalystApplicationApprove " + int.Parse(Session["applicationId"].ToString()) + ", " + int.Parse(Session["userID"].ToString()) + ", '" + txtReason.Text + "','" + "2012-02-08" + "', '" + "Approved" + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = clsGlobal.sqlString;
                db.comm.ExecuteNonQuery();
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

        public void getDetails()
        {
            clsGlobal.sqlString = "Exec creditAnalystApplicationSelect " + int.Parse(Session["userID"].ToString()) + ", " + int.Parse(Session["applicationId"].ToString());
            try
            {
                db.openConnection();
                db.comm.CommandText = clsGlobal.sqlString;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    txtApplicationId.Text = db.reader["Entries"].ToString();
                    txtLoanType.Text = "Self Employed";
                    txtLoanRequired.Text = "100, 000";
                    txtLoanPurpose.Text = "Dietrich told NBC's Frances Rivera for TODAY Sunday that for those six months, she loved it, every minute of it."
                    + "Until that day when her car was stolen from her office parking lot. Dietrich said police gave her little hope, and told her that her beloved Corvette was probably gone for good. "
                    + " I was very sad, she said. It took me a couple years to get over that. Then, last October, a call came out of the blue to the Georgia"
                    + " native, telling her that her car had been found in North Carolina. Because ";
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


        protected void cmdLogOut_Click1(object sender, EventArgs e)
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

        protected void cmdReject_Click(object sender, EventArgs e)
        {
            clsGlobal.sqlString = "Exec creditAnalystApplicationApprove " + int.Parse(Session["applicationId"].ToString()) + ", " + int.Parse(Session["userID"].ToString()) + ", '" + txtReason.Text + "','" + "2012-02-08" + "', '" + "Rejected" + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = clsGlobal.sqlString;
                db.comm.ExecuteNonQuery();
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