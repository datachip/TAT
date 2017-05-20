<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmNewApplication.aspx.cs" Inherits="TAT.frmNewApplication" %>

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
                            <asp:Button ID="cmdLogOut" runat="server" Text="Log Out" CssClass="templatemo-blue-button" Font-Names="Century Gothic" ToolTip="Log out" OnClick="cmdLogOut_Click1" />
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-12">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">

                <h2 class="margin-bottom-10"> Credit Service Representative </h2>
                <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="txtTitle" runat="server" Text="New Customer" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label>
                <br />
                <br />

                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label1" runat="server" Text="<b>1. Personal details</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <asp:Label ID="Label8" runat="server" Text="Full Names" CssClass="myLabels"></asp:Label>
                        </div>
                       <div class="col-md-3">
                            <asp:TextBox ID="TextBox1" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label2" runat="server" Text="Sex" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label3" runat="server" Text="Marial status" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label4" runat="server" Text="Year born" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox4" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label5" runat="server" Text="ID/Passport No." Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-1">
                            <asp:TextBox ID="TextBox5" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                     <br />
                    <br />
                    <div class="row">
                        <div class="col-md-7">
                            <asp:Label ID="Label7" runat="server" Text="<b>2.Personal Contacts</b>" CssClass="myLabels"></asp:Label>
                        </div>
                    </div>
                    <div class="row>">
                        <div class="col-md-1 col-lg-offset-1">
                            <asp:Label ID="Label6" runat="server" Text="Address" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label9" runat="server" Text="Tel No." Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox7" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-1">
                            <asp:Label ID="Label10" runat="server" Text="Email" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox8" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br /> <br />
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label11" runat="server" Text="<b>3. Number of depedants</b>" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox9" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label12" runat="server" Text="<b>4. Nationality</b>" Width="100%" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox10" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                     <br />
                    <br />
                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label13" runat="server" Text="  <b>5. Loan Required.</b>  Kshs" Width="100%" CssClass="myLabels"></asp:Label>
                            </div>
                            <div class="col-md-2">
                                <asp:TextBox ID="TextBox11" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-1">
                                <asp:Label ID="Label14" runat="server" Text="Duration" Width="100%" CssClass="myLabels"></asp:Label>
                            </div>
                            <div class="col-md-2">
                                <asp:TextBox ID="TextBox12" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <asp:Label ID="Label15" runat="server" Text="Loan Purpose" Width="100%" CssClass="myLabels"></asp:Label>
                            </div>
                            <div class="col-md-2">                            
                                <textarea id="TextArea1" cols="35" rows="4" ></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="Label16" runat="server" Text="<b>6. Savings/Deposit account No. with Housing Finance</b>" Width="100%" CssClass="myLabels"></asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="TextBox13" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                            </div>
                             </div>
                    <br /><br />
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Label ID="Label17" runat="server" Text="<b>7. How long have you lived in your present premises? Years</b>" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="TextBox14" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-1">
                                    <asp:Label ID="Label18" runat="server" Text="Months" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="TextBox15" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div><br /><br />
                            <div class="row">
                                <div class="col-md-7">
                                    <asp:Label ID="Label19" runat="server" Text="<b>8 (a). Your present home is:</b>" CssClass="myLabels"></asp:Label>
                                </div>
                            </div>
                            <div class="row>">
                                <div class="col-md-2 col-lg-offset-1">
                                    <asp:Label ID="Label20" runat="server" Text="Owned outright" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-1">
                                    <asp:TextBox ID="TextBox16" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-2">
                                    <asp:Label ID="Label21" runat="server" Text="Owned subject to a mortgage" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-1">
                                    <asp:TextBox ID="TextBox17" runat="server" Width="100%" ></asp:TextBox>
                                </div>
                                <div class="col-md-1">
                                    <asp:Label ID="Label22" runat="server" Text="Rented" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-1">
                                    <asp:TextBox ID="TextBox18" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div><br /><br /><br /><br />
                            <div class="row">
                                <div class="col-md-7">
                                    <asp:Label ID="Label23" runat="server" Text="<b> (b). Other residential properties owned and where applicable rented out </b>" CssClass="myLabels"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-1 col-lg-offset-1">
                                    <asp:Label ID="Label24" runat="server" Text="City Town" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox19" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-2">
                                    <asp:Label ID="Label25" runat="server" Text="Land Registration Number" Width="100%" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox20" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                    <br />

                    <div class="row">
                        <div class="col-md-2 col-lg-offset-8">
                            <asp:Button ID="cmdSubmit" runat="server" Text="Submit" Width="100%" CssClass="btn btn-primary glyphicon-ok-circle" OnClick="cmdSubmit_Click" />
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="cmdReset" runat="server" Text="Reset" Width="100%" CssClass="btn btn-primary" />
                        </div>
                       
                    </div>
                </div>
        </div>
        
        
    </form>
</body>
</html>
