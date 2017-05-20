using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace TAT
{
    public partial class frmFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = Path.Combine(Server.MapPath("~/files"), FileUpload1.FileName);
                FileUpload1.SaveAs(fileName);
            }
        }
    }
}