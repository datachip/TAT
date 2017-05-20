<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCustomer.aspx.cs" Inherits="TAT.frmCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />

    <link rel="stylesheet" type="text/css" href="popUp/style.css" />

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
                            <asp:LinkButton ID="lnkLogOut" runat="server" ToolTip="Log Out" OnClick="lnkLogOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </nav>

                        
            </div>
        </div>

        <div class="templatemo-content-container col-md-12">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">

                <h2 class="margin-bottom-10">Credit Service Representative </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="txtTitle" runat="server" Text="New Application" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />

                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label3" runat="server" Text="1." Font-Bold="true" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <asp:Label ID="Label33" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <asp:Label ID="Label62" runat="server" Text="(2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <asp:Label ID="Label63" runat="server" Text="(3)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <br />
                    <div class="col-md-3">
                        <asp:Label ID="Label64" runat="server" Text="Full name of applicant" CssClass="myLabels"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtAppOneNames" runat="server" CssClass="form-control"></asp:TextBox><a href="#popup1">Pick</a><br />
                        <asp:TextBox ID="txtAppTwoNames" runat="server" CssClass="form-control"></asp:TextBox><a href="#popup1">Pick</a><br />
                        <asp:TextBox ID="txtAppThreeNames" runat="server" CssClass="form-control"></asp:TextBox><a href="#popup1">Pick</a><br />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label65" runat="server" Text="Sex" CssClass="myLabels"></asp:Label><br />
                        <asp:DropDownList ID="dropAppOneGender" runat="server" CssClass="form-control" DataTextField="Sex" DataValueField="SexID"></asp:DropDownList><br />
                        <asp:DropDownList ID="dropAppTwoGender" runat="server" CssClass="form-control" DataTextField="Sex" DataValueField="Sex"></asp:DropDownList><br />
                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-control" DataTextField="Sex" DataValueField="Sex"></asp:DropDownList><br />
                    </div>
                    <div class=" col-md-2">
                        <asp:Label ID="Label66" runat="server" Text="Marital Status" CssClass="myLabels"></asp:Label>
                        <asp:DropDownList ID="dropAppOneMS" runat="server" CssClass="form-control" DataTextField="Status" DataValueField="Status"></asp:DropDownList><br />
                        <asp:DropDownList ID="dropAppTwoMS" runat="server" CssClass="form-control" DataTextField="Status" DataValueField="Status"></asp:DropDownList><br />
                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-control" DataTextField="Status" DataValueField="Status"></asp:DropDownList><br />
                    </div>
                    <div class="col-md-offset- col-md-2">
                        <asp:Label ID="Label67" runat="server" Text="Year Born" CssClass="myLabels"></asp:Label>
                        <asp:TextBox ID="txtAppOneYB" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:TextBox ID="txtAppTwoYB" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox63" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="Label68" runat="server" Text="ID/Passport" CssClass="myLabels"></asp:Label>
                        <asp:TextBox ID="txtAppOneID" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:TextBox ID="txtAppTwoID" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox66" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label1" runat="server" Text="2." Font-Bold="true" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="(2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="(3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label10" runat="server" Text="Address." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <asp:TextBox ID="txtAppOneAddress" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoAddress" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />

                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label14" runat="server" Text="Tel.No" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <asp:TextBox ID="txtAppOneTel" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoTel" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />

                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label18" runat="server" Text="Email" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <asp:TextBox ID="txtAppOneEmail" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoEmail" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox51" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label16" runat="server" Text="3." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="Label17" runat="server" Text=" Number of dependants" Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label22" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneNoDepend" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label19" runat="server" Text=" (2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAppTwoNoDepend" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label26" runat="server" Text="4." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label27" runat="server" Text="Nationality." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label28" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">

                        <asp:DropDownList ID="dropAppOneNation" runat="server" CssClass="form-control" DataTextField="Nationality" DataValueField="Nationality"></asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label29" runat="server" Text=" (2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:DropDownList ID="dropAppTwoNation" runat="server" CssClass="form-control" DataTextField="Nationality" DataValueField="Nationality"></asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label30" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataTextField="Nationality" DataValueField="Nationality"></asp:DropDownList>
                        <br />
                    </div>
                    <div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label20" runat="server" Text="5." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label21" runat="server" Text="Loan Required." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label23" runat="server" Text="(Kshs)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneLoanR" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label24" runat="server" Text=" Duration" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneDuration" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label25" runat="server" Text=" Years" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneYears" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2   col-lg-offset-1">
                        <asp:Label ID="Label31" runat="server" Text="Purpose of loan" CssClass="myLabels"></asp:Label>
                    </div>
                    <div class="col-md-6 margin-top-20">
                        <asp:TextBox ID="txtAppOnePurposeL" runat="server" CssClass="form-control"></asp:TextBox>

                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="   col-md-1   ">
                        <asp:Label ID="Label32" runat="server" Text="6." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-5">
                        <asp:Label ID="Label37" runat="server" Text="Savings/ Deposit Account No.with Housing Finance" Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtAppOneSavings" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label34" runat="server" Text="7." Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-5">
                        <asp:Label ID="Label35" runat="server" Text=" How long have you lived at your present premises?" Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                </div>
                <div class="row">
                    <div class="   col-md-1  col-lg-offset-1 ">
                        <asp:Label ID="Label36" runat="server" Text="Years" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneYrs" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />

                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label61" runat="server" Text="Months" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneMonths" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>

                </div>
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="8(a) Your present home is:" Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                <br />
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="Label38" runat="server" Text="" Font-Bold="true"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label40" runat="server" Text="Owned outright." CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label44" runat="server" Text="Owned subject to a mortage." CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <asp:Label ID="Label51" runat="server" Text="Rented" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label41" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label45" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label48" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneOutright" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtAppOneOMorgage"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppOneRent" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label42" runat="server" Text=" (2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label46" runat="server" Text=" (2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label49" runat="server" Text=" (2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppTwoOutright" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoOMorgage" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoRent" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label43" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label47" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label50" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="TextBox39" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox42" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox45" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                </div>
                <asp:Label ID="Label57" runat="server" Text="(b) Other Residential properties owned and where applicable Rented out:" Font-Bold="True" CssClass="myLabels"></asp:Label><br />
                <br />
                <div class="row">
                    <div class="col-md-2 col-lg-offset-1 ">
                        <asp:Label ID="Label52" runat="server" Text="City Town" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label56" runat="server" Text="Land Registration Number" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label53" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label58" runat="server" Text="(1)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppOneCity" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppOneLandRegNo" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />

                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label54" runat="server" Text="(2)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label59" runat="server" Text="(2)" CssClass="myLabels"></asp:Label><br />
                        <br />

                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtAppTwoCity" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="txtAppTwoLandRegNo" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                    <div class="col-md-1">
                        <asp:Label ID="Label55" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label60" runat="server" Text=" (3)" CssClass="myLabels"></asp:Label><br />
                        <br />
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="TextBox47" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <br />
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-6">
                        <asp:Label ID="Label4" runat="server" Text="(1)" CssClass="myLabels"></asp:Label>
                        <asp:FileUpload ID="fileupload1" runat="server" CssClass="form-control" />
                        <asp:Label ID="Label7" runat="server" CssClass="myLabels" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="(2)" CssClass="myLabels"></asp:Label>
                        <asp:FileUpload ID="fileupload2" runat="server" CssClass="form-control" />
                        <asp:Label ID="Label11" runat="server" CssClass="myLabels" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="(3)" CssClass="myLabels"></asp:Label>
                        <asp:FileUpload ID="fileupload3" runat="server" CssClass="form-control" />
                        <asp:Label ID="Label12" runat="server" CssClass="myLabels" Visible="False"></asp:Label>
                    </div>
                    <div class="col-md-1">
                        <br />
                        <asp:Button ID="cmdUpload1" runat="server" Text="Upload" Width="80px" CssClass="btn btn-primary glyphicon-upload" OnClick="Button1_Click" /><br />
                        <br />
                        <br />
                        <asp:Button ID="cmdUpload2" runat="server" Text="Upload" Width="80px" CssClass="btn btn-primary glyphicon-upload" OnClick="Button3_Click" /><br />
                        <br />
                        <br />
                        <asp:Button ID="cmdUpload3" runat="server" Text="Upload" Width="80px" CssClass="btn btn-primary glyphicon-upload" OnClick="Button2_Click" /><br />
                        <br />
                    </div>
                </div>

                <div class="row alert-success">
                    <div class="col-md-2 col-lg-offset-8">
                        <asp:Button ID="cmdSubmit" runat="server" Text="Add" Width="100%" CssClass="btn btn-primary glyphicon-ok-circle" OnClick="cmdSubmit_Click" />
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="cmdReset" runat="server" Text="Reset" Width="100%" CssClass="btn btn-primary" />
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                </div>
            </div>

        </div>
        </div>
        </div>

        <!--- Pop Up-->

        <div id="popup1" class="overlay">
            <div class="popup">

                <asp:Label ID="Label13" runat="server" Text="Choose by Selecting"></asp:Label>
                <br />
                <br />
                <a class="close" href="#">&times;</a>
                <div class="content">

                    <!--- Pop Up Content --->

                    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="true">

                            <div class="col-md-3">
                                <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="btn glyphicon glyphicon-search" />
                            </div>
                            <br />
                            <br />
                            <br />

                            <div class="col-md-6">
                                <asp:GridView ID="gvUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" AutoGenerateSelectButton="True">
                                </asp:GridView>
                            </div>

                    </asp:PlaceHolder>

                    <asp:PlaceHolder ID="usersPlace" runat="server"></asp:PlaceHolder>

                    <!--- End of Pop Up Content --->
                </div>
            </div>
        </div>


        </div>
            </div>
        
        
    </form>
</body>
</html>
