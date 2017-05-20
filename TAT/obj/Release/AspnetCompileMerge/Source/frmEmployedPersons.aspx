<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmEmployedPersons.aspx.cs" Inherits="HF.frmEmployedPersons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />

    <link rel="stylesheet" type="text/css" href="popUp/style.css" />


    <title>HF - TAT</title>

    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Housing Finance </h1>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-files-o fa-fw"></i>
                        9. Employed Persons section.
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label1" runat="server" Text="<b>(a) Name and Address of Employer</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label8" runat="server" Text="Full Names" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label2" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label3" runat="server" Text="Length of service" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label4" runat="server" Text="<b>(b) Exact Occupation</b>" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label5" runat="server" Text="<b>(c) Monthly Income Kshs</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label6" runat="server" Text="basic Salary" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label7" runat="server" Text="House allowance/ Owner occupier allowance" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label9" runat="server" Text="Commission" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox7" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label10" runat="server" Text="Other pay" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox8" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label11" runat="server" Text="Total gross Income" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox9" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-10 col-lg-offset-2">
                            <asp:Label ID="Label12" runat="server" Text="<b>IF YOU ARE IN RECEIT OF ANY OTHER INCOME OTHER THAN THE ONE INDICATED ABOVE, SUBMIT DETAILED EVIDENCE</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label13" runat="server" Text="Nature of other pay (Clarify from other sources)" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox10" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-md-10 col-lg-offset-2">
                            <asp:Label ID="Label14" runat="server" Text="<b>IF YOU HAVE CHANGED EMPLOYMENT IN THE LAST TWO YEARS, PLEASE COMPLETE THE FOLLOWING.</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label15" runat="server" Text="<b>(d) Designation</b>" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox11" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label16" runat="server" Text="Previous employer's name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label17" runat="server" Text="Previous employer's address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label18" runat="server" Text="Reason for leaving employment" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label19" runat="server" Text="Length of service (including joining and departure dates)" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label20" runat="server" Text="Attach copy of pin certificate - Certified copy" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label21" runat="server" Text="Attach 3 months salary slips - Certified copy" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label22" runat="server" Text="Attach 6 months bank statements - Certified copy" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row alert-success">
                        <div class="col-md-2 col-lg-offset-8">
                            <asp:Button ID="cmdSubmit" runat="server" Text="Submit" Width="100%" CssClass="btn btn-primary glyphicon-ok-circle" OnClick="cmdSubmit_Click" />
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
    </form>
</body>
</html>
