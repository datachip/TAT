<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newApplication.aspx.cs" Inherits="TAT.newApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs_style.css" />

    <title>Loan Tracking System</title>
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
                            <asp:LinkButton ID="LinkButton3" runat="server" ToolTip="Contacts" OnClick="LinkButton3_Click">Back Home</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" ToolTip="Personal Details" CssClass="active">New Application</asp:LinkButton>
                        </li>
                    </ul>
                </nav>

            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">New Application</h2>
                <br />
                <asp:Panel ID="panelDefault" runat="server">
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Button ID="cmdNewCustomer" runat="server" Text="New Customer" CssClass="templatemo-edit-btn" Height="50px" Width="100%" Font-Names="Century Gothic" Font-Size="Large" OnClick="cmdNewApplicaion_Click" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="cmdExistingCustomer" runat="server" Text="Existing Customer" CssClass="templatemo-edit-btn" Height="50px" Width="100%" Font-Names="Century Gothic" Font-Size="Large" OnClick="cmdExistingCustomer_Click" />
                        </div>
                    </div>
                </asp:Panel>


                <asp:Panel ID="panelAllCustomers" runat="server" Visible="false">

                    <label class="margin-bottom-10">Choose Applicant</label>
                    <br />
                    <br />
                    <label class="margin-bottom-10">Key in the Customer ID | Passport | Registration Number</label>

                    <div class="row">
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter ID" Visible="true"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search by ID" Visible="true" OnClick="cmdSearch_Click" />
                        </div>
                    </div>

                    <!------>

                    <div class="row">
                        <div class="col-md-12">
                            <asp:GridView ID="gvAllCustomers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="false" OnSelectedIndexChanged="gvAllCustomers_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblResult1" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:LinkButton ID="lnkResult1" runat="server" Visible="false" OnClick="lnkResult1_Click" ToolTip="Click here to Add Customer">Add Customer Here</asp:LinkButton>
                            <br />
                        </div>
                    </div>

                    <!------------------------------------------------------------------------------------------------------------------>
                    <br />
                    <br />


                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblResultsTwo" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:LinkButton ID="lnkResutTwo" runat="server" Visible="false">Click Here</asp:LinkButton>
                            <br />
                            <asp:GridView ID="gvCorporates" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="false" OnSelectedIndexChanged="gvCorporates_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </asp:Panel>


                <!------------------------------------------------------------------------------------------------------------------------------------------->

                <asp:Panel ID="panelApplicants" runat="server" Visible="false">

                    <div class="row">
                        <ul class="tabrow">
                            <li>
                                <asp:LinkButton ID="lnkCustomerDetails" runat="server" ToolTip="Customer Details" CssClass="selected" OnClick="lnkCustomerDetails_Click">Customer Details</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkLoanDetails" runat="server" ToolTip="Loan Details" CssClass="" OnClick="lnkLoanDetails_Click">Loan Details</asp:LinkButton>
                            </li>
                        </ul>
                    </div>

                    <div class="row">
                        <div class="col-md-12">


                            <!------------------------------------------------------------------------------------------------------------------------------------------->

                            <asp:Panel ID="paneIndividualDetails" runat="server" Visible="false">

                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label17" runat="server" Text="Surname*" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectSurName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label18" runat="server" Text="Fisrt Name*" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectFirstName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label19" runat="server" Text="Middle Name" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectMiddleName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <br />

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label20" runat="server" Text="Date of Birth" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectDOB" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label23" runat="server" Text="Marital Status" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="dlSelectMaritalStatus" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Single</asp:ListItem>
                                                    <asp:ListItem>Married</asp:ListItem>
                                                    <asp:ListItem>Divorced</asp:ListItem>
                                                    <asp:ListItem>Seperated</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label24" runat="server" Text="Gender" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="dlSelectGender" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                    <asp:ListItem>Others</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label35" runat="server" Text="Last Visit" CssClass="lables" Font-Bold="false" Font-Size="Large" ForeColor="Blue" Font-Names="Century Gothic"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:Label ID="lblLastVisit" runat="server" Text="we" Font-Names="Century Gothic" Font-Size="Large" ForeColor="Green"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                             <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label37" runat="server" Text="Reason" Font-Bold="false" Font-Size="Large" ForeColor="Blue" CssClass="lables" Font-Names="Century Gothic"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtReasonLastVisit" runat="server" TextMode="MultiLine" Rows="4" Width="100%" Font-Names="Century Gothic" Font-Size="Large" ForeColor="Green"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-5 col-md-offset-1">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-8 col-md-offset-5">
                                                <asp:Image ID="customerImage" runat="server" CssClass="img-circle" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label34" runat="server" Text="Status" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:Label ID="lblStatus" runat="server" Text="Customer Status"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label25" runat="server" Text="Email" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectEmail" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label26" runat="server" Text="Mobile" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectMobile" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label27" runat="server" Text="Address" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtSelectAddress" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label22" runat="server" Text="Natinality" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="dlSelectNationality" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Kenyan</asp:ListItem>
                                                    <asp:ListItem>Ugandan</asp:ListItem>
                                                    <asp:ListItem>American</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        

                                    </div>
                                </div>
                            </asp:Panel>

                            <!---------------------------------------------------------------------------------------------------------------->

                            <asp:Panel ID="panelCorporateDetails" runat="server" Visible="false">

                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label2" runat="server" Text="Corporate Name" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateName" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label3" runat="server" Text="Registration No." CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateRegNumber" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label4" runat="server" Text="Country of Incorp." CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateCOI" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <br />

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label5" runat="server" Text="Registerd By" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateRO" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label6" runat="server" Text="Directors" CssClass="lables"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-8">
                                                <asp:Panel ID="panelDirectors" runat="server">
                                                </asp:Panel>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-lg-5 col-md-offset-1">

                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <asp:Label ID="Label8" runat="server" Text="Corporate Logo" CssClass="lables" ForeColor="Green" Font-Size="18px"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-8 col-md-offset-5">
                                                <asp:Image ID="imgCorporateLogo" runat="server" CssClass="img-circle" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label9" runat="server" Text="Email" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateEmail" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label10" runat="server" Text="Website" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateWebsite" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label7" runat="server" Text="Telephone" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateTelephone" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label11" runat="server" Text="PO. BOX" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporateBox" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label12" runat="server" Text="Physical Address" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtCorporatePhysicalAddress" runat="server" CssClass="form-control" Width="100%" BackColor="#FFFFCC" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>


                            <!---------------------------------------------------------------------------------------------------------->


                            <asp:Panel ID="panelLoanDetails" runat="server" Visible="false">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-4">
                                                <asp:Label ID="Label1" runat="server" Text="Loan Type" CssClass="lables"></asp:Label>
                                            </div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="dlLoanType" runat="server" CssClass="form-control">
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-3">
                            <asp:Button ID="cmdCancelApplication" runat="server" Text="Cancel Application" CssClass="btn btn-danger" ToolTip="Cancel Application" Visible="true" Width="100%" OnClick="cmdCancelApplication_Click" />
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdLoanDetails" runat="server" Text="Next (Loan Details)" CssClass="templatemo-edit-btn" ToolTip="Loan Applying" Visible="true" Width="100%" OnClick="cmdAddApplicant_Click" />
                            <asp:Button ID="cmdCreateApplication" runat="server" Text="Create Application" CssClass="btn bg-success" ToolTip="Create Application" Visible="false" Width="100%" OnClick="cmdCreateApplication_Click" />
                        </div>

                    </div>
                </asp:Panel>

                <!-------------------------------------------------------------------------------------------------------------------->
                <!------------------------------------------------------------------------------------------------------------------------------------------------>

                <asp:Panel ID="panelAmountRequired" runat="server" Visible="false">

                    <div class="row">
                        <div class="col-lg-7">
                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Label ID="Label13" runat="server" Text="Loan Amount Ksh." CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-5">
                                    <asp:TextBox ID="txtLAmount" runat="server" Width="100%" CssClass="form-control" TextMode="Number" autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Label ID="Label14" runat="server" Text="Period (in Months)" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-5">
                                    <asp:TextBox ID="txtLDuration" runat="server" Width="100%" CssClass="form-control" TextMode="Number" autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Label ID="Label15" runat="server" Text="Interest Rate (% Per Annum)" CssClass="myLabels" autocomplete="off"></asp:Label>
                                </div>
                                <div class="col-md-5">
                                    <asp:TextBox ID="txtLIntrest" runat="server" Width="100%" CssClass="form-control" TextMode="Number" autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Label ID="Label16" runat="server" Text="Loan purpose" CssClass="myLabels"></asp:Label>
                                </div>
                                <div class="col-md-5">
                                    <asp:TextBox ID="txtLoanPurpose" runat="server" Width="100%" CssClass="form-control" TextMode="MultiLine" Rows="5" autocomplete="off"></asp:TextBox>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <br />
                                <div class="col-md-3 col-md-offset-7">
                                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100%" CssClass="btn btn-success" OnClick="btnCalculate_Click" />
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-5">

                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Label ID="Label21" runat="server" Text="Loan Details" CssClass="myLabels" Font-Bold="true" Font-Names="Century Gothic" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>

                            <asp:Panel ID="panelCaculatedLoanDetails" runat="server" Visible="false">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label28" runat="server" Text="Monthly EMI:" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtMonthlyEMI" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label29" runat="server" Text="Total Amount with Interest" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtTA" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label30" runat="server" Text="Flat Interest Rate PA" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtFIRPA" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label31" runat="server" Text="Flat Interest Rate PM" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtFIRPM" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label32" runat="server" Text="Total Interest Amount" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtTIA" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <br />
                                            <div class="col-md-6">
                                                <asp:Label ID="Label33" runat="server" Text="Yearly Interest Amount" CssClass="myLabels"></asp:Label>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="txtYIA" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </asp:Panel>
                        </div>

                    </div>

                     <div class="row">
                        <br />
                         <br />
                        <div class="col-md-12">
                            <asp:GridView ID="gvPaymentDetails" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="true">

                            </asp:GridView>
                        </div>
                    </div>

                    <div class="row">
                        <br />
                        <div class="col-md-3 col-lg-offset-9">
                               <asp:Button ID="cmdApply" runat="server" Text="Create Application" CssClass="btn btn-success" ToolTip="Cancel Application" Visible="false" Width="100%" OnClick="cmdApply_Click" />                                                     
                        </div>
                    </div>

                </asp:Panel>




                <!------------------------------------------------------------------------------------------------------------------------------------------------>
                <!-------------------------------------------------------------------------------------------------------------------->

            </div>
        </div>

    </form>
</body>
</html>
