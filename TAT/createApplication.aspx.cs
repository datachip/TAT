using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class createApplication : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();

        string[] panels = { "panelMortage", "panelCar", "panelChooseLoanType"};
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblCustomerType.Text = "Customer Type " + Session["customerType"].ToString();

            //displayName();
           // getTemplate();
            CheckParticularsPanelOne();
            CheckParticularsPanelTwo();
            CheckParticularsPanelThree();
        }

        protected void lnkHome_Click(object sender, EventArgs e)
        {
            Session["customerIdOne"] = null;
            Session["customerCorporateIdOne"] = null;
            Session["customerType"] = null;
            Session["customerCorporateNameOne"] = null;
            Session["customerNameOne"] = null;

            Response.Redirect("frmCSR.aspx");
        }

        //public void displayName()
        //{
        //    if (Session["customerType"].ToString() == "Corporate")
        //    {
        //        lblNameApplicant.Text = "Corporate Name: " + Session["customerCorporateNameOne"].ToString();
        //        lblIDApplicant.Text = "Corporate   Registration Number: " + Session["customerCorporateIdOne"].ToString();
        //        // Load Corporate Template
        //    } else if (Session["customerType"].ToString() == "Individual")
        //    {
        //        lblNameApplicant.Text = "Individual Name " + Session["customerNameOne"].ToString();
        //        lblIDApplicant.Text = "Individual   ID | Passport Number " + Session["customerIdOne"].ToString();
        //        // Load Individual Template
        //    }
        //}

        public void getTemplate()
        {
            if (dlLoanType.SelectedValue.ToString() == "Mortage")
            {
                panelChooseLoanType.Visible = false;
                panelMortage.Visible = true;
            }
        }

        public void displayMeAlone(Panel panel)
        {
            foreach (string pane in panels)
            {
                if (panel.ID.ToString() != pane)
                {
                    panel.Visible = false;
                }
                else if(panel.ID.ToString() == pane)
                {
                    panel.Visible = true;
                }
            }
        }

        protected void cmdCreateMortageApplication_Click(object sender, EventArgs e)
        {
            //createMortage();
        }

        

        protected void cmdGo_Click(object sender, EventArgs e)
        {
            getTemplate();
        }

        
        protected void lnkCustomerContact_Click(object sender, EventArgs e)
        {
            PanelParticularsOne.Visible = false;
            PanelParticularsTwo.Visible = true;
            PanelParticularsThree.Visible = false;

        }

        protected void lnkCustomerOther_Click(object sender, EventArgs e)
        {
            PanelParticularsOne.Visible = false;
            PanelParticularsTwo.Visible = false;
            PanelParticularsThree.Visible = true;

            lnkPanelOne.CssClass = "";
            lnkPanelTwo.CssClass = "selected";
            lnkPanelThree.CssClass = "";
        }
        public int AddMortage()
        {
            int flag = 0;
            try
            {
           

            string sql = "Exec mortageInsert '" + Session["plotNumber"].ToString() + "', '" + Session["EstateTelephone"].ToString() + "', '" + Session["Estatename"].ToString() + "','" + Session["EstateNumber"].ToString() + "', '" + Session["Town"].ToString() + "', '" + Session["occupierName"].ToString() + "', '" + Session["occupierAddress"].ToString() + "', '" + Session["OccupierTel"].ToString() + "', '" + Session["whereObtained"].ToString() + "', '" + Session["OccupantAgreement"].ToString() + "', '" + Session["purchsePrice"].ToString() + "', '" + Session["personalsavings"].ToString() + "','" + Session["disposalInvest"].ToString() + "'," + float.Parse(Session["amountAlresdySpent"].ToString()) + "," + float.Parse(Session["other"].ToString()) + "," + float.Parse(Session["TotalCash"].ToString()) + ",'" + Session["createsecond"].ToString() + "','" + Session["reason"].ToString() + "','" + Session["mortage"].ToString() + "','" + Session["property"].ToString() + "','" + Session["termexpired"].ToString() + "','" + Session["outStandbalance"].ToString() + "'," + float.Parse(Session["ratableValue"].ToString()) + ",'" + Session["propertymortaged"].ToString() + "','" + Session["Titledeed"].ToString() + "','" + Session["propertyguesthouse"].ToString() + "','" + Session["walls"].ToString() + "','" + Session["roof"].ToString() + "','" + Session["municipality"].ToString() + "'"; 

         
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    flag = int.Parse(db.reader["result"].ToString());
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
            return flag;


        }
        public bool CheckParticularsPanelOne()
        {
            bool check = false;
            if (string.IsNullOrWhiteSpace(this.txtPlotNumber.Text) || string.IsNullOrWhiteSpace(this.txtEstateStateTelephone.Text) || string.IsNullOrWhiteSpace(this.txtEstate.Text) ||
               string.IsNullOrWhiteSpace(this.txtNumber.Text) || string.IsNullOrWhiteSpace(this.txtTown.Text) || string.IsNullOrWhiteSpace(this.txtNameofOccuppier.Text) || string.IsNullOrWhiteSpace(this.txtAddressOccupier.Text)
                || string.IsNullOrWhiteSpace(this.txtTelephoneNoOccupier.Text) || string.IsNullOrWhiteSpace(this.txtWherekeysObtainedFrom.Text) || string.IsNullOrWhiteSpace(this.DropOccupantAgree.Text) || string.IsNullOrWhiteSpace(this.txtPurchasePrice.Text) || string.IsNullOrWhiteSpace(this.txtPersonalSavings.Text)
                || string.IsNullOrWhiteSpace(this.txtDispoasalInvestments.Text) || string.IsNullOrWhiteSpace(this.txtAmountAlreadySpent.Text) || string.IsNullOrWhiteSpace(this.txtOther.Text) || string.IsNullOrWhiteSpace(this.txtTotalKshs.Text))
            {
                check = false;
            }
            else
            {
                Session["plotNumber"] = txtPlotNumber.Text;
                Session["EstateTelephone"] = txtEstateStateTelephone.Text;
                Session["Estatename"] = txtEstate.Text;
              
                Session["EstateNumber"] = txtNumber.Text;
                Session["Town"] = txtTown.Text;
                Session["occupierName"] = txtNameofOccuppier.Text;

                Session["occupierAddress"] = txtAddressOccupier.Text;
                Session["OccupierTel"] = txtTelephoneNoOccupier.Text;
                Session["whereObtained"] = txtWherekeysObtainedFrom.Text;
                Session["OccupantAgreement"] = DropOccupantAgree.Text;


                Session["purchsePrice"] = txtPurchasePrice.Text;
                Session["personalsavings"] = txtPersonalSavings.Text;
                Session["disposalInvest"] = txtDispoasalInvestments.Text;
                Session["amountAlresdySpent"] = txtAmountAlreadySpent.Text;
                Session["other"] = txtOther.Text;
                Session["TotalCash"] = txtTotalKshs.Text;
                check = true;

            }
            return check;

        }
        public bool CheckParticularsPanelThree()
        {
            bool check = true;
            if (string.IsNullOrWhiteSpace(this.drpCreateSecondMortage.Text) || string.IsNullOrWhiteSpace(this.txtReason.Text) || string.IsNullOrWhiteSpace(this.txtMortagee.Text) ||
                string.IsNullOrWhiteSpace(this.DrpPropertyFreehold.Text) || string.IsNullOrWhiteSpace(this.txtTermYrsUnexpired.Text) || string.IsNullOrWhiteSpace(this.txtOutstandingRoadSewageCharges.Text) ||

                string.IsNullOrWhiteSpace(this.txtRatableValue.Text) || string.IsNullOrWhiteSpace(this.DrpListIsPropMorg.Text) || string.IsNullOrWhiteSpace(this.txtWhereTheTitleDeeds.Text) ||
                string.IsNullOrWhiteSpace(this.DrpListGuestHouse.Text) || string.IsNullOrWhiteSpace(this.txtTheWalls.Text) || string.IsNullOrWhiteSpace(this.txtTheRoof.Text) || string.IsNullOrWhiteSpace(this.txtTownshipmMnicipality.Text))
            {
                check = false;
            }
            else
            {

                Session["ratableValue"] = txtRatableValue.Text;
                Session["propertymortaged"] = DrpListIsPropMorg.Text;
                Session["Titledeed"] = txtWhereTheTitleDeeds.Text;
                Session["propertyguesthouse"] = DrpListGuestHouse.Text;
                Session["walls"] = txtTheWalls.Text;
                Session["roof"] = txtTheRoof.Text;
                Session["municipality"] = txtTownshipmMnicipality.Text;

                check = true;
            }
            return check;
        }
        public bool CheckParticularsPanelTwo()
        {
            bool check = false;
            if (string.IsNullOrWhiteSpace(this.drpCreateSecondMortage.Text) || string.IsNullOrWhiteSpace(this.txtReason.Text) || string.IsNullOrWhiteSpace(this.txtMortagee.Text) ||
                 string.IsNullOrWhiteSpace(this.DrpPropertyFreehold.Text) || string.IsNullOrWhiteSpace(this.txtTermYrsUnexpired.Text) || string.IsNullOrWhiteSpace(this.txtOutstandingRoadSewageCharges.Text))
            {
                check = false;
            }
            else
            {
                Session["createsecond"] = drpCreateSecondMortage.Text;
                Session["reason"] = txtReason.Text;
                Session["mortage"] = txtMortagee.Text;
                Session["property"] = DrpPropertyFreehold.Text;
                Session["termexpired"] = txtTermYrsUnexpired.Text;
                Session["outStandbalance"] = txtOutstandingRoadSewageCharges.Text;
              
                
                check = true;

            }
            return check;
        }

        protected void lnkCustomerPersonal_Click(object sender, EventArgs e)
        {
            PanelParticularsOne.Visible = true;
            PanelParticularsTwo.Visible = false;
            PanelParticularsThree.Visible = false;
            lnkPanelOne.CssClass = "selected";
            lnkPanelTwo.CssClass = "";
            lnkPanelThree.CssClass = "";


        }
      


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //panelChooseLoanType.Visible = false;
            AddMortage();
        }
        //public Boolean SaveFile(FileUpload file, String userDetails)
        //{
        //    Boolean flag = false;
        //    // Specify the path to save the uploaded file to.
        //    string savePath = clsGlobal.MortageUploadsPathRaw; ;

        //    // Get the name of the file to upload.
        //    string fileName = file.FileName;

        //    // Create the path and file name to check for duplicates.
        //    string pathToCheck = savePath + fileName;

        //    // Create a temporary file name to use for checking duplicates.
        //    string tempfileName = "";

        //    // Check to see if a file already exists with the
        //    // same name as the file to upload.        
        //    if (System.IO.File.Exists(pathToCheck))
        //    {
        //        int counter = 2;
        //        while (System.IO.File.Exists(pathToCheck))
        //        {
        //            // if a file with this name already exists,
        //            // prefix the filename with a number.
        //            tempfileName = counter.ToString() + fileName;
        //            pathToCheck = savePath + tempfileName;
        //            counter++;
        //        }

        //        fileName = tempfileName;

        //        flag = true;
        //        //// Notify the user that the file name was changed.
        //        //UploadStatusLabel.Text = "A file with the same name already exists." +
        //        //    "<br />Your file was saved as " + fileName;
        //    }
        //    else
        //    {
        //        flag = true;
        //    }

        //    FileInfo f1 = new FileInfo(fileName);
        //    // Append the name of the file to upload to the path.
        //    //
        //    savePath += string.Format("{0}{1}", userDetails, f1.Extension);
        //    //savePath += "derek_" + fileName;

        //    // Call the SaveAs method to save the uploaded
        //    // file to the specified directory.

        //    //ScaleImage(file, 120, 120);

        //    file.SaveAs(savePath);

        //    string myFileLocation = clsGlobal.MortageUploadsPathRaw +userDetails + f1.Extension;
        //    new clsImaging().Get_ReportValuationScan(myFileLocation, userDetails);
        //    return flag;
        //}


       
    }
}