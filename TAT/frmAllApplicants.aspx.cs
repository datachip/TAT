using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF
{
    public partial class frmAllApplicants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string url;
        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            url = "http://localhost:23457/frmParticulars.aspx";
            Response.Redirect(url);
        }
    }
}