<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="getPRINTs.frmLogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<meta charset="utf-8"/>
	    <link href="css/font-awesome.min.css" rel="stylesheet"/>
	    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	    <link href="css/templatemo-style.css" rel="stylesheet"/>
    <title>Sonaja (getPrints)</title>
</head>
<body class="light-gray-bg">
    <form id="form1" runat="server" class="templatemo-login-form">
        <div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
	          <div class="square"></div>
	          <h1>User Login</h1>
	        </header>
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>	 
                        <asp:TextBox ID="txtuUsername" runat="server" name="username" CssClass="form-control" placeholder="brenda@fashion.com"></asp:TextBox>        
		          	</div>	
	        	</div>
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                        <asp:TextBox ID="txtPass" runat="server" name="password" class="form-control" placeholder="******" TextMode="Password"></asp:TextBox>		           
		          	</div>	
	        	</div>	          	
	          	<div class="form-group">
				    <div class="checkbox squaredTwo">
				        <input type="checkbox" id="c1" name="cc" />
						<label for="c1"><span></span>Remember me</label>
				    </div>				    
				</div>
				<div class="form-group">
                    <asp:Button ID="cmdLogin" runat="server" Text="Login" CssClass="templatemo-blue-button width-100" name="submit" OnClick="cmdLogin_Click"/>
				</div>
		</div>
        <div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>Not a registered user yet? <strong><asp:LinkButton ID="lnkOne" runat="server" CssClass="blue-text" OnClick="lnkOne_Click">Sign up now!</asp:LinkButton></strong> </p>
		</div>
    </form>
</body>
</html>
