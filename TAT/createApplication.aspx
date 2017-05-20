<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createApplication.aspx.cs" Inherits="TAT.createApplication" %>

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
                            <asp:LinkButton ID="lnkHome" runat="server" ToolTip="Home" OnClick="lnkHome_Click">Back Home</asp:LinkButton>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <!--- Start of Body --->

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Creating New Application</h2>
                <div class="row">

                    <div class="col-lg-12">
                        <asp:Label ID="lblCustomerType" runat="server" Text="Customer Type" ForeColor="#993300" Font-Size="Large"></asp:Label>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-5">
                        <asp:Label ID="lblNameApplicant" runat="server" Text="" Font-Names="Century Gothic" ForeColor="#660033" Font-Size="Medium"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:Label ID="lblIDApplicant" runat="server" Text="" Font-Names="Century Gothic" ForeColor="#660033" Font-Size="Medium"></asp:Label>
                    </div>
                </div>

                <div class="templatemo-content-widget light-gray-bg">
                    
                    <asp:Panel ID="panelChooseLoanType" runat="server" Visible="false">

                        <h2> Choose Loan Type </h2>
                        <div class="row">
                            <br />
                            <div class="col-lg-12">
                                <div class="row">
                                    <br />
                                    <div class="col-md-4">
                                        <asp:Label ID="Label19" runat="server" Text="Loan Type" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="dlLoanType" runat="server" CssClass="form-control">
                                            <asp:ListItem>Mortage</asp:ListItem>
                                            <asp:ListItem>Car Loan</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-3 col-lg-offset-9">
                                        <asp:Button ID="cmdGo" runat="server" Text="Go" CssClass="btn btn-success" OnClick="cmdGo_Click" />
                                    </div>
                                </div>
                                </div>
                            </div>
                     </asp:Panel>

                    <asp:Panel ID="panelMortage" runat="server" >
                         <div class="row">
                        <ul class="tabrow">
                            <li>
                                <asp:LinkButton ID="lnkPanelOne" runat="server" ToolTip="Personal Details" CssClass="selected" OnClick="lnkCustomerPersonal_Click" >Particulars One</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkPanelTwo" runat="server" ToolTip="Contacts" CssClass="" OnClick="lnkCustomerContact_Click">Particulars Two</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkPanelThree" runat="server" ToolTip="Other Details" CssClass="" OnClick="lnkCustomerOther_Click">Particulars Three</asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                        <br />
                        <asp:Panel ID="PanelParticularsOne" runat="server" Visible="false">
                           
                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label1" runat="server" Text="Plot Number of property to me mortaged*" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtPlotNumber" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label20" runat="server" Text="Estate telephone Number if applicable" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtEstateStateTelephone" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label18" runat="server" Text="Estate Name, if applicable" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtEstate" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                            <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label36" runat="server" Text="  Estate Number. if applicable" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                            
                                   
                            <div class ="row">
                                 <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label37" runat="server" Text="Town" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtTown" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                             
                                </div>
                                 
                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label22" runat="server" Text="Name of Occuppier" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtNameofOccuppier" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                             <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label16" runat="server" Text=" Address of occupier" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtAddressOccupier" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>
                              <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label17" runat="server" Text="Telephone number of occupier" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtTelephoneNoOccupier" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label23" runat="server" Text="Where will the keys be obtained from?" CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtWherekeysObtainedFrom" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label24" runat="server" Text="Have the occupants agreed to allow the company valuer to visit the premises?" CssClass="lables"></asp:Label>
                                    </div>
                                     <div class="col-md-3">
                                    <asp:DropDownList ID="DropOccupantAgree" runat="server" CssClass="form-control">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                </div>


                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label25" runat="server" Text="Purchase price (if urban plots, state so)  Kshs." CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <br />
                                <br />

                                <div class="row">
                                    <div class="col-md-9">
                                        <asp:Label ID="Label26" runat="server" Text="Indicate sources to meet shortfall between purchases/cost and Loan Amount" Font-Bold="true"></asp:Label>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label27" runat="server" Text="PersonalSavings  Kshs." CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                           <asp:TextBox ID="txtPersonalSavings" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                       
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label28" runat="server" Text="Dispoasal of Investments  Kshs." CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                         <asp:TextBox ID="txtDispoasalInvestments" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                        
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label29" runat="server" Text="Amount already spent (waht source)  Kshs." CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtAmountAlreadySpent" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label30" runat="server" Text="Other (specify)  Kshs." CssClass="lables"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtOther" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <br />
                                    <div class="col-md-5">
                                        <asp:Label ID="Label31" runat="server" Text="TOTAL  Kshs." CssClass="lables" Font-Bold="true"></asp:Label>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtTotalKshs" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                    </div>
                                </div>


                        </asp:Panel>
                        <br />
                        <asp:Panel ID="PanelParticularsTwo" runat="server" Visible="false">
                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label32" runat="server" Text="Do you intent to create a second mortage?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="drpCreateSecondMortage" runat="server" CssClass="form-control">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label33" runat="server" Text="Reason?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" Width="100%" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label34" runat="server" Text="Mortagee" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtMortagee" runat="server" CssClass="form-control" Width="100%" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label35" runat="server" Text="Is the property freehold or leasehold?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-5">
                                    <asp:DropDownList ID="DrpPropertyFreehold" runat="server" CssClass="form-control">
                                        <asp:ListItem>Free</asp:ListItem>
                                        <asp:ListItem>Lease</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label5" runat="server" Text="If leasedhold,state the term of years unexpired and annual ground rent" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTermYrsUnexpired" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label6" runat="server" Text="Give details of any outstanding road or sewage charges.?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtOutstandingRoadSewageCharges" runat="server" CssClass="form-control" Width="100%" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="PanelParticularsThree" runat="server" Visible="true">
                          

                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label2" runat="server" Text="What is the ratable value?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtRatableValue" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <br />
                                <div class="col-md-10">
                                    <asp:Label ID="Label3" runat="server" Text="9.If property to be mortaged comprises flats ,maisonettes or other rentable accomodation,attach  the following" CssClass="lables"></asp:Label>
                                </div>
                               
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5 col-lg-offset-1">
                                    <asp:Label ID="Label4" runat="server" Text="(i).Cashflow projections for the next 3 years." CssClass="lables"></asp:Label>
                                </div>
                                 <div class="col-md-3">
                                     
                                   <asp:FileUpload ID="FileUploadCashFlow" runat="server" />
                                </div>
                                 <div class="col-md-2">
                                   <asp:Button ID="BtnCashFlowAttach" runat="server" Text="Attach" Width="100%" CssClass="templatemo-edit-btn"  />
                                </div>
                               
                            </div>
                             <div class="row">
                                <br />
                                <div class="col-md-5 col-lg-offset-1">
                                    <asp:Label ID="Label7" runat="server" Text="(ii).Professional valuation report to be done by a company appointed valuer." CssClass="lables"></asp:Label>
                                </div>
                                 <div class="col-md-3">
                                     
                                   <asp:FileUpload ID="ProfesionalReport" runat="server" />
                                </div>
                                 <div class="col-md-2">
                                   <asp:Button ID="btnEvaluationAttach" runat="server" Text="Attach" Width="100%" CssClass="templatemo-edit-btn"  />
                                </div>
                               
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label8" runat="server" Text="10. Is the property mortagaged else where now?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-3">
                                    <asp:DropDownList ID="DrpListIsPropMorg" runat="server" CssClass="form-control">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                </div>
                                 
                               
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label9" runat="server" Text="12.Where are the title deeds?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtWhereTheTitleDeeds" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                                </div>
                                 
                               
                            </div>
                             <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label10" runat="server" Text="13.Does the property have a guest house?" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DrpListGuestHouse" runat="server" CssClass="form-control" >
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                               
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label11" runat="server" Text="14.Where the property is built please state the materials used in construction:" CssClass="lables"></asp:Label>
                                </div>
                          
                            </div>
                            <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label12" runat="server" Text="a.The walls." CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTheWalls" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                                </div>
                                 
                               
                            </div>
                             <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label13" runat="server" Text="b.The roof" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTheRoof" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                                </div>
                                 
                               
                            </div>
                             <div class="row">
                                <br />
                                <div class="col-md-5 ">
                                    <asp:Label ID="Label14" runat="server" Text="c.Area of land(attach copy of official search or title.)" CssClass="lables"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:FileUpload ID="FileUploadTitle" runat="server" />
                                 
                                </div>
                                 <div class="col-md-3">
                                   <asp:Button ID="btnAttachTitle" runat="server" Text="Attach" Width="100%" CssClass="templatemo-edit-btn"  />
                                </div>
                                 
                               
                            </div>
                           

                            <div class="row">
                                <br />
                                <div class="col-md-5">
                                    <asp:Label ID="Label15" runat="server" Text="15.Indicate the nearest township,municipality,or trading centre." CssClass="lables"></asp:Label>
                                </div>
                               <div class="col-md-3">
                                    <asp:TextBox ID="txtTownshipmMnicipality" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                                </div>
                                 
                            </div>
                             <asp:Button ID="btnAdd" runat="server" Text="Add" Width="100%" CssClass="templatemo-edit-btn" OnClick="btnAdd_Click"  />
                        </asp:Panel>
                        <br /><br />
                                    <asp:Label ID="Label38" runat="server" Text="Should you wish to give any other relevant information ,please do so on separate sheet of paper" CssClass="lables"></asp:Label>

                           
                    </asp:Panel>
                </div>

            </div>
        </div>

    </form>
</body>
</html>
