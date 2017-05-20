<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmsignUp.aspx.cs" Inherits="getPRINTs.frmsignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Sonaja (Taita Taveta University College CU)</title>

</head>
<body class="light-gray-bg">

    <form id="form1" runat="server">

        <div class="templatemo-content col-1 light-gray-bg">


            <div class="templatemo-top-nav-container">
                <div class="row">
                    <h1 class="heading">Taita Taveta University College Christian Union</h1>
                    <br />
                    <nav class="templatemo-top-nav col-md-12">
                        <ul class="text-uppercase">
                            <li><a href="#" class="active">Home</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">About CU</a></li>
                            <li><a href="login.html">Contact CU</a></li>
                        </ul>
                    </nav>
                </div>
            </div>


        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Sign Up </h2>
                <p>Please fill in all the details here.</p>
                <div class="row form-group">
                    <div class="col-md-4 col-md-4 form-group">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="fisrtName" runat="server" class="form-control" placeholder="John"></asp:TextBox>
                    </div>
                    <div class="col-md-4 col-md-4 form-group">
                        <asp:Label ID="Label2" runat="server" Text="Middle Name"></asp:Label>
                        <asp:TextBox ID="txtMiddleName" runat="server" class="form-control" placeholder="John"></asp:TextBox>
                    </div>
                    <div class="col-lg-4 col-md-4 form-group">
                        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="John"></asp:TextBox>
                    </div>



                    <div class="col-lg-4 col-md-4 form-group">
                        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="John@hotmail.com"></asp:TextBox>
                    </div>
                    <div class="col-lg-4 col-md-4 form-group">
                        <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-4 col-md-4 form-group">
                        <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Male"> Male </asp:ListItem>
                            <asp:ListItem Value="Female"> Female </asp:ListItem>
                            <asp:ListItem Value="Others"> Others </asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>


                <div class="row form-group">
                    <div class="col-lg-6 col-md-6 form-group">
                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="John" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-lg-6 col-md-6 form-group">
                        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="John" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group col-md-offset-2">
                    <div class="col-lg-3 col-md-3 form-group">
                        <asp:Label ID="Label8" runat="server" Text="Year of Study"></asp:Label>
                        <asp:DropDownList ID="dropStudyYear" runat="server" CssClass="form-control">
                            <asp:ListItem Value="First"> First </asp:ListItem>
                            <asp:ListItem Value="Second"> Second </asp:ListItem>
                            <asp:ListItem Value="Third"> Third </asp:ListItem>
                            <asp:ListItem Value="Fourth"> Fourth </asp:ListItem>
                            <asp:ListItem Value="Fifth"> Fifth </asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-lg-3 col-md-3 form-group">
                        <asp:Label ID="Label9" runat="server" Text="Department"></asp:Label>
                        <asp:DropDownList ID="dropDpt" runat="server" CssClass="form-control" OnSelectedIndexChanged="dropDpt_SelectedIndexChanged" OnTextChanged="dropDpt_TextChanged">
                            <asp:ListItem Value="M&I"> M&I </asp:ListItem>
                            <asp:ListItem Value="Business"> Business </asp:ListItem>
                            <asp:ListItem Value="MMPE"> MMPE </asp:ListItem>
                            <asp:ListItem Value="Diploma"> Diploma </asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-lg-3 col-md-3 form-group">
                        <asp:Label ID="Label10" runat="server" Text="Course"></asp:Label>
                        <asp:DropDownList ID="dropCourse" runat="server" CssClass="form-control">
                            <asp:ListItem Value="HTML"> HTML </asp:ListItem>
                            <asp:ListItem Value="HTML"> HTML </asp:ListItem>
                            <asp:ListItem Value="HTML"> HTML </asp:ListItem>
                            <asp:ListItem Value="HTML"> HTML </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="row form-group">
                    <strong><asp:Label ID="Label12" runat="server" Text="Choose Ministry"></asp:Label></strong>

                    <div class="col-lg-12 form-group">
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="server" id="c3" value="" checked>
                            <label for="c3" class="font-weight-400"><span></span>Media Ministry</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="member" id="c4" value="">
                            <label for="c4" class="font-weight-400"><span></span>Member Status</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="expired" id="c5" value="">
                            <label for="c5" class="font-weight-400"><span></span>Expired Members</label>
                        </div>
                    </div>
                    <div class="col-lg-12 form-group">
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="server" id="c3" value="" checked>
                            <label for="c3" class="font-weight-400"><span></span>Server Status</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="member" id="c4" value="">
                            <label for="c4" class="font-weight-400"><span></span>Member Status</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="checkbox" name="expired" id="c5" value="">
                            <label for="c5" class="font-weight-400"><span></span>Expired Members</label>
                        </div>
                    </div>

                </div>
                <div class="row form-group">
                    <div class="col-lg-12 form-group">
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="radio" name="radio" id="r4" value="">
                            <label for="r4" class="font-weight-400"><span></span>Bootstrap</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="radio" name="radio" id="r5" value="" checked>
                            <label for="r5" class="font-weight-400"><span></span>Foundation</label>
                        </div>
                        <div class="margin-right-15 templatemo-inline-block">
                            <input type="radio" name="radio" id="r6" value="">
                            <label for="r6" class="font-weight-400"><span></span>Skeleton</label>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-12">
                        <label class="control-label templatemo-block">File Input</label>
                        <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                        <input type="file" name="fileToUpload" id="fileToUpload" class="filestyle" data-buttonname="btn-primary" data-buttonbefore="true" data-icon="false">
                        <p>Maximum upload size is 5 MB.</p>
                    </div>
                </div>
                <div class="form-group text-right">
                    <button type="submit" class="templatemo-blue-button">Update</button>
                    <button type="reset" class="templatemo-white-button">Reset</button>
                </div>
            </div>
            <footer class="text-right">
                <p>
                    Copyright &copy; 2015 Taita Taveta University College Christian Union 
            | Designed by <a href="#" target="">Media Ministry</a>
                </p>
            </footer>
        </div>
            </div>
    </form>
</body>
</html>
