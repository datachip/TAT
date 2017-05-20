<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSupervisorApplicationSelect.aspx.cs" Inherits="TAT.frmSupervisorApplicationSelect" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>TAT</title>
</head>


<body class="light-gray-bg">
    <form id="form1" runat="server">

        <div class="templatemo-top-nav-container">
            <div class="row">
                <h2>Housing Finance Turn Arround Time</h2>
                <br />
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li>
                            <asp:Button ID="cmdLogOut" runat="server" Text="Log Out" CssClass="templatemo-blue-button" Font-Names="Century Gothic" ToolTip="Log out" OnClick="cmdLogOut_Click1" />
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Supervisor </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblTitle1" runat="server" Text="Application Selected" Visible="true" Font-Size="Medium" Font-Names="calibri" ForeColor="#cc0066"></asp:Label>
                <br />
                <br />

                <!---------->

                <div class="row">
                    <div class="col-md-3 col-lg-offset-1">
                        <asp:Label ID="lblAppicationEntries" runat="server" Text="Entries" CssClass="Labels"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtApplicationId" runat="server" CssClass="form-Control"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-md-3 col-lg-offset-1">
                        <asp:Label ID="lblApplicationType" runat="server" Text="Loan Type" CssClass="Labels"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtLoanType" runat="server" CssClass="form-Control"></asp:TextBox>
                    </div>
                </div>
                <br />


                <div class="row">
                    <div class="col-md-3 col-lg-offset-1">
                        <asp:Label ID="lblApplicationLoanRequired" runat="server" Text="Amount Required <b>*</b> Kshs" CssClass="Labels"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtLoanRequired" runat="server" CssClass="form-Control"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-md-3 col-lg-offset-1">
                        <asp:Label ID="lblApplicationLoanPurpose" runat="server" Text="Loan Purpose" CssClass="Labels"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtLoanPurpose" runat="server" TextMode="MultiLine" Height="100" Width="100%" CssClass="form-Control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12">
                    <asp:Label ID="Label3" runat="server" Text="<b>Applicats Details</b>" CssClass="page-header" Width="100%"></asp:Label>
                </div>
                <br />
                <br />
                <br />

                <div class="row">
                    <div class="col-md-4">
                            <div class="col-md-4 col-md-offset-3">
                                <asp:RadioButtonList ID="choices" runat="server">
                                    <asp:ListItem Text="Approve" Value="Approved" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Reject" Value="Rejected"></asp:ListItem>
                                </asp:RadioButtonList>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Reason"></asp:Label>
                        </div>
                        <br />
                        <div class="col-md-10">
                            <asp:TextBox ID="txtReason" runat="server" Height="100" Width="100%" TextMode="MultiLine" CssClass="form-Control"></asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class="col-lg-12">
                    <asp:Label ID="Label4" runat="server" Text="" CssClass="page-header" Width="100%"></asp:Label>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-9">
                        <asp:Button ID="cmdSubmit" runat="server" Text="Accept" CssClass="templatemo-edit-btn" Width="100%" OnClick="cmdSubmit_Click" />
                    </div>
                    <div class="col-md-3 col-md-offset-9">
                        <asp:Button ID="cmdReject" runat="server" Text="Reject" CssClass="btn warning" Width="100%" OnClick="cmdReject_Click" />
                    </div>
                </div>

                <!-------->

            </div>

        </div>
    </form>
</body>
</html>
