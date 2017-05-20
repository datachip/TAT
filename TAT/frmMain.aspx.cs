using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lnkCurrentUser.Text = Session["firstName"] + " " + Session["lastName"];

            if (int.Parse(Session["departmentID"].ToString()) == 1) // Credit Analyst
            {
                panelBranchesLinks.Visible = false;
                panelDepartmentsLinks.Visible = false;
                panelLoansLinks.Visible = false;
                panelUsersLinks.Visible = false;
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 2)// Supervisor
            {
                
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 3)// CSR
            {
                panelBranchesLinks.Visible = false;
                panelDepartmentsLinks.Visible = false;
                panelLoansLinks.Visible = true;
                panelUsersLinks.Visible = false;
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 6) // Credit Risk Department
            {
                
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 4) //MLC
            {
                
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 5) //CreditAdmin
            {
                
            }
            else if (int.Parse(Session["departmentID"].ToString()) == 7) //Admin
            {
                panelBranchesLinks.Visible = true;
                panelDepartmentsLinks.Visible = true;
                panelLoansLinks.Visible = false;
                panelUsersLinks.Visible = true;
            }
        }

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmLogIn.aspx");
        }

        protected void lnkAddUser_Click(object sender, EventArgs e)
        {
            Session["controlValue"] = "Adding User";
            panelUsers.Visible = true;
            panelDepartments.Visible = false;
            panelNewApplication.Visible = false;
        }

        protected void lnkNewLoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("newApplication.aspx");
        }

        protected void lnkListUsers_Click(object sender, EventArgs e)
        {
            Session["controlValue"] = "Listing Users";

            panelUsers.Visible = true;
            panelDepartments.Visible = false;
            panelNewApplication.Visible = false;
        }
    }
}