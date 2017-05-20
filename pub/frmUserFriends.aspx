<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUserFriends.aspx.cs" Inherits="getPRINTs.frmUserFriends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css' />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />

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
                    <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive" />
                    <div class="profile-photo-overlay"></div>
                </div>
                <div class="mobile-menu-icon">
                    <i class="fa fa-bars"></i>
                </div>
                <nav class="templatemo-left-nav">
                    <ul>
                        <li><a href="http://localhost:11477/frmUserHome.aspx"><i class="fa fa-home fa-fw"></i>Derek M. Shakes</a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i>Messages</a></li>
                        <li><a href="#" class="active"><i class="fa fa-users fa-fw"></i>Friends</a></li>
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
                                <li><a href="http://localhost:11477/frmUserHome.aspx">Home</a></li>
                                <li><a href="http://localhost:11477/frmUserFriends.aspx" class="active">Friends</a></li>
                                <li><a href="#">Notifications</a></li>
                                <li><a href="#">Messages</a></li>
                                <li><a href="http://localhost:11477/frmLogin.aspx">Sign Out</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="templatemo-content-container">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Panel ID="friendsPanel" runat="server">
                            </asp:Panel>
                        </div>
                    </div>
                    <!--- Body Here --->

                    <!--- End of Body --->
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
