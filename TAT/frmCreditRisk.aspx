<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCreditRisk.aspx.cs" Inherits="TAT.frmCreditRisk" %>

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
                <h2 class="margin-bottom-10">Credit Risk </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblTitle1" runat="server" Text="Approved Application(s) from Credit Analyst(s)" Visible="true" Font-Size="Medium" Font-Names="calibri" ForeColor="#cc0066"></asp:Label>
                <br />
                <br />

                <div class="row">
                    <!------>
                    <div class="row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter ID"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search by ID" OnClick="cmdSearch_Click1"/>
                        </div>
                    </div>
                    <!------>

                    <!------>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblResult1" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:LinkButton ID="lnkResult1" runat="server" Visible="false" OnClick="lnkResult1_Click">Click Here</asp:LinkButton>
                            <br />
                            <asp:GridView ID="gvNewApplications" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="table" OnSelectedIndexChanged="gvNewApplications_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" HeaderText="View Application" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                        </div>
                    </div>
                    <!------>
                </div>

                <br />
                <br />
                <asp:Label ID="lblTitle2" runat="server" Text="Rejected Application(s) from MLC(s)" Visible="true" Font-Size="Medium" Font-Names="calibri" ForeColor="#ff9900"></asp:Label>
                <br />
                <br />
                <div class="row">

                    <!------>
                    <div class="row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSearch2" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter ID"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdSearch2" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search by ID"/>
                        </div>
                    </div>
                    <!------>

                    <!------>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblResult2" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:LinkButton ID="lnkResult2" runat="server" Visible="False">Click Here</asp:LinkButton>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" CssClass="table">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" HeaderText="View Application" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                        </div>
                    </div>
                    <!------>
                </div>
            </div>
            <!--- End of Body --->
            <footer class="text-right">
                <p>
                    Copyright &copy; 2015 Housing Finance 
            | Designed by <a href="#" target="">Datachip</a>
                </p>
            </footer>
        </div>

        <div id="popup_chooseCA" class="overlay">
            <div class="popup">

                <asp:Label ID="Label13" runat="server" Text="Choose by checking the boxes"></asp:Label>
                <a class="close" href="#">&times;</a>
                <div class="content">

                    <!--- Pop Up Content --->

                    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="true">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                               
                            </div>
                            <div class="col-md-3">
                                 <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn glyphicon glyphicon-search" />
                            </div>
                            <br />
                            <br />
                            <br />
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <asp:GridView ID="gvUsers" runat="server" CssClass="table" AutoGenerateSelectButton="True">
                                </asp:GridView>
                            </div>
                        </div>

                    </asp:PlaceHolder>

                    <asp:PlaceHolder ID="usersPlace" runat="server"></asp:PlaceHolder>

                    <!--- End of Pop Up Content --->
                </div>
            </div>
        </div>


    </form>
</body>
</html>
