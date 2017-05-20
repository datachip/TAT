<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMain.aspx.cs" Inherits="TAT.frmMain" %>

<%@ Register Src="~/ucDepartments.ascx" TagPrefix="departments" TagName="ucdepartments" %>
<%@ Register Src="~/ucUsers.ascx" TagPrefix="users" TagName="ucusers" %>
<%@ Register Src="~/userControlUsers.ascx" TagPrefix="application" TagName="createapplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs_style.css" />

    <title>Housing Finance Loan Tracking System</title>
</head>
<body class="light-gray-bg">
    <form id="form1" runat="server">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <%--<div class="col-md-2">
                    <img src="images/HFC Logo Small.jpg" />
                </div>--%>
                <div class="col-md-5">
                    <h2>Loan Tracking System</h2>
                </div>
                <div class="col-md-3">
                    <nav class="templatemo-top-nav col-lg-12 col-md-12">
                        <ul class="text-uppercase">
                            <li>
                                <asp:LinkButton ID="lnkCurrentUser" runat="server" ToolTip="Log Out">Current User </asp:LinkButton>
                            </li>
                        </ul>
                    </nav>

                </div>
                <div class="col-md-2">
                    <nav class="templatemo-top-nav col-lg-12 col-md-12">
                        <ul class="text-uppercase">
                            <li>
                                <asp:LinkButton ID="lnkLogOut" runat="server" OnClick="lnkLogOut_Click" ToolTip="Log Out">Log Out </asp:LinkButton>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">
            <div class="row">
                <div class="col-md-3">
                    <div id="related-activities">
                        <div id="related-act-bottom">
                            <div id="related-act-inner">

                                <asp:Panel ID="panelLoansLinks" Visible="false" runat="server">
                                    <div class="right">
                                        <h5>LOANS</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkNewLoan" runat="server" ToolTip="New Loan" OnClick="lnkNewLoan_Click">New Application</asp:LinkButton>
                                            </li>
                                        </ul>
                                    </div>
                                </asp:Panel>

                                <asp:Panel ID="panelUsersLinks" Visible="false" runat="server">
                                    <div class="right">
                                        <h5>USERS</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkAddUser" runat="server" ToolTip="Add User" OnClick="lnkAddUser_Click">Add</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkEditUser" runat="server" ToolTip="Add User">Edit</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkListUsers" runat="server" ToolTip="List All Users" OnClick="lnkListUsers_Click">List</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkDeleteUser" runat="server" ToolTip="Delete User">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </asp:Panel>

                                <asp:Panel ID="panelBranchesLinks" Visible="false" runat="server">
                                    <div class="right">
                                        <h5>BRANCHES</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkAddBranch" runat="server" ToolTip="Add Branch">Add</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkManageBranch" runat="server" ToolTip="Manage Branch">Edit</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkListBranches" runat="server" ToolTip="List All Branches">List</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkDeleteBranch" runat="server" ToolTip="Delete a Branch">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </asp:Panel>

                                <asp:Panel ID="panelDepartmentsLinks" Visible="false" runat="server">
                                    <div class="right">
                                        <h5>DEPARTMENTS</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkAddDepartment" runat="server" ToolTip="Add Department">Add</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkEditDepartment" runat="server" ToolTip="Edit Department">Edit</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkListDepartment" runat="server" ToolTip="List Department">List</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkDeleteDepartment" runat="server" ToolTip="Add Department">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </asp:Panel>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-9">
                    <asp:Panel ID="panelUsers" runat="server" Visible="false" CssClass="panelsX"><users:ucUsers ID="users" runat="server" /></asp:Panel>
                    <asp:Panel ID="panelDepartments" runat="server" Visible="false" CssClass="panelsX"><departments:ucDepartments ID="departments" runat="server" /></asp:Panel>
                    <asp:Panel ID="panelNewApplication" runat="server" Visible="false" CssClass="panelsX"><application:createApplication ID="application" runat="server" /></asp:Panel>
                </div>
            </div>

            <div class="row">
                <br />
                <%--<div class="col-md-3 col-lg-offset-8">--%>
                <div class="col-md-3 col-lg-offset-1">
                    <img src="images/HFC Logo.jpg" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>
