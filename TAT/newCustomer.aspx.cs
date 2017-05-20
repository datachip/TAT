using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class newCustomer : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["directorOneID"] != null)
            {
                appendApplicantDetails(Session["directorOneID"].ToString());
            }
            if (Session["directorTwoID"] != null)
            {
                appendApplicantDetails(Session["directorTwoID"].ToString());
            }

            if (Session["directorThreeID"] != null)
            {
                appendApplicantDetails(Session["directorThreeID"].ToString());
            }

            populateBranches();
            populateDepartments();
        }

        protected void cmdCompletePersonalDetails_Click(object sender, EventArgs e)
        {
            StringBuilder html = new StringBuilder();

            if (checkPersonalDetails() == true)
            {
                goToContactDetails();
            }
            else
            {
                MessageBox.Show("Fill All Personal Details First!");
            }
        }

        public void goToContactDetails()
        {
            lnkCustomerContact.CssClass = "selected";
            lnkCustomerPersonal.CssClass = "";
            panelOne.Visible = false;
            panelTwo.Visible = true;
        }

        protected void lnkCustomerPersonal_Click(object sender, EventArgs e)
        {
            panelOne.Visible = true;
            lnkCustomerPersonal.CssClass = "selected";
            panelTwo.Visible = false;
            lnkCustomerContact.CssClass = "";
            panelThree.Visible = false;
            lnkCustomerOther.CssClass = "";
        }

        protected void cmdCompleteContactDetails_Click(object sender, EventArgs e)
        {
            StringBuilder html = new StringBuilder();

            if (checkContactDetails() == true)
            {
                goToOtherDetails();
            }
            else
            {
                MessageBox.Show("Fill All Contact Details First!");
            }
        }

        public void goToOtherDetails()
        {
            lnkCustomerOther.CssClass = "selected";
            lnkCustomerPersonal.CssClass = "";
            lnkCustomerContact.CssClass = "";
            panelOne.Visible = false;
            panelThree.Visible = true;
            panelTwo.Visible = false;
        }

        protected void lnkCustomerContact_Click(object sender, EventArgs e)
        {

            if (checkPersonalDetails() == true)
            {
                goToContactDetails();
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        public bool checkPersonalDetails()
        {
            bool flag = false;

            if (string.IsNullOrWhiteSpace(this.txtSurName.Text) || string.IsNullOrWhiteSpace(this.txtFirstName.Text) || string.IsNullOrWhiteSpace(this.txtMiddleName.Text) ||
                string.IsNullOrWhiteSpace(this.txtDateOfBirth.Text) || string.IsNullOrWhiteSpace(this.txtIDPassNo.Text))
            {
                flag = false;
            }
            else
            {
                Session["surName"] = txtSurName.Text.ToString();
                Session["firstName"] = txtFirstName.Text.ToString();
                Session["middleName"] = txtMiddleName.Text.ToString();
                Session["dob"] = txtDateOfBirth.Text.ToString();
                Session["idpassport"] = txtIDPassNo.Text.ToString();
                Session["gender"] = dlGender.SelectedValue.ToString();
                Session["maritalStatus"] = dlMaritalStatus.SelectedValue.ToString();

                Session["date"] = DateTime.Now;

                if (fuPassportIDScan.HasFile)
                {
                    SaveFile(fuPassportIDScan, Session["surName"].ToString() + "_" + Session["idpassport"].ToString());
                }
                else
                {
                    
                }
                

                flag = true;
            }

            return flag;
        }

        public void ResetAdd_IndividualCustomer()
        {
            Session["surName"] = null;
            Session["firstName"] = null;
            Session["middleName"] = null;
            Session["dob"] = null;
            Session["idpassport"] = null;
            Session["gender"] = null;
            Session["maritalStatus"] = null;

            Session["mobile"] = null;
            Session["email"] = null;
            Session["address"] = null;

            Session["nationality"] = null;
            Session["branch"] = null;
            Session["department"] = null;

            txtSurName.Text = "";
            txtFirstName.Text = "";
            txtMiddleName.Text = "";
            txtDateOfBirth.Text = "";
            txtIDPassNo.Text = "";

            txtEmail.Text = "";
            txtMobile.Text = "";
            txtAdrress.Text = "";
        }

        public bool checkContactDetails()
        {
            bool flag = false;

            if (string.IsNullOrWhiteSpace(this.txtMobile.Text) || string.IsNullOrWhiteSpace(this.txtEmail.Text) || string.IsNullOrWhiteSpace(this.txtAdrress.Text))
            {
                flag = false;
            }
            else
            {
                Session["mobile"] = txtMobile.Text.ToString();
                Session["email"] = txtEmail.Text.ToString();
                Session["address"] = txtAdrress.Text.ToString();

                flag = true;
            }

            return flag;
        }

        public bool checkOtherDetails()
        {
            bool flag = false;

            
                Session["nationality"] = dlNationality.SelectedValue.ToString();
                Session["branch"] = dlBranches.SelectedValue.ToString();
                Session["department"] = dlDepartments.SelectedValue.ToString();

                flag = true;
            

            return flag;
        }

        protected void cmdCompleteAllDetails_Click(object sender, EventArgs e)
        {
            if (checkOtherDetails() == true)
            {
                if (AddCustomer() == 1)
                {
                    MessageBox.Show("Success! Adding Customer \nName: " + Session["surName"].ToString() + "\nID | Passport: " + Session["idpassport"].ToString() + "\nEmail: " + Session["email"].ToString());
                    
                    /*populateAllCustomers();
                    paneAllCustomers.Visible = true;
                    panelAddCustomer.Visible = false;
                    panelCustomerSelect.Visible = false;*/

                    panelAddCustomer.Visible = true;
                    panelOne.Visible = true;
                    panelTwo.Visible = false;
                    panelThree.Visible = false;

                    lnkCustomerOther.CssClass = "";
                    lnkCustomerPersonal.CssClass = "selected";
                    lnkCustomerContact.CssClass = "";

                    ResetAdd_IndividualCustomer();
                }
                else
                {
                    MessageBox.Show("Adding Customer Failed!");
                }
            }
            else
            {
                MessageBox.Show("Fill Other Details First!");
            }
        }

        public int AddCustomer()
        {
            int flag = 0;

            string sql = "Exec customerAddIndividualCustomer '" + Session["surName"].ToString() + "', '" + Session["firstName"].ToString() + "', '" + Session["middleName"].ToString() + "', '" + Session["dob"].ToString() + "', '" + Session["idpassport"].ToString() + "', '" + Session["gender"].ToString() + "', '" + Session["maritalStatus"].ToString() + "', '" + Session["mobile"].ToString() + "', '" + Session["email"].ToString() + "', '" + Session["address"].ToString() + "', '" + Session["nationality"].ToString() + "', '" + Session["date"].ToString() + "', '" + Session["branch"].ToString() + "'," + int.Parse(Session["userID"].ToString()) + "";

            try
            {
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            paneAllCustomers.Visible = true;
            panelAddCustomer.Visible = false;
            panelCustomerSelect.Visible = false;
            panelChooseCustomerType.Visible = false;
            panelAddCorporate.Visible = false;

            LinkButton1.CssClass = "active";
            LinkButton2.CssClass = "";
            populateAllCustomers();
        }

        public void populateAllCustomers()
        {
            string sql;
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvAllCustomers.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                sql = "Exec customersSelectAll";
                db.adapter(sql).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblResult1.Visible = true;
                    lnkResult1.Visible = true;
                    lblResult1.Text = "You have No Record " + txtSearch.Text.ToString();
                    gvAllCustomers.Visible = false;
                }
                else
                {
                    gvAllCustomers.Visible = true;
                    lblResult1.Visible = false;
                    lnkResult1.Visible = false;
                    gvAllCustomers.DataSource = ds.Tables[0];
                    gvAllCustomers.DataBind();
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

        protected void gvAllCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["customerId"] = gvAllCustomers.SelectedRow.Cells[2].Text.ToString();

            paneAllCustomers.Visible = false;
            panelCustomerSelect.Visible = true;

            populateCustomerDetails();
        }


        public void populateCustomerDetails()
        {
            string sql = "Exec customerSelectCustomer '" + Session["customerId"].ToString() + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    txtSelectSurName.Text = db.reader["Surname"].ToString();
                    txtSelectFirstName.Text = db.reader["FirstName"].ToString();
                    txtSelectMiddleName.Text = db.reader["MiddleName"].ToString();

                    txtSelectDOB.Text = db.reader["DOB"].ToString();
                    dlSelectMaritalStatus.SelectedValue = db.reader["MaritalStatus"].ToString();
                    dlSelectGender.SelectedValue = db.reader["Gender"].ToString();

                    txtSelectEmail.Text = db.reader["Email"].ToString();
                    txtSelectMobile.Text = db.reader["Mobile"].ToString();
                    txtSelectAddress.Text = db.reader["Address"].ToString();

                    dlSelectNationality.SelectedValue = db.reader["Nationality"].ToString();

                    customerImage.ImageUrl = clsGlobal.CustomersUploadsPathResized +db.reader["Surname"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg";
                    
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            panelChooseCustomerType.Visible = false;

            paneAllCustomers.Visible = false;
            panelAddCustomer.Visible = false;
            panelCustomerSelect.Visible = false;

            panelOne.Visible = false;
            panelTwo.Visible = false;
            panelThree.Visible = false;

            lnkCustomerPersonal.CssClass = "selected";
            lnkCustomerOther.CssClass = "";
            lnkCustomerContact.CssClass = "";

            LinkButton2.CssClass = "active";
            LinkButton1.CssClass = "";

            reset();
        }


        public void reset()
        {
            txtSurName.Text = "";
            txtFirstName.Text = "";
            txtMiddleName.Text = "";

            txtDateOfBirth.Text = "";
            txtIDPassNo.Text = "";

            dlGender.SelectedIndex = 0;
            dlMaritalStatus.SelectedIndex = 0;

            txtMobile.Text = "";
            txtEmail.Text = "";
            txtAdrress.Text = "";

            dlNationality.SelectedIndex = 0;

        }

        public Boolean SaveFile(FileUpload file, String userDetails)
        {
            Boolean flag = false;
            // Specify the path to save the uploaded file to.
            string savePath = clsGlobal.CustomersUploadsPathRaw; 

            // Get the name of the file to upload.
            string fileName = file.FileName;

            // Create the path and file name to check for duplicates.
            string pathToCheck = savePath + fileName;

            // Create a temporary file name to use for checking duplicates.
            string tempfileName = "";

            // Check to see if a file already exists with the
            // same name as the file to upload.        
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    // if a file with this name already exists,
                    // prefix the filename with a number.
                    tempfileName = counter.ToString() + fileName;
                    pathToCheck = savePath + tempfileName;
                    counter++;
                }

                fileName = tempfileName;

                flag = true;
                //// Notify the user that the file name was changed.
                //UploadStatusLabel.Text = "A file with the same name already exists." +
                //    "<br />Your file was saved as " + fileName;
            }
            else
            {
                flag = true;
            }
            
            FileInfo f1 = new FileInfo(fileName);
            // Append the name of the file to upload to the path.
            //
            savePath += string.Format("{0}{1}", userDetails, f1.Extension);
            //savePath += "derek_" + fileName;

            // Call the SaveAs method to save the uploaded
            // file to the specified directory.

            //ScaleImage(file, 120, 120);

            file.SaveAs(savePath);

            string myFileLocation = clsGlobal.CustomersUploadsPathRaw + userDetails + f1.Extension;
            new clsImaging().Get_ResizeImageCustomer(myFileLocation, userDetails);
            return flag;
        }

        public void DeleteCustomer()
        {
            string sql = "Exec customerDeleteCustomer '" + Session["customerId"].ToString() + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
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

        public void populateBranches()
        {
            dlBranches.Items.Clear();
            string sql = "SELECT branch_name from tbl_branches";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                while (db.reader.Read())
                {
                    dlBranches.Items.Add(db.reader["branch_name"].ToString());
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
            string sql = "SELECT department_name from tbl_departments";
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
        protected void cmdDelet_Click(object sender, EventArgs e)
        {
            DeleteCustomer();

            populateAllCustomers();
            paneAllCustomers.Visible = true;
            panelCustomerSelect.Visible = false;
        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                try
                {
                    DataSet emptyDs = new DataSet();
                    emptyDs.Reset();
                    gvAllCustomers.DataSource = emptyDs.Tables["empty"];
                    //gvApplications.Rows.Clear();

                    DataSet ds = new DataSet();
                    db.openConnection();
                    string sql = "Exec customerSelectCustomer '" + txtSearch.ToString() + "'";
                    db.adapter(sql).Fill(ds);
                    db.comm.Dispose();
                    if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                    if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                    

                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        lblResult1.Visible = true;
                        lnkResult1.Visible = true;
                        lblResult1.Text = "No Record that Matches your Search [" + txtSearch.Text.ToString() + "]    ";
                        gvAllCustomers.Visible = false;
                    }
                    else
                    {
                        gvAllCustomers.Visible = true;
                        lblResult1.Visible = true;
                        lnkResult1.Visible = true;
                        lblResult1.Text = "Got your Search";
                        gvAllCustomers.DataSource = ds.Tables[0];
                        gvAllCustomers.DataBind();
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
                gvAllCustomers.Visible = false;
            }
        }

        protected void lnkResult1_Click(object sender, EventArgs e)
        {
            populateAllCustomers();
            lblResult1.Visible = false;
            lnkResult1.Visible = false;
            txtSearch.Text = "";
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCSR.aspx");
        }

        protected void cmdClose_Click(object sender, EventArgs e)
        {
            populateAllCustomers();
            paneAllCustomers.Visible = true;
            panelAddCustomer.Visible = false;
            panelCustomerSelect.Visible = false;
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            //updateRecord();

            populateAllCustomers();
            paneAllCustomers.Visible = true;
            panelCustomerSelect.Visible = false;
        }

        public void updateRecord()
        {
            string sql = "Exec customerUpdareCustomer '" + Session["idpassport"].ToString() + "', '" + Session["surName"].ToString() + "', '" + Session["firstName"].ToString() + "', '" + Session["middleName"].ToString() + "', '" + Session["dob"].ToString() + "', '" + Session["gender"].ToString() + "', '" + Session["maritalStatus"].ToString() + "', '" + Session["mobile"].ToString() + "', '" + Session["email"].ToString() + "', '" + Session["address"].ToString() + "', '" + Session["nationality"].ToString() + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
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

        protected void cmdIndividualCustomer_Click(object sender, EventArgs e)
        {
            panelChooseCustomerType.Visible = false;
            panelAddCustomer.Visible = true;
        }

        protected void cmdCoprateCustomer_Click(object sender, EventArgs e)
        {
            panelChooseCustomerType.Visible = false;
            panelAddCorporate.Visible = true;
        }

        protected void cmdNextToContacts_Click(object sender, EventArgs e)
        {
            if (checkCorporatelDetails() == true)
            {
                goToCorporateContactDetails();
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        public bool checkCorporatelDetails()
        {
            bool flag = false;

            if (string.IsNullOrWhiteSpace(this.txtCorporateName.Text) || string.IsNullOrWhiteSpace(this.txtCorporateRegNumber.Text) || string.IsNullOrWhiteSpace(this.txtCorporateRegBy.Text) ||
                string.IsNullOrWhiteSpace(this.txtCorporateDOR.Text))
            {
                flag = false;
            }
            else
            {
                Session["corpName"] = txtCorporateName.Text.ToString();
                Session["corpRegNumber"] = txtCorporateRegNumber.Text.ToString();
                Session["corpRegBy"] = txtCorporateRegBy.Text.ToString();
                Session["corpdor"] = txtCorporateDOR.Text.ToString();
                Session["corpNOB"] = dlNOB.SelectedValue.ToString();
                Session["corpCOI"] = dlCOI.SelectedValue.ToString();

                SaveFile(fuLogo, Session["corpName"].ToString() + "_" + Session["corpRegNumber"].ToString());

                flag = true;
            }

            return flag;
        }

        protected void lnkCorporateContacts_Click(object sender, EventArgs e)
        {
            if (checkCorporatelDetails() == true)
            {
                goToCorporateContactDetails();
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        public void goToCorporateContactDetails()
        {
            lnkCorporateContacts.CssClass = "selected";
            lnkCorporateDetails.CssClass = "";
            panelCorporateDetails.Visible = false;
            panelCorporateContacts.Visible = true;
        }

        public bool checkCorporateContactDetails()
        {
            bool flag = false;

            if (string.IsNullOrWhiteSpace(this.txtCorporateTelephone.Text) || string.IsNullOrWhiteSpace(this.txtCorporateEmail.Text) || string.IsNullOrWhiteSpace(this.txtCorporateWebsite.Text) ||
                string.IsNullOrWhiteSpace(this.txtCorporateAddress.Text) ||
                string.IsNullOrWhiteSpace(this.txtCorporatePhysicalAddress.Text))
            {
                flag = false;
            }
            else
            {
                Session["corpTelephone"] = txtCorporateTelephone.Text.ToString();
                Session["corpEmail"] = txtCorporateEmail.Text.ToString();
                Session["corpWebsite"] = txtCorporateWebsite.Text.ToString();
                Session["corpAddress"] = txtCorporateAddress.Text.ToString();
                Session["corpPhysicalAddress"] = txtCorporatePhysicalAddress.Text.ToString();

                flag = true;
            }

            return flag;
        }

        public void goToCorporateDirectorDetails()
        {
            lnkCorporateDirectors.CssClass = "selected";
            lnkCorporateDetails.CssClass = "";
            lnkCorporateContacts.CssClass = "";

            panelCorporateDetails.Visible = false;
            panelCorporateContacts.Visible = false;
            panelCorporateDirectors.Visible = true;
        }

        protected void cmdNextToDirectors_Click(object sender, EventArgs e)
        {
            if (checkCorporateContactDetails() == true)
            {
                goToCorporateDirectorDetails();
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        protected void cmdAddCorporate_Click(object sender, EventArgs e)
        {
            if (checkDirectors() == true)
            {
                
                if (AddCorporateDetails() == 1)
                {
                    MessageBox.Show("Success Adding Corporate");

                    ResetAddCoporateCustomer();
                }
                else
                {
                    MessageBox.Show("Failded to Add Corporate");
                }
            }
            else
            {
                MessageBox.Show("Select Atleast One Director");
            }
        }

        public void ResetAddCoporateCustomer()
        {

            panelDirectors.Controls.Clear();
            panelCorporateDetails.Visible = true;
            panelCorporateContacts.Visible = false;
            panelCorporateDirectors.Visible = false;

            lnkCorporateDetails.CssClass = "selected";
            lnkCorporateDirectors.CssClass = "";

            Session["corpName"] = null;
            Session["corpRegNumber"] = null;
            Session["corpRegBy"] = null;
            Session["corpdor"] = null;
            Session["corpNOB"] = null;
            Session["corpCOI"] = null;

            Session["corpTelephone"] = null;
            Session["corpEmail"] = null;
            Session["corpWebsite"] = null;
            Session["corpAddress"] = null;
            Session["corpPhysicalAddress"] = null;

            Session["directorOneID"] = null;
            Session["directorTwoID"] = null;
            Session["directorThreeID"] = null;

            txtCorporateRegNumber.Text = "";
            txtCorporateName.Text = "";
            txtCorporateRegBy.Text = "";
            txtCorporateTelephone.Text = "";
            txtCorporateWebsite.Text = "";

            txtCorporatePhysicalAddress.Text = "";
            txtCorporateDOR.Text = "";
            txtCorporateAddress.Text = "";
        }
        public bool checkDirectors()
        {
            bool flag = false;
            if (Session["directorOneID"] == null)
            {
                flag = false;
            }
            else
            {
                if (Session["directorTwoID"] == null)
                {
                    Session["directorTwoID"] = "";
                    if (Session["directorThreeID"] == null)
                    {
                        Session["directorThreeID"] = "";
                    }
                    else
                    {

                    }
                }
                else
                {

                }
                flag = true;
            }
            return flag;
        }

        public int AddCorporateDetails()
        {
            int flag = 0;
            try
            {
                string sql = "Exec customerCorporateAddCorporate '" + Session["corpName"].ToString() + "', '" + Session["corpdor"].ToString() + "', '" + Session["corpNOB"].ToString() + "', '" + Session["corpTelephone"].ToString() + "', '" + Session["corpRegNumber"].ToString() + "', '" + Session["corpCOI"].ToString() + "', '" + Session["corpRegBy"].ToString() + "', '" + Session["corpPhysicalAddress"].ToString() + "', '" + Session["corpAddress"].ToString() + "', '" + Session["corpEmail"].ToString() + "', '" + Session["directorOneID"].ToString() + "', '" + Session["directorTwoID"].ToString() + "', '" + Session["directorThreeID"].ToString() + "'";

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

        protected void cmdAddDirector_Click(object sender, EventArgs e)
        {
            populateAllCustomersX();

            panelAddCorporate.Visible = false;
            panelAllIndividualCustomers.Visible = true;
        }

        protected void gvAllIndividualCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            panelAddCorporate.Visible = true;
            panelAllIndividualCustomers.Visible = false;

            if (Session["directorOneID"] == null)
            {
                Session["directorOneID"] = gvAllIndividualCustomers.SelectedRow.Cells[2].Text.ToString();
                appendApplicantDetails(Session["directorOneID"].ToString());
            }
            else
            {
                if (Session["directorTwoID"] == null)
                {
                    Session["directorTwoID"] = gvAllIndividualCustomers.SelectedRow.Cells[2].Text.ToString();
                    if (Session["directorTwoID"].ToString() == Session["directorOneID"].ToString())
                    {
                        Session["directorTwoID"] = null;
                        MessageBox.Show("Already Added!");
                    }
                    else
                    {
                        appendApplicantDetails(Session["directorTwoID"].ToString());
                    }
                }
                else
                {
                    if (Session["directorThreeID"] == null)
                    {
                        Session["directorThreeID"] = gvAllIndividualCustomers.SelectedRow.Cells[2].Text.ToString();

                        if (Session["directorThreeID"].ToString() == Session["directorTwoID"].ToString() || Session["directorThreeID"].ToString() == Session["directorOneID"].ToString())
                        {
                            Session["directorThreeID"] = null;
                            MessageBox.Show("Already Added!");
                        }
                        else
                        {
                            appendApplicantDetails(Session["directorThreeID"].ToString());

                            cmdAddDirector.Visible = false;
                        }
                    }
                }
            }

        }

        public void appendApplicantDetails(string idpassport)
        {
            StringBuilder htmlString = new StringBuilder();

            htmlString = new StringBuilder();

            string sql = "Exec customerSelectCustomer '" + idpassport + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    htmlString.Append("<div class='templatemo-flex-row flex-content-row'>");
                    htmlString.Append("<div class='templatemo-content-widget white-red'>");
                    htmlString.Append("<div class='media'>");

                    htmlString.Append("<div class='row'>");

                    htmlString.Append("<div class='col-md-7'>");

                    htmlString.Append("<div class='media-left'>");
                    htmlString.Append("<img class='media-object img-circle' src='" + clsGlobal.CustomersUploadsPathRaw + db.reader["Surname"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg' alt='Sunset' />");
                    htmlString.Append("</div>");


                    htmlString.Append("<div class='media-body'>");
                    htmlString.Append("<label class='media-heading text-uppercase' title = " + db.reader["Surname"].ToString() + "    " + db.reader["MiddleName"].ToString() + ">" + db.reader["FirstName"].ToString() + ". " + db.reader["Surname"].ToString() + "</label><br/> <font face='verdana' color='blue'><a href='mailto:" + db.reader["Email"].ToString() + "' target='_blank'> " + db.reader["Email"].ToString() + " </font> </a><br/><p> ID / Passport Number  " + db.reader["ID"].ToString() + "</p>");
                    htmlString.Append("</div>");

                    htmlString.Append("</div>");

                    htmlString.Append("<div class='col-md-4'>");

                    htmlString.Append("<label> Nationality          " + db.reader["Nationality"].ToString() + "</label>");

                    htmlString.Append("</div>");

                    htmlString.Append("</div>");

                    htmlString.Append("</div>");
                    htmlString.Append("</div>");
                    htmlString.Append("</div>");

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

            panelDirectors.Controls.Add(new Literal { Text = htmlString.ToString() });
        }

        public void populateAllCustomersX()
        {
            string sql;
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvAllIndividualCustomers.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                sql = "Exec customersSelectAll";
                db.adapter(sql).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblXX.Visible = true;
                    lnkXX.Visible = true;
                    lblXX.Text = "You have No Record " + txtSearch.Text.ToString();
                    gvAllIndividualCustomers.Visible = false;
                }
                else
                {
                    gvAllIndividualCustomers.Visible = true;
                    lblXX.Visible = false;
                    lnkXX.Visible = false;
                    gvAllIndividualCustomers.DataSource = ds.Tables[0];
                    gvAllIndividualCustomers.DataBind();
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

        protected void txtIDPassNo_TextChanged(object sender, EventArgs e)
        {
            MessageBox.Show("Already Added!");
        }

        public void show()
        {
            if (txtIDPassNo.Text.ToString() == "Derek")
            {
                MessageBox.Show("Got you " + "Derek");
            }
            else
            {

            }
            
        }
    }
}