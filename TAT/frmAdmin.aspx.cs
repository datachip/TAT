using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAT
{
    public partial class frmAdmin : System.Web.UI.Page
    {
        clsDatabase db = new clsDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblUserName.Text = Session["userName"].ToString();
            //lblUserName.ToolTip = Session["userName"].ToString() + ", Admin [User]";


            populateBranches();
            populateDepartments();
        }

        protected void lnkAddBranch_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = true;
            lnkAddBranch.CssClass = "linkSelected";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;


            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";
        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            string tempSearchCriteria = "";
            if (dlSearchCriteria.SelectedValue == "Name")
            {
                tempSearchCriteria = "branch_name";
            }
            else if (dlSearchCriteria.SelectedValue == "Code")
            {
                tempSearchCriteria = "branch_code";
            }

            if (search_populateBrancheDetails(tempSearchCriteria, txtSearchBranchUpdate.Text.ToString(), "update") == true)
            {
                lblResult1.Visible = false;
                lnkResult1.Visible = false;

                panelUpdateBranch.Visible = true;
            }
            else
            {
                lblResult1.Visible = true;
                lnkResult1.Visible = true;
                lblResult1.Text = "No Record that Matches your Search [" + txtSearchBranchUpdate.Text.ToString() + "]    ";
            }
        }

        public bool search_populateBrancheDetails(string creteria, string searchTerm, string action)
        {
            bool flag = false;
            string sql = "Exec branch_select_branch '" + creteria + "', '" + searchTerm + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    if (action == "update")
                    {
                        txtResultBN.Text = db.reader["Name"].ToString();
                        txtResultBL.Text = db.reader["Location"].ToString();
                        txtResultBCode.Text = db.reader["Code"].ToString();
                        txtResultBPN.Text = db.reader["Phone"].ToString();
                        txtResultBE.Text = db.reader["Email"].ToString();
                        txtResultMailingAddress.Text = db.reader["Mailing"].ToString();
                    }
                    else
                    {
                        txtDeleteBranchName.Text = db.reader["Name"].ToString();
                        txtDeleteBranchLocation.Text = db.reader["Location"].ToString();
                        txtDeleteBranchCode.Text = db.reader["Code"].ToString();
                        txtDeleteBranchPhone.Text = db.reader["Phone"].ToString();
                        txtDeleteBranchEmail.Text = db.reader["Email"].ToString();
                        txtDeleteBranchMailingAddress.Text = db.reader["Mailing"].ToString();
                    }


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

        protected void lnkManageBranch_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = true;
            lnkManageBranch.CssClass = "linkSelected";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;

            panelUpdateBranch.Visible = false;

            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";
        }

        protected void lnkUserContact_Click(object sender, EventArgs e)
        {
            if (checkPersonalDetails() == true)
            {
                panelAddUserPersonalDetails.Visible = false;
                panelAddUserOtherDetails.Visible = false;
                panelAddUserContactDetails.Visible = true;

                lnkUserContact.CssClass = "selected";
                lnkUserPersonal.CssClass = "";
                lnkUserOther.CssClass = "";
            }
            {
                MessageBox.Show("Fill All Details First!");
            }

        }


        protected void lnkUserPersonal_Click(object sender, EventArgs e)
        {

        }

        protected void lnkUserOther_Click(object sender, EventArgs e)
        {
            if (checkContactDetails() == true)
            {
                panelAddUserPersonalDetails.Visible = false;
                panelAddUserOtherDetails.Visible = true;
                panelAddUserContactDetails.Visible = false;

                lnkUserContact.CssClass = "";
                lnkUserPersonal.CssClass = "";
                lnkUserOther.CssClass = "selected";
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        protected void cmdCompletePersonalDetails_Click(object sender, EventArgs e)
        {
            if (checkPersonalDetails() == true)
            {
                panelAddUserPersonalDetails.Visible = false;
                panelAddUserOtherDetails.Visible = false;
                panelAddUserContactDetails.Visible = true;

                lnkUserContact.CssClass = "selected";
                lnkUserPersonal.CssClass = "";
                lnkUserOther.CssClass = "";
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        protected void cmdCompleteContactDetails_Click(object sender, EventArgs e)
        {
            if (checkContactDetails() == true)
            {
                panelAddUserPersonalDetails.Visible = false;
                panelAddUserOtherDetails.Visible = true;
                panelAddUserContactDetails.Visible = false;

                lnkUserContact.CssClass = "";
                lnkUserPersonal.CssClass = "";
                lnkUserOther.CssClass = "selected";
            }
            else
            {
                MessageBox.Show("Fill All Details First!");
            }
        }

        protected void cmdCompleteAllDetails_Click(object sender, EventArgs e)
        {
            try
            {
                Session["UserfirstName"] = txtFirstName.Text.ToString();
                Session["UsermiddleName"] = txtMiddleName.Text.ToString();
                Session["UsersurName"] = txtSurName.Text.ToString();
                //Session["50"] = txtFirstName.Text.ToString();
                //Session["2013-08-02"] = txtSurName.Text.ToString();
                //Session["2013-09-02"] = txtFirstName.Text.ToString();
                Session["Useremail"] = txtEmail.Text.ToString();
                Session["Usermobile"] = txtMobile.Text.ToString();
                Session["Usergender"] = dlGender.Text.ToString();

                Session["UserNationality"] = dlUserNationality.SelectedValue.ToString();
                Session["UserBranch"] = dlUserBranch.SelectedValue.ToString();
                Session["UserDepartment"] = dlUserDepartment.SelectedValue.ToString();

                string sql = "Exec user_insert_User '"
                + Session["UserDepartment"].ToString() + "','"
                + Session["UserDepartment"].ToString() + "','"
                + Session["UserfirstName"].ToString() + "','"
                + Session["UsermiddleName"].ToString() + "','"
                + Session["UsersurName"].ToString() + "','"
                + "40" + "','" //Employee Number
                + "2013-08-02" + "','" //leave_date_from
                + "2013-09-02" + "','" //leave_date_to
                + Session["Useremail"].ToString() + "','"
                + Session["Usermobile"].ToString() + "','"
                + Session["Usergender"].ToString() + "','"
                + "OFF" + "'";

                db.openConnection();
                db.comm.CommandText = sql;
                db.comm.ExecuteNonQuery();

                MessageBox.Show("Success Adding User!");
                //Response.Redirect("frmAdmin.aspx");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + "\n\n" + "Failure Adding User!");
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
                Session["UsersurName"] = txtSurName.Text.ToString();
                Session["UserfirstName"] = txtFirstName.Text.ToString();
                Session["UsermiddleName"] = txtMiddleName.Text.ToString();
                Session["Userdob"] = txtDateOfBirth.Text.ToString();
                Session["Useridpassport"] = txtIDPassNo.Text.ToString();
                Session["Usergender"] = dlGender.SelectedValue.ToString();
                Session["UsermaritalStatus"] = dlMaritalStatus.SelectedValue.ToString();

                Session["Userdate"] = DateTime.Now;

                // SaveFile(fuPassportIDScan, Session["surName"].ToString() + "_" + Session["idpassport"].ToString());

                flag = true;
            }

            return flag;
        }

        public Boolean SaveFile(FileUpload file, String userDetails)
        {
            Boolean flag = false;
            // Specify the path to save the uploaded file to.
            string savePath = clsGlobal.UsersUploadsPathRaw;

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

            string myFileLocation = clsGlobal.UsersUploadsPathRaw + userDetails + f1.Extension;
            new clsImaging().Get_ResizeImageUser(myFileLocation, userDetails);
            return flag;
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
                Session["Usermobile"] = txtMobile.Text.ToString();
                Session["Useremail"] = txtEmail.Text.ToString();
                Session["Useraddress"] = txtAdrress.Text.ToString();

                flag = true;
            }

            return flag;
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
                

                dlUserBranch.Items.Clear();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int i = 0;
                    int j = ds.Tables[0].Rows.Count - 1;

                    for (i = 0; i <= j; i++)
                    {
                        dlUserBranch.Items.Add(ds.Tables["Branches"].Rows[i].ItemArray[0].ToString());
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
            dlUserDepartment.Items.Clear();
            string sql = "SELECT department_name from tbl_departments WHERE status LIKE 'true'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                while (db.reader.Read())
                {
                    dlUserDepartment.Items.Add(db.reader["department_name"].ToString());
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

        //public int AddUser()
        //{
        //    int flag = 0;

        //    try
        //    {
               
        //        //string sql = "Exec user_insert_UserNew '"
        //        //+ "44" + "','"
        //        //+ Session["UserDepartment"].ToString() + "','"
        //        //+ Session["UserDepartment"].ToString() + "','"
        //        //+ Session["UserfirstName"].ToString() + "','"
        //        //+ Session["UsermiddleName"].ToString() + "','"
        //        //+ Session["UsersurName"].ToString() + "','"
        //        //+ Session["50"].ToString() + "','" //Employee Number
        //        //+ Session["2013-08-02"].ToString() + "','" //leave_date_from
        //        //+ Session["2013-09-02"].ToString() + "','" //leave_date_to
        //        //+ Session["Useremail"].ToString() + "','"
        //        //+ Session["Usermobile"].ToString() + "','"
        //        //+ Session["Usergender"].ToString() + "','"
        //        //+ "OFF" + "'";

        //        string sql = "exec user_insert_UserNew 46,32,67,'MARYY','JONESS','BETHS',2,'2015-09-04','2013-08-02','JONES@GMAIL.COM','0733334455','F','ON' ";

        //        db.openConnection();
        //        db.comm.CommandText = sql;
        //        db.reader = db.comm.ExecuteReader();
        //        if (db.reader.Read())
        //        {
        //            flag = int.Parse(db.reader["result"].ToString());
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //    finally
        //    {
        //        db.conn.Close();
        //    }

        //    return flag;
        //}

        protected void lnkAddUser_Click(object sender, EventArgs e)
        {
            //panelAddBranchWindow.Visible = false;
            //lnkAddBranch.CssClass = "";

            //panelUpdateBranchWindow.Visible = false;
            //lnkManageBranch.CssClass = "";

            //panelAddUser.Visible = true;
            //lnkAddUser.CssClass = "linkSelected";

            //lnkListBranches.CssClass = "";
            //panelAllBranches.Visible = false;

            //lnkDeleteBranch.CssClass = "";
            //panelDeleteBranchWindow.Visible = false;

            //lnkListUsers.CssClass = "";
            //panelAllUsers.Visible = false;

            //lnkDeleteUser.CssClass = "";
            //panelDeleteUser.Visible = false;

            //panelDeleteDepartment.Visible = false;
            //lnkDeleteDepartment.CssClass = "";

            
            panelMain.Visible = true;
            panelDpts.Visible = false;
        }

        protected void lnkEditUser_Click(object sender, EventArgs e)
        {
            panelMain.Visible = false;
            panelDpts.Visible = true;
        }

        protected void cmdSaveBranch_Click(object sender, EventArgs e)
        {
            if (AddBranch() == 1)
            {
                MessageBox.Show("Success Adding\n" + txtBranchName.Text.ToString() + " Branch");

                txtBranchName.Text = "";
                txtBranchLocation.Text = "";
                txtBranchCode.Text = "";
                txtPhoneNumber.Text = "";
                txtBranchEmail.Text = "";
            }
            else
            {
                MessageBox.Show("Failure Adding\n" + txtBranchName.Text.ToString() + " Branch");
            }
        }

        public int AddBranch()
        {
            int flag = 0;

            string sql = "Exec branch_add_branch '" + txtBranchName.Text.ToString() + "', '" + txtBranchLocation.Text.ToString() + "', '" + txtBranchCode.Text.ToString() + "', '" + txtPhoneNumber.Text.ToString() + "', '" + txtBranchEmail.Text.ToString() + "'";

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

        protected void lnkLogOut_Click(object sender, EventArgs e)
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

        protected void lnkListBranches_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            panelUpdateBranch.Visible = false;

            lnkListBranches.CssClass = "linkSelected";
            getAllBranches();
            panelAllBranches.Visible = true;

            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";
        }

        public void getAllBranches()
        {
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvAllBranches.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                string sqlString = "Exec brancesSelectAll ";
                db.adapter(sqlString).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {

                    gvAllBranches.Visible = false;
                }
                else
                {
                    gvAllBranches.Visible = true;
                    gvAllBranches.DataSource = ds.Tables[0];
                    gvAllBranches.DataBind();
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

        protected void lnkDeleteBranch_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;

            panelDeleteBranch.Visible = false;

            lnkDeleteBranch.CssClass = "linkSelected";
            panelDeleteBranchWindow.Visible = true;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";
        }

        protected void cmdSearchBranch_Delete_Click(object sender, EventArgs e)
        {
            string tempSearchCriteria = "";
            if (dlCreterialDeleteBranch.SelectedValue == "Name")
            {
                tempSearchCriteria = "branch_name";
            }
            else if (dlSearchCriteria.SelectedValue == "Code")
            {
                tempSearchCriteria = "branch_code";
            }

            if (search_populateBrancheDetails(tempSearchCriteria, txtSearchBranchDelete.Text.ToString(), "delete") == true)
            {
                lblResult2.Visible = false;
                lnkResult2.Visible = false;

                panelDeleteBranch.Visible = true;
            }
            else
            {
                lblResult2.Visible = true;
                lnkResult2.Visible = true;
                lblResult2.Text = "No Record that Matches your Search [" + txtSearchBranchUpdate.Text.ToString() + "]    ";
            }
        }

        protected void cmdDeleteBranch_Click(object sender, EventArgs e)
        {
            string sqlString = "Exec branch_delete_branch " + int.Parse(txtDeleteBranchCode.Text.ToString());
            try
            {
                db.openConnection();
                db.comm.CommandText = sqlString;
                db.comm.ExecuteNonQuery();

                MessageBox.Show("Deleting Branch Success\n\nDeleted Branch " + txtDeleteBranchName.Text.ToString());

                txtDeleteBranchName.Text = "";
                txtDeleteBranchLocation.Text = "";
                txtDeleteBranchCode.Text = "";
                txtDeleteBranchPhone.Text = "";
                txtDeleteBranchEmail.Text = "";

                txtSearchBranchDelete.Text = "";

                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } 
            }
        }

        protected void cmdUpdateBranch_Click(object sender, EventArgs e)
        {
            string sqlString = "Exec branch_update_Branch " + int.Parse(txtResultBCode.Text.ToString()) + ", '" + txtResultBN.Text.ToString() + "', '" + txtResultBL.Text.ToString() + "', '" + txtResultBE.Text.ToString() + "', '" + txtResultBPN.Text.ToString() + "', '" + txtResultMailingAddress.Text.ToString() + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sqlString;
                db.comm.ExecuteNonQuery();

                MessageBox.Show("Updating Branch Success\n\nUpdated Branch " + txtResultBN.Text.ToString());

                txtResultBN.Text = "";
                txtResultBL.Text = "";
                txtResultBCode.Text = "";
                txtResultBPN.Text = "";
                txtResultBE.Text = "";
                txtResultMailingAddress.Text = "";

                txtSearchBranchUpdate.Text = "";

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

        protected void lnkListUsers_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;

            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "linkSelected";
            panelAllUsers.Visible = true;

            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";

            SelectAllIndividualCustomers("list");

        }

        public void SelectAllIndividualCustomers(string mode)
        {
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvAllBranches.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                string sqlString = "Exec customers_IndividualsSelectAll ";
                db.adapter(sqlString).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                


                if (ds.Tables[0].Rows.Count == 0)
                {
                    gvAllUsers.Visible = false;
                }
                else
                {
                    if (mode == "list")
                    {
                        gvAllUsers.DataSource = null;
                        gvAllUsers.Visible = true;
                        gvAllUsers.DataSource = ds.Tables[0];
                        gvAllUsers.DataBind();
                    }
                    else
                    {
                        gvDeleteUsers.DataSource = null;
                        gvDeleteUsers.Visible = true;
                        gvDeleteUsers.DataSource = ds.Tables[0];
                        gvDeleteUsers.DataBind();
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

        protected void lnkDeleteUser_Click(object sender, EventArgs e)
        {
            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;

            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            panelDeleteDepartment.Visible = false;
            lnkDeleteDepartment.CssClass = "";

            SelectAllIndividualCustomers("delete");

            lnkDeleteUser.CssClass = "linkSelected";
            panelDeleteUser.Visible = true;


        }

        protected void gvDeleteUsers_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ID = int.Parse(gvDeleteUsers.SelectedRow.Cells[1].Text.ToString());
            if (DeleteUser(ID) == 1)
            {
                MessageBox.Show("User Deleted");
                SelectAllIndividualCustomers("delete");

            }
            else
            {
                MessageBox.Show("User Not Deleted");
            }
        }

        public int DeleteUser(int ID)
        {
            int result = 0;
            string sql = "Exec userDeleteUser " + ID;
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    result = int.Parse(db.reader["result"].ToString());
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
            return result;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            AddDepartment();
        }

        public int AddDepartment()
        {
            int flag = 0;

            string sql = "Exec department_add_department '" + txtDepartmentName.Text.ToString() + "', " + int.Parse(txtDepartmentCode.Text.ToString()) + "";
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


        public int deleteDepartment(string name)
        {
            int flag = 0;

            string sql = "Exec department_delete_department '" + txtDepartmentName.Text.ToString() + "'";
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

        public void getAllDeparments()
        {
            try
            {
                DataSet emptyDs = new DataSet();
                emptyDs.Reset();
                gvdDerpartment.DataSource = emptyDs.Tables["empty"];

                DataSet ds = new DataSet();
                db.openConnection();
                string sqlString = "Exec departmentSelectAll";
                db.adapter(sqlString).Fill(ds);
                db.comm.Dispose();
                if ((db.reader != null) && (db.reader.IsClosed == false)) { db.reader.Close(); };
                if (db.conn.State == ConnectionState.Open) { db.conn.Close(); } db.conn.Dispose();
                

                if (ds.Tables[0].Rows.Count == 0)
                {

                    gvdDerpartment.Visible = false;
                }
                else
                {
                    gvdDerpartment.Visible = true;
                    gvdDerpartment.DataSource = ds.Tables[0];
                    gvdDerpartment.DataBind();
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

        protected void gvdDerpartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            string dptName = gvdDerpartment.SelectedRow.Cells[2].Text.ToString();

            if (deleteDepartmentX(dptName) == 1)
            {
                MessageBox.Show("Deleting Department\n\nSuccess Deleting " + dptName);
                getAllDeparments();
            }
            else
            {
                MessageBox.Show("Deleting Department\n\nFailure Deleting " + dptName);
            }
        }

        public int deleteDepartmentX(string name)
        {
            int result = 0;

            string sql = "Exec department_delete_department '" + name + "'";
            try
            {
                db.openConnection();
                db.comm.CommandText = sql;
                db.reader = db.comm.ExecuteReader();
                if (db.reader.Read())
                {
                    result = int.Parse(db.reader["result"].ToString());
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
            return result;
        }

        protected void lnkDeleteDepartment_Click(object sender, EventArgs e)
        {

            panelAddBranchWindow.Visible = false;
            lnkAddBranch.CssClass = "";

            panelUpdateBranchWindow.Visible = false;
            lnkManageBranch.CssClass = "";

            panelAddUser.Visible = false;
            lnkAddUser.CssClass = "";

            lnkListBranches.CssClass = "";
            panelAllBranches.Visible = false;

            lnkDeleteBranch.CssClass = "";
            panelDeleteBranchWindow.Visible = false;

            lnkListUsers.CssClass = "";
            panelAllUsers.Visible = false;

            
            lnkDeleteUser.CssClass = "";
            panelDeleteUser.Visible = false;

            getAllDeparments();

            panelDeleteDepartment.Visible = true;
            lnkDeleteDepartment.CssClass = "linkSelected";
            
        }

        protected void lnkAddDepartment_Click(object sender, EventArgs e)
        {

        }

        protected void lnkListDepartment_Click(object sender, EventArgs e)
        {

        }

        protected void lnkEditDepartment_Click(object sender, EventArgs e)
        {

        }

        

    }



}