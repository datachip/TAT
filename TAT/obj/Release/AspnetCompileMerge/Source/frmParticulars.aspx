<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmParticulars.aspx.cs" Inherits="HF.frmParticulars" %>

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
                        <b>B. PARTICULARS OF PROPERTY TO BE MORTGAGED</b>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Label ID="Label4" runat="server" Text="1." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="Label1" runat="server" Text="Plot number of property to be Mortgaged" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label17" runat="server" Text="(Estate, State name and number if applicable) " CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                     <br />
                     <div class="row">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label18" runat="server" Text="Estate" CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-2">
                            <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label19" runat="server" Text="State Name" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                          <div class="col-md-2">
                            <asp:Label ID="Label2" runat="server" Text="State Number" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label3" runat="server" Text="Town" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                    <br />
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Label ID="Label6" runat="server" Text="2." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-7 ">
                            <asp:Label ID="Label5" runat="server" Text="(a) Name, address and telephone number of vendor" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                     <br />
                     <div class="row">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label7" runat="server" Text="Name" CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-2">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label8" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                          <div class="col-md-2">
                            <asp:Label ID="Label9" runat="server" Text="Telephine Number" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                        
                        </div>
                    <br />

                     <div class="row">                      
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label11" runat="server" Text="(b) Name, address and telephone number of Occupier" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                     <br />

                    <div class="row">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label10" runat="server" Text="Name" CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-2">
                            <asp:TextBox ID="TextBox7" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label12" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox8" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                          <div class="col-md-2">
                            <asp:Label ID="Label13" runat="server" Text="Telephine Number" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox9" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                        
                        </div>
                    <br />
                     <div class="row">                      
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label14" runat="server" Text="(c)Where will the keys be obtained from?" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox10" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-7 col-lg-offset-1">
                            <asp:Label ID="Label15" runat="server" Text="(d)Have the occupants agreed to allow the the company valuer to visit the premises?" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox11" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">
                        <div class="col-md-1">
                            <asp:Label ID="Label16" runat="server" Text="3." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="Label20" runat="server" Text="Purchase price (If urban plots, state so)" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>                                          
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Label ID="Label21" runat="server" Text="4." CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label22" runat="server" Text="Indicate sourcs to meet shortfall between purchase/cost and loan amount." CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <br />
                     <div class="row">                      
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label23" runat="server" Text="(i) Personal savings" CssClass="myLabels"></asp:Label>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label24" runat="server" Text="Kshs" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label25" runat="server" Text="(ii) Disposal of investment" CssClass="myLabels"></asp:Label>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label26" runat="server" Text="Kshs" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox16" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label27" runat="server" Text="(iii) Amount already spent (What sources)" CssClass="myLabels"></asp:Label>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label28" runat="server" Text="Kshs" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox17" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-2 col-lg-offset-1">
                            <asp:Label ID="Label29" runat="server" Text="(iv) Others (Specify)" CssClass="myLabels"></asp:Label>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label30" runat="server" Text="Kshs" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox18" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-1 col-lg-offset-2">
                            <asp:Label ID="Label31" runat="server" Text="TOTAL" CssClass="myLabels"></asp:Label>
                        </div>
                          <div class="col-md-1">
                            <asp:Label ID="Label32" runat="server" Text="Kshs" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            
                        </div> 
                    </div>
                     <br />
                     <div class="row">                      
                        <div class="col-md-4 col-lg-offset-1">
                            <asp:Label ID="Label33" runat="server" Text="(v) Do you intend to create a second mortgage?" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox20" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                    <br />
                     <div class="row">                      
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label34" runat="server" Text="Reason?" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                             <textarea id="TextArea1" cols="50" rows="4"></textarea>
                        </div> 
                 
                     <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label35" runat="server" Text="Mortgagee" CssClass="myLabels"></asp:Label>
                        </div>
                         <div class="col-md-3">
                            <asp:TextBox ID="TextBox19" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
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


                </div>
                    </div>
                </div>
           

    </form>
</body>
</html>
