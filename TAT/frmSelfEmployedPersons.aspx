t<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSelfEmployedPersons.aspx.cs" Inherits="HF.frmSelfEmployedPersons" %>

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
                        10.Self employed Persons section.
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label16" runat="server" Text="Nature of the business" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label17" runat="server" Text="Address of the business" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label18" runat="server" Text="How long established" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label19" runat="server" Text="How long under your control" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-lg-offset-1">
                            <asp:Label ID="Label1" runat="server" Text="Please submit your audited accounts <b> for the past 3 years.</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label2" runat="server" Text="Please submit bank statements <b> for the past 3 years. (Certified copies)</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label3" runat="server" Text="<b> Name and Address of yout auditors</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label8" runat="server" Text="(1) Full Names" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label4" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label5" runat="server" Text="(2) Full Names" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label6" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-3 col-lg-offset-1">
                            <asp:Label ID="Label7" runat="server" Text="Any other income(Provide evidence)" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
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
    </form>
</body>
</html>
