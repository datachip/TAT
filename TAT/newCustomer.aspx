<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newCustomer.aspx.cs" Inherits="TAT.newCustomer" %>

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
                            <asp:LinkButton ID="LinkButton2" runat="server" ToolTip="Personal Details" OnClick="LinkButton2_Click" CssClass="active">Add Customer</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" ToolTip="Contacts" OnClick="LinkButton1_Click" Visible="false">All Customers</asp:LinkButton>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">

                <asp:Panel ID="paneAllCustomers" runat="server" Visible="false">
                    <h2 class="margin-bottom-10">All Customers</h2>
                    <br />
                    <label class="margin-bottom-10">Individual Customers</label>
                    <br />
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
                            <asp:Label ID="lblResult1" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:LinkButton ID="lnkResult1" runat="server" Visible="false" OnClick="lnkResult1_Click">Click Here</asp:LinkButton>
                            <br />
                            <asp:GridView ID="gvAllCustomers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="False" OnSelectedIndexChanged="gvAllCustomers_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="panelCustomerSelect" runat="server" Visible="false">
                    <h2 class="margin-bottom-10">Update | Delete Customer</h2>
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
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtSelectDOB" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-4">
                                    <asp:Label ID="Label23" runat="server" Text="Marital Status" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-6">
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
                                <div class="col-md-6">
                                    <asp:DropDownList ID="dlSelectGender" runat="server" CssClass="form-control">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-5 col-md-offset-1">
                            <div class="row">
                                <br />
                                <div class="col-md-8 col-md-offset-5">
                                    <asp:Image ID="customerImage" runat="server" CssClass="img-circle"/>
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
                    <div class="row">
                        <br />
                        <br />
                        <div class="col-md-2 col-md-offset-6">
                            <asp:Button ID="cmdDelet" runat="server" Text="Delete" Width="100%" CssClass="btn btn-danger" OnClick="cmdDelet_Click" />
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="cmdUpdate" runat="server" Text="Update" Width="100%" CssClass="btn btn-warning" OnClick="cmdUpdate_Click" />
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="cmdClose" runat="server" Text="Close" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdClose_Click" />
                        </div>
                    </div>
                </asp:Panel>


                <asp:Panel ID="panelChooseCustomerType" runat="server" Visible="true">

                    <h2 class="margin-bottom-10">New Customer</h2>
                    <div class="row">
                         <br />
                        <div class="col-md-4">
                            <asp:Button ID="cmdIndividualCustomer" runat="server" Text="Individual Customer" Width="100%" Height="50px" Font-Size="Large" Font-Names="Century Gothic" CssClass="templatemo-edit-btn" OnClick="cmdIndividualCustomer_Click" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="cmdCoprateCustomer" runat="server" Text="Corporate Customer" Width="100%" Height="50px" Font-Names="Century Gothic" Font-Size="Large" CssClass="templatemo-edit-btn" OnClick="cmdCoprateCustomer_Click"/>
                        </div>

                    </div>
                </asp:Panel>



                <!----------------------------------------------------------------------------------------------------------------------------------------------------------->

                <asp:Panel ID="panelAddCustomer" runat="server" Visible="false">

                    <h2 class="margin-bottom-10">New Customer</h2>
                    <br />
                    <label class="margin-bottom-10">Individual Customer</label>
                    <br />

                    <div class="row">
                        <ul class="tabrow">
                            <li>
                                <asp:LinkButton ID="lnkCustomerPersonal" runat="server" ToolTip="Personal Details" CssClass="selected" OnClick="lnkCustomerPersonal_Click">Personal Details</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkCustomerContact" runat="server" ToolTip="Contacts" CssClass="" OnClick="lnkCustomerContact_Click">Contacts</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkCustomerOther" runat="server" ToolTip="Other Details" CssClass="">Other Details</asp:LinkButton>
                            </li>
                        </ul>
                    </div>

                    <div class="row">
                        <asp:Panel ID="panelOne" runat="server" Visible="true" CssClass="panelOne">
                            <div class="row">
                                <div class="col-lg-5">

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label5" runat="server" Text="ID/Passport No*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtIDPassNo" runat="server" CssClass="form-control" onblur="checkIDAvailability();" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label1" runat="server" Text="SurName*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtSurName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label2" runat="server" Text="Fisrt Name*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label3" runat="server" Text="Middle Name" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label4" runat="server" Text="Date of Birth" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label6" runat="server" Text="Upload Scan" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:FileUpload ID="fuPassportIDScan" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-5 col-md-offset-1">
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label7" runat="server" Text="Marital Status" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:DropDownList ID="dlMaritalStatus" runat="server" CssClass="form-control">
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
                                            <asp:Label ID="Label8" runat="server" Text="Gender" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:DropDownList ID="dlGender" runat="server" CssClass="form-control">
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdCompletePersonalDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompletePersonalDetails_Click" />
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="panelTwo" runat="server" Visible="false" CssClass="panelTwo">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label9" runat="server" Text="Mobile*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label10" runat="server" Text="Email*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label11" runat="server" Text="Po. Box" CssClass="lables"></asp:Label>
                                        </div>

                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtAdrress" runat="server" CssClass="form-control" Width="100%" placeholder="Address" autocomplete="off" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        </div>  
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdCompleteContactDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompleteContactDetails_Click" />
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="panelThree" runat="server" Visible="false" CssClass="panelThree">
                            <div class="row">
                                <div class="col-lg-6">
                                  
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label15" runat="server" Text="Natinality" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:DropDownList ID="dlNationality" runat="server" CssClass="form-control">
                                                <asp:ListItem>Kenyan</asp:ListItem>
                                                <asp:ListItem>Ugandan</asp:ListItem>
                                                <asp:ListItem>American</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label38" runat="server" Text="Branch*" CssClass="lables"></asp:Label>
                                        </div>
                                        
                                         <div class="col-md-8">
                                            <asp:DropDownList ID="dlBranches" runat="server" CssClass="form-control">
                                               
                                            </asp:DropDownList>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label40" runat="server" Text="Department*" CssClass="lables"></asp:Label>
                                        </div>
                                        
                                         <div class="col-md-8">
                                            <asp:DropDownList ID="dlDepartments" runat="server" CssClass="form-control">
                                               
                                            </asp:DropDownList>
                                        </div>

                                    </div>


                                </div>
                            </div>
                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdCompleteAllDetails" runat="server" Text="Add Customer" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompleteAllDetails_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>




                <!------------------------------------------------------------------------------------------------------------------------------------------------->

                <asp:Panel ID="panelAddCorporate" runat="server" Visible="false">

                    <h2 class="margin-bottom-10">New Customer</h2>
                    <br />
                    <label class="margin-bottom-10">Corporate Customer</label>
                    <br />
                    <div class="row">
                        <ul class="tabrow">
                            <li>
                                <asp:LinkButton ID="lnkCorporateDetails" runat="server" ToolTip="Personal Details" CssClass="selected">Corporate Details</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkCorporateContacts" runat="server" ToolTip="Contacts" CssClass="" OnClick="lnkCorporateContacts_Click">Contacts</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkCorporateDirectors" runat="server" ToolTip="Other Details" CssClass="">Directors</asp:LinkButton>
                            </li>
                        </ul>
                    </div>

                    <div class="row">
                        <asp:Panel ID="panelCorporateDetails" runat="server" Visible="true" CssClass="panelOne">
                            <div class="row">
                                <div class="col-lg-5">

                                     <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label16" runat="server" Text="Registration Number*" CssClass="lables" focus="true"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="txtCorporateRegNumber" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label14" runat="server" Text="Name*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="txtCorporateName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                   
                                    <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label21" runat="server" Text="Registered By*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="txtCorporateRegBy" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <br />

                                    <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label28" runat="server" Text="Date of Registration" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="txtCorporateDOR" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label41" runat="server" Text="Branch" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-5">
                                            <asp:Label ID="Label30" runat="server" Text="Upload Logo" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:FileUpload ID="fuLogo" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-5 col-md-offset-1">
                                    <div class="row">
                                        <br />
                                        <div class="col-md-6">
                                            <asp:Label ID="Label31" runat="server" Text="Nature of Business" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList ID="dlNOB" runat="server" CssClass="form-control">
                                                <asp:ListItem>School</asp:ListItem>
                                                <asp:ListItem>Limited Company</asp:ListItem>
                                                <asp:ListItem>Sacco</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-6">
                                            <asp:Label ID="Label32" runat="server" Text="Country of Incorporation" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList ID="dlCOI" runat="server" CssClass="form-control">
                                                <asp:ListItem>Kenya</asp:ListItem>
                                                <asp:ListItem>Uganda</asp:ListItem>
                                                <asp:ListItem>Canada</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdNextToContacts" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdNextToContacts_Click" />
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="panelCorporateContacts" runat="server" Visible="false" CssClass="panelTwo">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label33" runat="server" Text="Telephone*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtCorporateTelephone" runat="server" CssClass="form-control" Width="100%" TextMode="Phone" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label34" runat="server" Text="Email*" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtCorporateEmail" runat="server" CssClass="form-control" Width="100%" TextMode="Email" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label39" runat="server" Text="Website" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtCorporateWebsite" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label35" runat="server" Text="Address" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-1 col-md-offset-1">
                                            <asp:Label ID="Label36" runat="server" Text="Zip" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>

                                        <div class="col-md-1">
                                            <asp:Label ID="Label37" runat="server" Text="Code" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-7 col-md-offset-5">
                                            <br />
                                            <asp:TextBox ID="txtCorporateAddress" runat="server" CssClass="form-control" Width="100%" placeholder="box address" autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <br />
                                        <div class="col-md-4">
                                            <asp:Label ID="Label29" runat="server" Text="Physical Address" CssClass="lables"></asp:Label>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:TextBox ID="txtCorporatePhysicalAddress" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdNextToDirectors" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdNextToDirectors_Click" />
                                </div>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="panelCorporateDirectors" runat="server" Visible="false" CssClass="panelThree">
                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:Panel ID="panelDirectors" runat="server">
                                        
                                    </asp:Panel>
                                </div>
                            </div>

                            <div class="row">
                                            <br />
                                            <br />

                                            <div class="col-md-2">
                                                <asp:Button ID="cmdAddDirector" runat="server" Text="Add" ToolTip="Add a Director" Width="100%" CssClass="btn bg-success" OnClick="cmdAddDirector_Click" />
                                            </div>
                                        </div>
                            <div class="row">
                                <br />
                                <br />

                                <div class="col-md-2 col-md-offset-10">
                                    <asp:Button ID="cmdAddCorporate" runat="server" Text="Add Customer" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdAddCorporate_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
                <!------------------------------------------------------------------------------------------------------------------------------------------------->

                <asp:Panel ID="panelAllIndividualCustomers" runat="server" Visible="false">
                    <label class="margin-bottom-10">Choose Director</label>
                    <br />
                    <br />
                    <label class="margin-bottom-10">Individual Customers</label>

                    <div class="row">
                        
                        <div class="col-md-3">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter ID" Visible="true"></asp:TextBox>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="Button2" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search by ID" Visible="true" />
                        </div>
                    </div>

                    <!------>

                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblXX" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                            <asp:LinkButton ID="lnkXX" runat="server" Visible="false">Click Here</asp:LinkButton>
                            <br />
                            <asp:GridView ID="gvAllIndividualCustomers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="true" OnSelectedIndexChanged="gvAllIndividualCustomers_SelectedIndexChanged">
                                <Columns>
                                    <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </asp:Panel>
            </div>

        </div>

    </form>

    <script>
        function checkIDAvailability() {
            //alert("Left Text Box");
        }
    </script>
</body>
</html>
