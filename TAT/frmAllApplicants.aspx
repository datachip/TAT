<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAllApplicants.aspx.cs" Inherits="HF.frmAllApplicants" %>

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
                        <b>12. Section to be filled by all applicants:</b>
                    </div>
                    <br />

                     <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label1" runat="server" Text="<b>(A) DETAILS OF OTHER COMMITMENTS.</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label4" runat="server" Text="Co-operative Loan  Kshs." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label2" runat="server" Text="Hire Purchase personal loan Kshs." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label3" runat="server" Text="Bank Loan Overdraft  Kshs." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label5" runat="server" Text="Mortgage repayment  Kshs." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label6" runat="server" Text="The name of the Mortgage" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label7" runat="server" Text="Monthly Loan repayment" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label8" runat="server" Text="Do you have any existing Mortgages with any other financial institution? If so, state." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox7" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label9" runat="server" Text="Other commitments (Specify)" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox8" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                   <br />
                      <div class="row">
                        <div class="col-md-7 col-lg-offset-2">
                            <asp:Label ID="Label10" runat="server" Text="Balance of specified loans above must be as at the date of the application" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                       <br />
                     <div class="row">
                        <div class="col-md-7 col-lg-offset-2">
                            <asp:Label ID="Label11" runat="server" Text="Complete and return the attached income Analysis form" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                       <br />

                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label12" runat="server" Text="<b>(A) DECLARATION OF OTHER ASSETS.</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label13" runat="server" Text="Please indicate details of other immovable assets that you hold." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox9" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />
                    <br />
                    <div class="row">
                        <div class="col-md-5 col-lg-offset-1">
                            <asp:Label ID="Label14" runat="server" Text="Do you have an existing Mortgages with Housing Finance? If yes, indicate account number." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox10" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />


                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label15" runat="server" Text="The address of the property LR NO." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox11" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label16" runat="server" Text="Monthly rental income" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />

                     <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label17" runat="server" Text="<b>Name and address of your Main Bankers </b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label18" runat="server" Text="Name" CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-4">
                            <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label19" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                    <br />
                     <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label20" runat="server" Text="Current A/c no." CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-3">
                            <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label21" runat="server" Text="Saving A/c no." Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox16" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6 col-lg-offset-1">
                            <asp:Label ID="Label22" runat="server" Text="Would you have objection to our making enquiries on the conduct of this account?" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox17" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />
                    <div class="row">
                        <div class="col-md-6 col-lg-offset-1">
                            <asp:Label ID="Label23" runat="server" Text="Have you ever been declared Bankrupt/insolvence or had a court order for debt registered againist you? " CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox18" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div><br />

                     <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label24" runat="server" Text="<b>Name and address of your Advocates</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label25" runat="server" Text="<b>1.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox19" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label26" runat="server" Text="ID NO" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox20" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label27" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox21" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label28" runat="server" Text="<b>2.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox22" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label29" runat="server" Text="ID NO:" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox23" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label30" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox24" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
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
                    </div>
                    <br />
                    </div>
                </div>
            </div>
        
    </form>
</body>
</html>
