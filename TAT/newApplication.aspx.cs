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
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class newApplication : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        string[] directors = new string[3];
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["customerIdOne"] != null)
            {
                //appendApplicantDetails(1, Session["customerIdOne"].ToString());
            }

            if (Session["customerCorporateIdOne"] != null)
            {
               // appendApplicantCorporateDetails(Session["customerCorporateIdOne"].ToString());
            }
            //if (Session["customerIdTwo"] != null)
            //{
            //    appendApplicantDetails(2, Session["customerIdTwo"].ToString());
            //}

            //if (Session["customerIdThree"] != null)
            //{
            //    appendApplicantDetails(3, Session["customerIdThree"].ToString());
            //}
        }

        protected void cmdNewApplicaion_Click(object sender, EventArgs e)
        {
            Response.Redirect("newCustomer.aspx");
        }

        protected void cmdExistingCustomer_Click(object sender, EventArgs e)
        {
            panelDefault.Visible = false;
            panelAllCustomers.Visible = true;

            //populateAllCustomers();
            //populateAllCorporateCustomers();
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

        public void populateAllCorporateCustomers()
        {
            string sql;
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvCorporates.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                sql = "Exec customersCorporateSelectAll";
                db.adapter(sql).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblResultsTwo.Visible = true;
                    lnkResutTwo.Visible = true;
                    lblResultsTwo.Text = "You have No Record " + txtSearch.Text.ToString();
                    gvCorporates.Visible = false;
                }
                else
                {
                    gvCorporates.Visible = true;
                    lblResultsTwo.Visible = false;
                    lnkResutTwo.Visible = false;
                    gvCorporates.DataSource = ds.Tables[0];
                    gvCorporates.DataBind();
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



        public void appendApplicantDetails(int num, string idpassport)
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

                    htmlString.Append("<div class='col-md-6'>");

                    htmlString.Append("<div class='media-left'>");
                    htmlString.Append("<img class='media-object img-circle' src='images/customers/profile/" + db.reader["Surname"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg' alt='Sunset' />");
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

            paneIndividualDetails.Controls.Add(new Literal { Text = htmlString.ToString() });
        }


        /*
         * 
         * 
         * */

        public void appendApplicantCorporateDetails(string regNumber)
        {
            StringBuilder htmlString = new StringBuilder();

            htmlString = new StringBuilder();

            string sql = "Exec customerCorporateSelectCorporate '" + regNumber + "'";

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

                    htmlString.Append("<div class='col-md-6'>");

                    htmlString.Append("<div class='media-left'>");
                    htmlString.Append("<img class='media-object img-circle' src='images/customers/profile/" + db.reader["name"].ToString() + "_" + db.reader["ID"].ToString()  + ".jpg' alt='Sunset' />");
                    htmlString.Append("</div>");


                    htmlString.Append("<div class='media-body'>");
                    htmlString.Append("<label class='media-heading text-uppercase' title = " + db.reader["name"].ToString() + ">" + db.reader["name"].ToString() + "</label><br/> <font face='verdana' color='blue'><a href='mailto:" + db.reader["Email"].ToString() + "' target='_blank'> " + db.reader["Email"].ToString() + " </font> </a><br/><p>" + db.reader["ID"].ToString() + "</p>");
                    htmlString.Append("</div>");

                    htmlString.Append("</div>");

                    htmlString.Append("<div class='col-md-4'>");

                    htmlString.Append("<label> Country of Incorporation         " + db.reader["Country"].ToString() + "</label>");

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

            paneIndividualDetails.Controls.Add(new Literal { Text = htmlString.ToString() });
        }



        protected void gvAllCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            panelApplicants.Visible = true;
            panelAllCustomers.Visible = false;
            panelDefault.Visible = false;

            if (Session["customerIdOne"] == null)
            {
                Session["customerIdOne"] = gvAllCustomers.SelectedRow.Cells[2].Text.ToString();
                Session["customerNameOne"] = gvAllCustomers.SelectedRow.Cells[1].Text.ToString();
                appendApplicantDetails(1, Session["customerIdOne"].ToString());
            }

            Session["customerType"] = "Individual";
            /*else
            {
                if (Session["customerIdTwo"] == null)
                {
                    Session["customerIdTwo"] = gvAllCustomers.SelectedRow.Cells[2].Text.ToString();
                    if (Session["customerIdTwo"].ToString() == Session["customerIdOne"].ToString())
                    {
                        Session["customerIdTwo"] = null;
                        MessageBox.Show("Already Added!");
                    }
                    else
                    {
                        appendApplicantDetails(2, Session["customerIdTwo"].ToString());
                    }
                }
                else
                {
                    if (Session["customerIdThree"] == null)
                    {
                        Session["customerIdThree"] = gvAllCustomers.SelectedRow.Cells[2].Text.ToString();

                        if (Session["customerIdThree"].ToString() == Session["customerIdTwo"].ToString() || Session["customerIdThree"].ToString() == Session["customerIdOne"].ToString())
                        {
                            Session["customerIdThree"] = null;
                            MessageBox.Show("Already Added!");
                        }
                        else
                        {
                            appendApplicantDetails(3, Session["customerIdThree"].ToString());

                            cmdAddApplicant.Visible = false;
                        }
                    }
                }
            }*/

            
        }

        protected void cmdAddApplicant_Click(object sender, EventArgs e)
        {
            paneIndividualDetails.Visible = false;
            panelCorporateDetails.Visible = false;

            lnkCustomerDetails.CssClass = "";
            lnkLoanDetails.CssClass = "selected";

            panelLoanDetails.Visible = false;
            cmdLoanDetails.Visible = false;
            cmdCreateApplication.Visible = false;
            cmdCancelApplication.Visible = false;

            panelAmountRequired.Visible = true;

            updateTimeStamp();
        }

        protected void cmdCreateApplication_Click(object sender, EventArgs e)
        {
            Session["loanMode"] = dlLoanType.SelectedValue.ToString();
            Response.Redirect("createApplication.aspx");
            /// update Time stamp
            /// 
            //updateTimeStamp();
        }

        public void updateTimeStamp()
        {
             //try
             //{
             //    string sql = "Exec updateUserTimeStamp '" + Session["customerIdOne"].ToString() + "', " + int.Parse(Session["userID"].ToString()) + ", '" + "Loan Application" + "', '" + DateTime.Now + "'";
             //    db.openConnection();
             //    db.comm.CommandText = sql;
             //    db.reader = db.comm.ExecuteReader();
             //}
             //catch (Exception ex)
             //{
             //    MessageBox.Show(ex.Message);
             //}
             //finally
             //{
             //    db.conn.Close();
             //}
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["customerIdOne"] = null;
            Session["customerCorporateIdOne"] = null;
            Session["customerType"] = null;
            Session["customerCorporateNameOne"] = null;
            Session["customerNameOne"] = null;

            Response.Redirect("frmCSR.aspx");
        }

        protected void cmdCancelApplication_Click(object sender, EventArgs e)
        {
            Session["customerIdOne"] = null;
            Session["customerCorporateIdOne"] = null;
            Session["customerType"] = null;
            Session["customerCorporateNameOne"] = null;
            Session["customerNameOne"] = null;

            panelApplicants.Visible = false;
            panelAllCustomers.Visible = true;

        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            string tempSearchTerm = txtSearch.Text.ToString();
            //searchIndividual(txtSearch.Text.ToString());
            if (searchIndividualCustomers(tempSearchTerm) == true)
            {
                lblResult1.Visible = false;
                lnkResult1.Visible = false;
                txtSearch.Text = "";
                // No need to Search for Coporate Customer
                //Display
                panelAllCustomers.Visible = false;
                panelApplicants.Visible = true;

                populateIndividualDetails(tempSearchTerm);

                paneIndividualDetails.Visible = true;
                panelCorporateDetails.Visible = false;

                lnkCustomerDetails.CssClass = "selected";
                lnkLoanDetails.CssClass = "";

                panelLoanDetails.Visible = false;

                Session["customerType"] = "Individual";
                populateLoanTypes(Session["customerType"].ToString());
            }
            else
            {
                // Search for Corporate Customer
                if (searchCorporateCustomers(tempSearchTerm) == true)
                {
                    lblResult1.Visible = false;
                    lnkResult1.Visible = false;
                    txtSearch.Text = "";
                    //Display
                    panelAllCustomers.Visible = false;
                    panelApplicants.Visible = true;

                    populateCorporateDetails(tempSearchTerm);
                    populateDirectors();

                    paneIndividualDetails.Visible = false;
                    panelCorporateDetails.Visible = true;

                    lnkCustomerDetails.CssClass = "selected";
                    lnkLoanDetails.CssClass = "";

                    panelLoanDetails.Visible = false;

                    Session["customerType"] = "Corporate";
                    populateLoanTypes(Session["customerType"].ToString());
                }
                else
                {
                    lblResult1.Visible = true;
                    lnkResult1.Visible = true;

                    lblResult1.Text = "No Record that Matches your Search [" + tempSearchTerm + "]    ";
                }
            }

        }

        public void populateLoanTypes(string customerType)
        {
            Stack<string> loanTypeStack = new Stack<string>();

            dlLoanType.Items.Clear();

            if (customerType == "Individual")
            {
                loanTypeStack.Push("Car Loan");
                loanTypeStack.Push("House Loan");
                loanTypeStack.Push("Mortage");
                loanTypeStack.Push("Fees Loan");

                foreach (string loan in loanTypeStack)
                {
                    dlLoanType.Items.Add(loan);
                }
            }
            else
            {
                loanTypeStack.Push("Bank Loan");
                loanTypeStack.Push("Employees Loan");
                loanTypeStack.Push("Mortage");

                foreach (string loan in loanTypeStack)
                {
                    dlLoanType.Items.Add(loan);
                }
            }
        }

        public void populateIndividualDetails(string tempID)
        {
            string imageUrl = "";
            string sql = "Exec customerSelectCustomer '" + tempID + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    Session["customerNameOne"] = db.reader["Surname"].ToString();
                    Session["customerIdOne"] = db.reader["ID"].ToString();
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


                    

                    if (db.reader["BlackList"].ToString() == "true")
                    {
                        lblStatus.ForeColor = Color.Red;
                        lblStatus.Text = "Black Listed";
                    }
                    else
                    {
                        lblStatus.ForeColor = Color.Green;
                        lblStatus.Text = "Not Black Listed";
                    }

                    //if (!Directory.Exists(clsGlobal.CustomersUploadsReadPathResized + db.reader["Surname"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg"))
                    //{
                    //    imageUrl = clsGlobal.CustomersUploadsReadPathResized + "noImage.jpg";
                    //    //customerImage.ImageUrl = 
                    //}
                    //else
                    //{
                    //    imageUrl = clsGlobal.CustomersUploadsReadPathResized + db.reader["Surname"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg";
                    //    //customerImage.ImageUrl = 
                    //}

                    customerImage.ImageUrl = "C:\\TatUploads\\Customers\\Resized\\noImage.jpg";

                    getTimeStamp(tempID);
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

        public void getTimeStamp(string tempID)
        {

            string sql = "Exec getIndividualTimeStamp '" + tempID + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    lblLastVisit.Text = db.reader["LastVisitTime"].ToString();
                    txtReasonLastVisit.Text = db.reader["Reason"].ToString();
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
        public void populateCorporateDetails(string searchTerm)
        {
            string sql = "Exec customerCorporateSelectCorporate '" + searchTerm + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    Session["customerCorporateNameOne"] = db.reader["Name"].ToString();
                    Session["customerCorporateIdOne"] = db.reader["ID"].ToString();
                    txtCorporateName.Text = db.reader["Name"].ToString();
                    txtCorporateRegNumber.Text = db.reader["ID"].ToString();
                    txtCorporateCOI.Text = db.reader["Country"].ToString();

                    txtCorporateRO.Text = db.reader["RegOffice"].ToString();
                    txtCorporateEmail.Text = db.reader["Email"].ToString();
                    txtCorporateWebsite.Text = db.reader["Website"].ToString();
                    txtCorporateTelephone.Text = db.reader["Telephone"].ToString();
                    txtCorporateBox.Text = db.reader["Address"].ToString();
                    txtCorporatePhysicalAddress.Text = db.reader["Physical"].ToString();

                    directors[0] = db.reader["DirOne"].ToString();
                    directors[1] = db.reader["DirTwo"].ToString();
                    directors[2] = db.reader["DirThree"].ToString();

                    imgCorporateLogo.ImageUrl = "~/images/customers/" + db.reader["Name"].ToString() + "_" + db.reader["ID"].ToString() + ".jpg";

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

        public void populateDirectors()
        {
            StringBuilder htmlString = new StringBuilder();

            foreach (string director in directors)
            {
                if (director == "null")
                {
                    break;
                }
                else
                {
                    htmlString.Append("<div class='row'>");

                    htmlString.Append("<div class='col-md-6'>");

                    htmlString.Append("<label class='media-heading text-uppercase' title = " + director + "> " + director + "</label>");

                    htmlString.Append("</div>");

                    htmlString.Append("</div>");
                }
            }

            panelDirectors.Controls.Add(new Literal { Text = htmlString.ToString() });
        }

        
        protected void lnkResult1_Click(object sender, EventArgs e)
        {
           // Create new Cstomer
            Response.Redirect("newCustomer.aspx");
        }

        protected void gvCorporates_SelectedIndexChanged(object sender, EventArgs e)
        {
            panelApplicants.Visible = true;
            panelAllCustomers.Visible = false;
            panelDefault.Visible = false;

            if (Session["customerCorporateIdOne"] == null)
            {
                Session["customerCorporateIdOne"] = gvCorporates.SelectedRow.Cells[2].Text.ToString();
                Session["customerCorporateNameOne"] = gvCorporates.SelectedRow.Cells[1].Text.ToString();
                appendApplicantCorporateDetails(Session["customerCorporateIdOne"].ToString());
            }
            Session["customerType"] = "Corporate";
        }

        public bool searchIndividualCustomers(string searchTerm)
        {
            bool flag = false;

            string sql = "Exec customerSearchIndividual '" + searchTerm + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    flag = true;
                }
                else
                {
                    flag = false;
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

        public bool searchCorporateCustomers(string searchTerm)
        {
            bool flag = false;

            string sql = "Exec customerCorporateSelectCorporate '" + searchTerm + "'";

            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    flag = true;
                }
                else
                {
                    flag = false;
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

        protected void lnkLoanDetails_Click(object sender, EventArgs e)
        {
            paneIndividualDetails.Visible = false;
            panelCorporateDetails.Visible = false;

            lnkCustomerDetails.CssClass = "";
            lnkLoanDetails.CssClass = "selected";

            panelLoanDetails.Visible = false;
            cmdLoanDetails.Visible = false;
            cmdCreateApplication.Visible = false;
            cmdCancelApplication.Visible = false;

            panelAmountRequired.Visible = true;
        }

        protected void lnkCustomerDetails_Click(object sender, EventArgs e)
        {
            if (Session["customerType"].ToString() == "Individual")
            {
                paneIndividualDetails.Visible = true;
                panelCorporateDetails.Visible = false;
            }
            else
            {
                paneIndividualDetails.Visible = false;
                panelCorporateDetails.Visible = true;
            }

            lnkCustomerDetails.CssClass = "selected";
            lnkLoanDetails.CssClass = "";

            panelLoanDetails.Visible = false;
            panelAmountRequired.Visible = false;

            cmdLoanDetails.Visible = true;
            cmdCreateApplication.Visible = false;
            cmdCancelApplication.Visible = true;
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Compute the Loan Details
            //
            if (string.IsNullOrWhiteSpace(this.txtLAmount.Text) || string.IsNullOrWhiteSpace(this.txtLDuration.Text) || string.IsNullOrWhiteSpace(this.txtLIntrest.Text) || string.IsNullOrWhiteSpace(this.txtLoanPurpose.Text))
            {
                MessageBox.Show("Fill All Details First");
            }
            else
            {

                try
                {
                    double Loan_Amt = Convert.ToDouble(txtLAmount.Text), Tenture = Convert.ToDouble(txtLDuration.Text), Interest = Convert.ToDouble(txtLIntrest.Text);
                    Calc_Loan_EMI(Loan_Amt, Tenture, Interest);
                    Calc_Amortization(Loan_Amt, Tenture, Interest, 1, DateTime.Now.Month, DateTime.Now.Year);

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Sorry! there is a error: " + ex.Message);
                }
            }
        }


        /*
         * *************************************************************************************
         ***************************************************************************************
         */

        private void Calc_Loan_EMI(double Principal_Amount, double Term_Months, double Intrest_Rate)
        {
            Intrest_Rate = Intrest_Rate / 1200;
            double Years = Term_Months / 12;
            double Payable_Amount = Principal_Amount * Intrest_Rate / (1 - (Math.Pow(1 / (1 + Intrest_Rate), Term_Months)));
            double Total_Amount = Payable_Amount * Term_Months;
            double Total_Interest = Total_Amount - Principal_Amount;
            double Yearly_Interest = Total_Interest / Years;
            double Interest_PA = Yearly_Interest / Principal_Amount * 100;
            double Interest_PM = (Yearly_Interest / Principal_Amount * 100) / 12;

            txtMonthlyEMI.Text = Payable_Amount.ToString("N3");
            txtTA.Text = Total_Amount.ToString("N3");
            txtFIRPA.Text = Interest_PA.ToString("N3");
            txtFIRPM.Text = Interest_PM.ToString("N3");
            txtTIA.Text = Total_Interest.ToString("N3");
            txtYIA.Text = Yearly_Interest.ToString("N3");

            panelCaculatedLoanDetails.Visible = true;
            gvPaymentDetails.Visible = true;
            cmdApply.Visible = true;
        }

        private double calculateEMI(double loanAmt, double interestRate, double tenure)
        {
            if (interestRate != 0)
            {
                double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
                double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
                double emi = 1 / Math.Pow((1 + interestRateForMonthFraction), tenure);
                double emiPerLakh = (loanAmt * interestRateForMonthFraction) / (1 - emi); // (EMI per lakh borrowed)
                emiPerLakh = roundDecimals(emiPerLakh, 0);
                return emiPerLakh;
            }
            else
            {
                double emi = loanAmt / tenure;
                double emiPerLakh = roundDecimals(emi, 0);
                return emiPerLakh;
            }
        }

        private double roundDecimals(double original_number, int decimals)
        {
            double result1 = original_number * Math.Pow(10, decimals);
            double result2 = Math.Round(result1);
            double result3 = result2 / Math.Pow(10, decimals);

            return (result3);
        }

        private void Calc_Amortization(double loanAmt, double Term_Months, double interestRate, double Installment_Number, double monthValue, double yearValue)
        {
            double interestRateForMonth = interestRate / 12; // (Monthly Rate of Interest in %)
            double interestRateForMonthFraction = interestRateForMonth / 100; // (Monthly Interest Rate expressed as a fraction)
            double emi = calculateEMI(loanAmt, interestRate, Term_Months);

            var loanOustanding = loanAmt;
            double totalPayment = 0;
            double totalInterestPortion = 0;
            double totalPrincipal = 0;
            string installmentDate = string.Empty;
            double interestPortion = 0, principal = 0;

            List<CLS_AMORTIZATION> listamort = new List<CLS_AMORTIZATION>();
            double month = 0, year = 0;

            if (Installment_Number > Term_Months || Installment_Number == 0)
            {
                //The Installment must be less than or equal to the Tenure
            }
            else
            {
                for (int i = 1; i <= Term_Months; i++)
                {
                    CLS_AMORTIZATION obj = new CLS_AMORTIZATION();

                    if (monthValue != 0)
                    {
                        month = monthValue + i - 1;
                    }
                    else
                    {
                        month = month + 1;
                    }

                    if (month > 12)
                    {
                        year = yearValue + 1;
                        yearValue = year;
                        monthValue = 0;
                        month = monthValue + 1;
                    }
                    else
                    {
                        year = yearValue;
                    }

                    if (month < 10)
                    {
                        installmentDate = "0" + month + "/" + year;
                    }
                    else
                    {
                        installmentDate = month + "/" + year;
                    }

                    if (loanOustanding == loanAmt)
                    {
                        loanOustanding = loanAmt;

                        obj.INSTALLMENTNO = i.ToString();
                        obj.INSTALLMENTDATE = installmentDate;
                        obj.OPENINGBALANCE = loanOustanding.ToString();
                        obj.EMI = emi.ToString();

                        totalPayment = totalPayment + emi;
                        interestPortion = loanOustanding * interestRateForMonthFraction;
                        interestPortion = roundDecimals(interestPortion, 0);
                    }
                    else
                    {
                        obj.INSTALLMENTNO = i.ToString();
                        obj.INSTALLMENTDATE = installmentDate;
                        obj.OPENINGBALANCE = loanOustanding.ToString();
                        obj.EMI = emi.ToString();

                        totalPayment = totalPayment + emi;
                        interestPortion = loanOustanding * interestRateForMonthFraction;
                        interestPortion = roundDecimals(interestPortion, 0);
                    }

                    loanOustanding = loanOustanding + interestPortion - emi;
                    loanOustanding = roundDecimals(loanOustanding, 0);

                    obj.LOANOUTSTANDING = loanOustanding.ToString();
                    obj.INTEREST = interestPortion.ToString();

                    totalInterestPortion = totalInterestPortion + interestPortion;
                    principal = roundDecimals(emi - interestPortion, 0);

                    obj.PRINCIPAL = principal.ToString();

                    totalPrincipal = totalPrincipal + principal;

                    listamort.Add(obj);
                }

                gvPaymentDetails.DataSource = listamort;
                gvPaymentDetails.DataBind();
            }
        }

        protected void cmdApply_Click(object sender, EventArgs e)
        {
            //panelLoanDetails.Visible = true;

            Session["loanMode"] = dlLoanType.SelectedValue.ToString();
            Response.Redirect("createApplication.aspx");
        }
    }

    public class CLS_AMORTIZATION
    {
        public string INSTALLMENTNO { get; set; }
        public string INSTALLMENTDATE { get; set; }
        public string OPENINGBALANCE { get; set; }
        public string EMI { get; set; }
        public string LOANOUTSTANDING { get; set; }
        public string INTEREST { get; set; }
        public string PRINCIPAL { get; set; }
    }
}