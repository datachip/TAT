<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCompaniesSection.aspx.cs" Inherits="HF.frmCompaniesSection" %>

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
                        11. Companies section.
                    </div>
                    <br />

                     <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label4" runat="server" Text="Name of the company" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                   
                        <div class="col-md-2">
                            <asp:Label ID="Label1" runat="server" Text="Registration Number" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                       
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label2" runat="server" Text="Date of Registration" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                   
                        <div class="col-md-2">
                            <asp:Label ID="Label3" runat="server" Text="Country of Incorporation" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label5" runat="server" Text="Registered by" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                 

                        <div class="col-md-2 ">
                            <asp:Label ID="Label6" runat="server" Text="Registered office" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label7" runat="server" Text="Nature of Business" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox7" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                   
                        <div class="col-md-2">
                            <asp:Label ID="Label8" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox8" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label9" runat="server" Text="Telephone Number" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox9" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-2">
                            <asp:Label ID="Label10" runat="server" Text="Email" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox10" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                     <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label11" runat="server" Text="<b>Guarantors</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>

                     <br />
                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label14" runat="server" Text="<b>1.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox11" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label13" runat="server" Text="Sex" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label12" runat="server" Text="Marital Status" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                       <br />
                    <div class="row">
                          <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label15" runat="server" Text="ID/Passport No." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-2">
                            <asp:Label ID="Label16" runat="server" Text="Year Of Birth" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                       <br />
                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label17" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox16" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label18" runat="server" Text="Tel. No." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox17" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label19" runat="server" Text="Email" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox18" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                     <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label20" runat="server" Text="<b>2.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox19" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label21" runat="server" Text="Sex" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox20" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label22" runat="server" Text="Marital Status" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox21" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                       <br />
                    <div class="row">
                          <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label23" runat="server" Text="ID/Passport No." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox22" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-2">
                            <asp:Label ID="Label24" runat="server" Text="Year Of Birth" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox23" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                       <br />
                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label25" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox24" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label26" runat="server" Text="Tel. No." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox25" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="col-md-2">
                            <asp:Label ID="Label27" runat="server" Text="Email" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox26" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />

                     <div class="row">
                        <div class="col-md-7 col-lg-offset-2">
                            <asp:Label ID="Label28" runat="server" Text="<h3><b>Account Mandate</b></h3>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                       <br />
                     <div class="row">
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label29" runat="server" Text="<b>To be valid all instructions should be signed by 2 signatories</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                       <br />
                     <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label30" runat="server" Text="<b>1.</b>Signature" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox27" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label31" runat="server" Text="Designation" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox28" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                         </div>
                            <br />
                          <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label32" runat="server" Text="<b>2.</b>Signature" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox29" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label33" runat="server" Text="Designation" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox30" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label34" runat="server" Text="Any changes of signatures will be immediately notified" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="row">
                        <div class="col-md-7 col-lg-offset-2">
                            <asp:Label ID="Label35" runat="server" Text="<b>Requirements:-</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-7 col-lg-offset-2">
                            <p>(i) Certified copy Certificate of Incorporation</p>
                            <p>(ii) Certified copies of memorandum and Articles of Association</p>
                            <p>(iii) Certified copies of the latest change of directors.</p>
                            <p>(iv)The copany will require the director's resolution authorizing the borrowing prior to the draw down.</p>
                            <p>(v)The copany will require the director's personal guarantees prior to the draw down.</p>
                            <p>(vi)Certified copies of the company's audited Accounts and Bank Statements for the last 3 years</p>
                        </div>
                    </div>
                           <br />
                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label36" runat="server" Text="<b>Name and Adress of your Auditors</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                     <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label37" runat="server" Text="<b>1.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox31" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label38" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox32" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                     
                    </div>
                    <br />


                    <div class="row">
                          <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label39" runat="server" Text="<b>2.</b> Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox33" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                  
                        <div class="col-md-1">
                            <asp:Label ID="Label40" runat="server" Text="Address" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox34" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
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
                    <br />
                </div> 
               </div>
            </div>    
                    <div class="row">
                        <div class="col-md-8 col-lg-offset-1">
                            <asp:Label ID="Label41" runat="server" Text="<h4><b>should you wish to give any other relevant information, please do so on separate sheet of paper.</b></h4>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
        
    </form>
</body>
</html>
