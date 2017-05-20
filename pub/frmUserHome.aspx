<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUserHome.aspx.cs" Inherits="getPRINTs.frmNormUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css' />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />

    <title>Sonaja (Taita Taveta University College CU)</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="templatemo-flex-row">
            <div class="templatemo-sidebar">
                <header class="templatemo-site-header">
                    <asp:Label ID="lblUserName" runat="server" Text="Derek Mugambi" ForeColor="White" Font-Bold="false" Font-Size="Large" Font-Names="Century Gothic"></asp:Label>
                </header>
                <div class="profile-photo-container">
                    <a href="#popup1"><img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive" /></a>
                    <div class="profile-photo-overlay"></div>
                </div>
                <div class="mobile-menu-icon">
                    <i class="fa fa-bars"></i>
                </div>
                <nav class="templatemo-left-nav">
                    <ul>
                        <li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>Derek M. Shakes</a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i>Messages</a></li>
                        <li><a href="http://localhost:11477/frmUserFriends.aspx"><i class="fa fa-users fa-fw"></i>Friends</a></li>
                        <li><a href="http://localhost:11477/frmSetting.aspx"><i class="fa fa-gear"></i>Setting</a></li>
                        <li><a href="#"><i class="fa fa-empire"></i>Blog</a></li>
                        <li><a href="http://localhost:11477/frmLogin.aspx"><i class="fa fa-eject fa-fw"></i>Sign Out</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Main content -->
            <div class="templatemo-content col-1 light-gray-bg">
                <div class="templatemo-top-nav-container">
                    <div class="row">
                        <h2>Taita Taveta University College Christian Union</h2>
                        <br />
                        <nav class="templatemo-top-nav col-lg-12 col-md-12">
                            <ul class="text-uppercase">
                                <li><a href="#" class="active">Home</a></li>
                                <li><a href="http://localhost:11477/frmUserFriends.aspx">Friends</a></li>
                                <li><a href="#">Notifications</a></li>
                                <li><a href="#">Messages</a></li>
                                <li><a href="http://localhost:11477/frmLogin.aspx">Sign Out</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="templatemo-content-container">
                    <!--- Body Here --->
                    <div class="box">
	<a class="button" href="#popup1">Let me Pop up</a>
</div>
                    

                    <!--- End of Body --->

                    <!--- Pop Up-->

                    <div id="popup1" class="overlay">
                        <div class="popup">
                            <h2>Here i am</h2>
                            <a class="close" href="#">&times;</a>
                            <div class="content">

                                <!--- Pop Up Content --->
                                
                             


                            </div>
                        </div>
                    </div>

                    <!--- Pop Up-->

                    <footer class="text-right">
                        <p>
                            Copyright &copy; 2015 Taita Taveta University College Christian Union 
            | Designed by <a href="#" target="">Media Ministry</a>
                        </p>
                    </footer>
                </div>
            </div>
        </div>

        <!-- JS -->
        <script src="js/jquery-1.11.2.min.js"></script>
        <!-- jQuery -->
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <!--  jQuery Migrate Plugin -->
        <script src="https://www.google.com/jsapi"></script>
        <!-- Google Chart -->
        <script>
            $(document).ready(function () {
                if ($.browser.mozilla) {
                    //refresh page on browser resize
                    // http://www.sitepoint.com/jquery-refresh-page-browser-resize/
                    $(window).bind('resize', function (e) {
                        if (window.RT) clearTimeout(window.RT);
                        window.RT = setTimeout(function () {
                            this.location.reload(false); /* false to get page from cache */
                        }, 200);
                    });
                } else {
                    $(window).resize(function () {
                        drawChart();
                    });
                }
            });

        </script>
        <script type="text/javascript" src="js/templatemo-script.js"></script>
        <!-- Templatemo Script -->

    </form>
</body>
</html>
