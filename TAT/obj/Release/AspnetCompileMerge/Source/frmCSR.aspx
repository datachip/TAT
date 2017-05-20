<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCSR.aspx.cs" Inherits="TAT.frmCSR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Housing Finance Loan Tracking System</title>
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
                            <asp:LinkButton ID="lnkLogOut" runat="server" ToolTip="Log Out" OnClick="lnkLogOut_Click">Log Out</asp:LinkButton>
                        </li>
                        <li>
                            <asp:Button ID="cmdLogOut" runat="server" Visible="false" Text="Log Out" CssClass="templatemo-blue-button" Font-Names="Century Gothic" ToolTip="Log out" OnClick="cmdLogOut_Click1" />
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Credit Service Representative </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <asp:Button ID="cmdNewApplicaion" runat="server" Text="New Application" ToolTip="Create Application" CssClass="templatemo-edit-btn" Height="50px" Width="100%" Font-Names="Century Gothic" Font-Size="Large" OnClick="cmdNewApplicaion_Click" />
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="cmdNewCustomer" runat="server" Text="New Customer" CssClass="form-control" Visible="false" OnClick="cmdNewCustomer_Click" />
                    </div>
                </div>
            </div>
            </div>
    </form>
</body>
</html>
