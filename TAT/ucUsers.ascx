<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucUsers.ascx.cs" Inherits="TAT.ucUsers" %>
<meta charset="utf-8" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/templatemo-style.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="css/tabs_style.css" />


<div class="row">
    <ul class="tabrow">
        <li>
            <asp:LinkButton ID="lnkUserPersonalDetails" runat="server" ToolTip="User Personal Details" OnClick="lnkUserPersonalDetails_Click">Personal Details</asp:LinkButton>
        </li>
        <li>
            <asp:LinkButton ID="lnkUserContactDetails" runat="server" ToolTip="User Contact Details" OnClick="lnkUserContactDetails_Click">Contact Details</asp:LinkButton>
        </li>
        <li>
            <asp:LinkButton ID="lnkUserOtherDetails" runat="server" ToolTip="User Other Details" OnClick="lnkUserOtherDetails_Click">Other Details</asp:LinkButton>
        </li>
    </ul>
</div>

<asp:Panel ID="panelPersonaLDetails" runat="server" Visible="false" CssClass="panelTwo">
    <div class="row">
        <div class="col-lg-6">

            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label11" runat="server" Text="ID/Passport No*" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtIDPassNo" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label12" runat="server" Text="SurName*" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtSurName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label13" runat="server" Text="Fisrt Name*" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label14" runat="server" Text="Middle Name" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label15" runat="server" Text="Employee No" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtEmployeeNo" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label3" runat="server" Text="Leave Date From" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLeaveDateFrom" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="Leave Date To" CssClass="myLables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLeaveDateTo" runat="server" CssClass="form-control" Width="100%" autocomplete="off" TextMode="Date"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-lg-5 col-md-offset-1">
            <div class="row">


                <div class="row">
                    <br />
                    <div class="col-md-4">
                        <asp:Label ID="Label18" runat="server" Text="Gender" CssClass="myLables"></asp:Label>
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

            <div class="col-md-2 col-md-offset-8">
                <asp:Button ID="cmdCompletePersonalDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompletePersonalDetails_Click" />
            </div>
        </div>
    </div>
</asp:Panel>

<asp:Panel ID="PanelContacts" runat="server" Visible="false" CssClass="panelTwo">


    <div class="row">
        <br />
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="User name*" CssClass="lables"></asp:Label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <br />
        <div class="col-md-4">
            <asp:Label ID="Label5" runat="server" Text="User password*" CssClass="lables"></asp:Label>
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="txtUserpassword" runat="server" CssClass="form-control" Width="100%" autocomplete="off"></asp:TextBox>
        </div>
    </div>

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
        <br />
        <div class="col-md-2 col-md-offset-6">
            <asp:Button ID="cmdBackToPersonalDetails" runat="server" Text="Back" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdBackToPersonalDetails_Click" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="cmdCompleteContactDetails" runat="server" Text="Next" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCompleteContactDetails_Click" />
        </div>
    </div>

</asp:Panel>

<asp:Panel ID="PanelOtherDetails" runat="server" Visible="false" CssClass="panelTwo">
    <div class="row">
        <div class="col-lg-6">
            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text=" Status" CssClass="lables"></asp:Label>
                </div>
                <div class="col-md-8">
                    <asp:DropDownList ID="dlStatus" runat="server" CssClass="form-control">
                        <asp:ListItem>OFF</asp:ListItem>
                        <asp:ListItem>ON</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <br />
                <div class="col-md-4">
                    <asp:Label ID="Label38" runat="server" Text="Branch*" CssClass="lables"></asp:Label>
                </div>

                <div class="col-md-8">
                    <asp:DropDownList ID="dlBranches" runat="server" CssClass="form-control" >
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
        <div class="col-md-2 col-md-offset-6">
            <asp:Button ID="cmdBackToPersonalContacts" runat="server" Text="Back" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdBackToPersonalContacts_Click" />
        </div>
        <div class="col-md-2">
            <asp:Button ID="cmdSubmit" runat="server" Text="Submit" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdSubmit_Click" />
        </div>
    </div>
</asp:Panel>

<asp:Panel ID="panelListUsers" runat="server" Visible="false" CssClass="panelTwo">
    <div class="row">
        <asp:GridView ID="gvListUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Width="100%"></asp:GridView>
    </div>
</asp:Panel>

