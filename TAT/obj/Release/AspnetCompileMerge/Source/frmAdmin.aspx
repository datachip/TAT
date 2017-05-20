<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAdmin.aspx.cs" Inherits="TAT.frmAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs_style.css" />

    <title>Loan Tracking System</title>
</head>


<body class="light-gray-bg">
    <form id="form1" runat="server">

        <div class="templatemo-top-nav-container">
            <div class="row">
                <h2>Housing Finance Loan Tracking System</h2>
                <br />
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li>
                            <asp:LinkButton ID="lnkLogOut" runat="server" ToolTip="Log Out" OnClick="lnkLogOut_Click">Log Out </asp:LinkButton>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Administrator </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <div id="related-activities">
                            <!--  start related-act-bottom -->
                            <div id="related-act-bottom">
                                <!--  start related-act-inner -->
                                <div id="related-act-inner">
                                    <div class="right">
                                        <h5>Users</h5>
                                        <ul class="greyarrow">
                                            <li><asp:LinkButton ID="lnkAddUser" runat="server" ToolTip="Add User" OnClick="lnkAddUser_Click">Add</asp:LinkButton></li>
                                            <li><a href="#"> Edit </a></li>
                                            <li><asp:LinkButton ID="lnkListUsers" runat="server" ToolTip="List All Users" OnClick="lnkListUsers_Click">List</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="lnkDeleteUser" runat="server" ToolTip="Delete User" OnClick="lnkDeleteUser_Click">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>

                                    <div class="right">
                                        <h5>Branches</h5>
                                        <ul class="greyarrow">
                                            <li><asp:LinkButton ID="lnkAddBranch" runat="server" ToolTip="Add Branch" OnClick="lnkAddBranch_Click">Add</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="lnkManageBranch" runat="server" ToolTip="Manage Branch" OnClick="lnkManageBranch_Click">Edit</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="lnkListBranches" runat="server" ToolTip="List All Branches" OnClick="lnkListBranches_Click">List</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="lnkDeleteBranch" runat="server" ToolTip="Delete a Branch" OnClick="lnkDeleteBranch_Click">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>

                                    <div class="right">
                                        <h5> Departments </h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkAddDepartment" runat="server" ToolTip="Add User">Add</asp:LinkButton>
                                            </li>
                                            <li><a href="#"> Edit </a></li>
                                            <li><a href="#"> List </a></li>
                                            <li><a href="#"> Delete </a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- end related-act-inner -->
                                <div class="clear"></div>

                            </div>
                            <!-- end related-act-bottom -->
                        </div>
                    </div>

                        <div class="col-md-9">
                            <div class="row">
                                <asp:Panel ID="panelAddBranchWindow" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class="margin-bottom-10">New Branch </h2>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:Label ID="Label8" runat="server" Text="Branch Name" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtBranchName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:Label ID="Label1" runat="server" Text="Branch Location" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtBranchLocation" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:Label ID="Label2" runat="server" Text="Branch Code" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtBranchCode" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:Label ID="Label3" runat="server" Text="Phone Number" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtPhoneNumber" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:Label ID="Label4" runat="server" Text="Branch Email " CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtBranchEmail" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-2 col-lg-offset-4">
                                            <asp:Button ID="cmdSaveBranch" runat="server" Text="Save" Width="100%" CssClass="btn btn-success" OnClick="cmdSaveBranch_Click" />
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button ID="cmdCancelBranch" runat="server" Text="Cancel" Width="100%" CssClass="btn btn-danger" />
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!----------------------------------------------------------------------------------------------------------------------->

                                <asp:Panel ID="panelUpdateBranchWindow" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class="margin-bottom-10">Update Branch</h2>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:DropDownList ID="dlSearchCriteria" runat="server" CssClass="form-control">
                                                <asp:ListItem>Name</asp:ListItem>
                                                <asp:ListItem>Code</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtSearchBranchUpdate" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter Search Term" Visible="true"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search" Visible="true" OnClick="cmdSearch_Click" />
                                        </div>
                                    </div>

                                    <!------>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Label ID="lblResult1" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                            <asp:LinkButton ID="lnkResult1" runat="server" Visible="false">Click Here</asp:LinkButton>
                                            <br />
                                            <asp:GridView ID="gvBranches" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="False" PageSize="5">
                                                <Columns>
                                                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                                </Columns>
                                            </asp:GridView>

                                            <!------------------------------------------------------------------------------------------------------------------->

                                            <asp:Panel ID="panelUpdateBranch" runat="server" Visible="false">
                                                <br />
                                                <br />
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label5" runat="server" Text="Branch Name" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultBN" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label6" runat="server" Text="Branch Location" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultBL" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label7" runat="server" Text="Branch Code" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultBCode" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label9" runat="server" Text="Phone Number" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultBPN" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label10" runat="server" Text="Branch Email " CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultBE" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label26" runat="server" Text="Mailing Address " CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtResultMailingAddress" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-2 col-lg-offset-4">
                                                        <asp:Button ID="cmdUpdateBranch" runat="server" Text="Update" Width="100%" Visible="true" CssClass="btn btn-warning" OnClick="cmdUpdateBranch_Click" />
                                                    </div>
                                                    <div class="col-md-2">
                                                        <asp:Button ID="cmdCancelUpdateBranch" runat="server" Text="Cancel" Width="100%" CssClass="btn btn-default" />
                                                    </div>
                                                </div>
                                            </asp:Panel>

                                            <!------------------------------------------------------------------------------------------------------------------->
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!------------------------------------------Delete Branch ------------------------------------------------------>

                                <asp:Panel ID="panelDeleteBranchWindow" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class="margin-bottom-10">Delete Branch</h2>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-3">
                                            <asp:DropDownList ID="dlCreterialDeleteBranch" runat="server" CssClass="form-control">
                                                <asp:ListItem>Name</asp:ListItem>
                                                <asp:ListItem>Code</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-5">
                                            <asp:TextBox ID="txtSearchBranchDelete" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter Search Term" Visible="true"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Button ID="cmdSearchBranch_Delete" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search" Visible="true" OnClick="cmdSearchBranch_Delete_Click" />
                                        </div>
                                    </div>

                                    <!------>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Label ID="lblResult2" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                            <asp:LinkButton ID="lnkResult2" runat="server" Visible="false">Click Here</asp:LinkButton>
                                            <br />
                                            <!------------------------------------------------------------------------------------------------------------------->

                                            <asp:Panel ID="panelDeleteBranch" runat="server" Visible="false">
                                                <br />
                                                <br />
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label27" runat="server" Text="Branch Name" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label28" runat="server" Text="Branch Location" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchLocation" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label29" runat="server" Text="Branch Code" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchCode" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label30" runat="server" Text="Phone Number" CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchPhone" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label31" runat="server" Text="Branch Email " CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchEmail" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <asp:Label ID="Label32" runat="server" Text="Branch Mailing " CssClass="myLabels"></asp:Label>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <asp:TextBox ID="txtDeleteBranchMailingAddress" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                                <div class="row">
                                                    <div class="col-md-2 col-lg-offset-4">
                                                        <asp:Button ID="cmdDeleteBranch" runat="server" Text="Delete" Width="100%" Visible="true" CssClass="btn btn-danger" OnClick="cmdDeleteBranch_Click" />
                                                    </div>
                                                    <div class="col-md-2">
                                                        <asp:Button ID="cmdCancelDeleteBranch" runat="server" Text="Cancel" Width="100%" CssClass="btn btn-default" />
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!------------------------------------------End of Delete Branch ----------------------------------------------->


                                <asp:Panel ID="panelAllBranches" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class=""> All Branches </h2>
                                    <asp:Label ID="Label25" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Visible="false">Click Here</asp:LinkButton>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:GridView ID="gvAllBranches" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Width="100%">
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!---------------------------------- Adding User ------------------------------------------------------------------>
                                <asp:Panel ID="panelAddUser" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class="">New User </h2>
                                    <br />

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <ul class="tabrow">
                                                <li>
                                                    <asp:LinkButton ID="lnkUserPersonal" runat="server" ToolTip="Personal Details" CssClass="selected" OnClick="lnkUserPersonal_Click">Personal Details</asp:LinkButton>
                                                </li>
                                                <li>
                                                    <asp:LinkButton ID="lnkUserContact" runat="server" ToolTip="Contacts" CssClass="" OnClick="lnkUserContact_Click">Contacts</asp:LinkButton>
                                                </li>
                                                <li>
                                                    <asp:LinkButton ID="lnkUserOther" runat="server" ToolTip="Other Details" CssClass="" OnClick="lnkUserOther_Click">Other Details</asp:LinkButton>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <asp:Panel ID="panelAddUserPersonalDetails" runat="server" Visible="true">
                                        <div class="row">
                                            <div class="col-lg-6">

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label11" runat="server" Text="ID/Passport No*" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtIDPassNo" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label12" runat="server" Text="SurName*" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtSurName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label13" runat="server" Text="Fisrt Name*" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label14" runat="server" Text="Middle Name" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <br />

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label15" runat="server" Text="Date of Birth" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label16" runat="server" Text="Upload Scan" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:FileUpload ID="fuPassportIDScan" runat="server" CssClass="form-control" />
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="col-lg-5 col-md-offset-1">
                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label17" runat="server" Text="Marital Status" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-7">
                                                        <asp:DropDownList ID="dlMaritalStatus" runat="server" CssClass="form-control">
                                                            <asp:ListItem>Single</asp:ListItem>
                                                            <asp:ListItem>Married</asp:ListItem>
                                                            <asp:ListItem>Divorced</asp:ListItem>
                                                            <asp:ListItem>Seperated</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label18" runat="server" Text="Gender" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-7">
                                                        <asp:DropDownList ID="dlGender" runat="server" CssClass="form-control">
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                            <asp:ListItem>Others</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <br />
                                            <br />

                                            <div class="col-md-2 col-md-offset-10">
                                                <asp:Button ID="cmdCompletePersonalDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompletePersonalDetails_Click" />
                                            </div>
                                        </div>
                                    </asp:Panel>



                                    <asp:Panel ID="panelAddUserContactDetails" runat="server" Visible="false">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label19" runat="server" Text="Mobile*" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label20" runat="server" Text="Email*" CssClass="myLables"></asp:Label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <br />
                                                    <div class="col-md-4">
                                                        <asp:Label ID="Label21" runat="server" Text="Po. Box" CssClass="myLables"></asp:Label>
                                                    </div>

                                                    <div class="col-md-8">
                                                        <asp:TextBox ID="txtAdrress" runat="server" CssClass="form-control" Width="100%" placeholder="address" autocomplete="off"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <br />

                                            <div class="col-md-2 col-md-offset-10">
                                                <asp:Button ID="cmdCompleteContactDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompleteContactDetails_Click" />
                                            </div>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel ID="panelAddUserOtherDetails" runat="server" Visible="false">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label22" runat="server" Text="Nationality" CssClass="myLables"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:DropDownList ID="dlUserNationality" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Kenya</asp:ListItem>
                                                    <asp:ListItem>Uganda</asp:ListItem>
                                                    <asp:ListItem>South Sudan</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label23" runat="server" Text="Branch" CssClass="myLables"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:DropDownList ID="dlUserBranch" runat="server" CssClass="form-control">
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label24" runat="server" Text="Department" CssClass="myLables"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:DropDownList ID="dlUserDepartment" runat="server" CssClass="form-control">
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <br />

                                            <div class="col-md-2 col-md-offset-10">
                                                <asp:Button ID="cmdCompleteAllDetails" runat="server" Text="Add User" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompleteAllDetails_Click" />
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </asp:Panel>
                                <!---------------------------------- Adding User ------------------------------------------------------------------>

                                <!---------------------------------- Listing All Users ------------------------------------------------------------------>

                                <asp:Panel ID="panelAllUsers" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class=""> All Users </h2>
                                    <asp:Label ID="Label33" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                    <asp:LinkButton ID="LinkButton2" runat="server" Visible="false">Click Here</asp:LinkButton>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:GridView ID="gvAllUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Width="100%">
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!---------------------------------- End of Listing All Users ------------------------------------------------------------------>


                                <!---------------------------------- Delete Users ------------------------------------------------------------------>

                                <asp:Panel ID="panelDeleteUser" runat="server" Visible="false" CssClass="panelsX">
                                    <h2 class=""> Delete Users </h2>
                                    <asp:Label ID="Label34" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                    <asp:LinkButton ID="LinkButton3" runat="server" Visible="false">Click Here</asp:LinkButton>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:GridView ID="gvDeleteUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Width="100%" OnSelectedIndexChanged="gvDeleteUsers_SelectedIndexChanged">
                                                
                                                <Columns>
                                                    <asp:CommandField HeaderText="Select" SelectText="Delete" ShowSelectButton="True" />
                                                </Columns>
                                                
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </asp:Panel>

                                <!---------------------------------- End of Listing All Users ------------------------------------------------------------------>

                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-3 col-lg-offset-8">
                                    <img src="images/HFC Logo.jpg" />
                                </div>
                            </div>
                        </div>
                </div>
            </div>


            <footer class="text-right">
                <p>
                    Copyright &copy; 2015 Housing Finance | Designed by <a href="#" target="">Datachip</a>
                </p>
            </footer>
        </div>
    </form>
</body>
</html>
