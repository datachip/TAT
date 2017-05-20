<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="TAT.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Housing Finance LTS</title>
</head>

<body class="light-gray-bg">
    <form id="form1" runat="server">

        <br />
        <br />
        <br />
        <br />
        <div class="templatemo-content-widget templatemo-login-widget white-bg">
            <div class="row">
                <div class="col-md-3">
                    <img src="images/HFC Logo.jpg" />
                </div>
                <div class="col-md-4 col-md-offset-5">
                    <br />
                     <asp:Label ID="Label1" runat="server" Text="User Login" Visible="true" Font-Size="Large" Font-Bold="true" Font-Names="Century Gothic" ForeColor="DarkOrange"></asp:Label>
                </div>
            </div>

            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="emmanuel@hfg.com" ToolTip="Enter Email"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox squaredTwo">
                    <!--Remember Me Here---->
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="cmdLogin" runat="server" Text="Login" CssClass="templatemo-blue-button width-100" OnClick="cmdLogin_Click" BackColor="DarkBlue" />
            </div>
                <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" Font-Size="Medium"></asp:Label> <asp:LinkButton ID="lnkSupport" runat="server" Visible="False">Support</asp:LinkButton>
           
        </div>
        
        
    </form>

    <script>
        function show() {
            s = "<table width='100%' cellspacing='2' cellpadding='0' border='0'>'";
            s += "'<tr><td><img src='images/HFC Logo.jpg' border='0'/> </td> <td valign='top'>WikiPedia</td></tr>'";
            s += "'<tr><td colspan='2' class='Text'><hr/>this is a test for simple tooltip. <br/>You can add text and images to the tooltip</td></tr>'";
            s += "'</table>'";
            toolTip(s)
        }
        </script>
</body>
</html>
