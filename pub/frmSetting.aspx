<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSetting.aspx.cs" Inherits="getPRINTs.frmSetting" %>


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

            <!--- Start of Navigation Bar --->

            <div class="templatemo-sidebar">
                <header class="templatemo-site-header">
                    <asp:Label ID="lblUserName" runat="server" Text="Derek Mugambi" ForeColor="White" Font-Bold="false" Font-Size="Large" Font-Names="Century Gothic"></asp:Label>
                </header>
                <div class="profile-photo-container">
                    <a href="#popup1">
                        <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive" /></a>
                    <div class="profile-photo-overlay"></div>
                </div>
                <div class="mobile-menu-icon">
                    <i class="fa fa-bars"></i>
                </div>
                <nav class="templatemo-left-nav">
                    <ul>
                        <li><a href="http://localhost:11477/frmUserHome.aspx"><i class="fa fa-home fa-fw"></i>Derek M. Shakes</a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i>Messages</a></li>
                        <li><a href="http://localhost:11477/frmUserFriends.aspx"><i class="fa fa-users fa-fw"></i>Friends</a></li>
                        <li><a href="http://localhost:11477/frmSetting.aspx" class="active"><i class="fa fa-gear"></i>Setting</a></li>
                        <li><a href="#"><i class="fa fa-empire"></i>Blog</a></li>
                        <li><a href="http://localhost:11477/frmLogin.aspx"><i class="fa fa-eject fa-fw"></i>Sign Out</a></li>
                    </ul>
                </nav>
            </div>

            <!--- End of Navigation Bar --->

            <!--- Start of Body Content---->

            <!-- Main content -->
            <div class="templatemo-content col-1 light-gray-bg">

                <div class="templatemo-top-nav-container">
                    <div class="row">
                        <h2>Taita Taveta University College Christian Union</h2>
                        <br />
                        <nav class="templatemo-top-nav col-lg-12 col-md-12">
                            <ul class="text-uppercase">
                                <li><a href="http://localhost:11477/frmUserHome.aspx">Home</a></li>
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
                    <div class="row">
                        <div class="col-md-7">
                            <div class="templatemo-flex-row flex-content-row">
                                <div class="templatemo-content-widget white-bg col-2">
                                    <div class="media margin-bottom-30">
                                        <div class="media-left padding-right-25">
                                            <a href="#popup1">
                                                <img class="media-object img-circle templatemo-img-bordered" src="images/person.jpg" alt="Sunset" />
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <asp:Label ID="Label1" runat="server" Text="Derek Mugambi" CssClass="media-heading text-uppercase blue-text"></asp:Label>
                                            <p>derekmwirigi@hotmail.com</p>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="circle green-bg"></div>
                                                    </td>
                                                    <td>Friends</td>
                                                    <td>200</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="circle pink-bg"></div>
                                                    </td>
                                                    <td>Followers</td>
                                                    <td>22</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-7">
                                            <a href="#popup1" class="templatemo-edit-btn">Edit</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!--- End of Body --->



                        <!--- Pop Up-->

                        <div id="popup1" class="overlay">
                            <div class="popup">
                                <h2>Change your profile Settings</h2>

                                <a class="close" href="#">&times;</a>
                                <div class="content">

                                    <br />
                                    <br />
                                    <!--- Pop Up Content --->

                                    <div class="row">

                                        <div class="col-md-5">
                                            <div class="media">
                                                <div class="media-left">
                                                        <img class="media-object img-circle templatemo-img-bordered" src="images/person.jpg" alt="Sunset" />
                                                </div>
                                                <div class="media-body">
                                                    <asp:Label ID="Label2" runat="server" Text="Derek Mugambi" CssClass="media-heading text-uppercase blue-text"></asp:Label>
                                                    <p>Shakes</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4"" >
                                            <asp:Label ID="lblNames" runat="server" Text="Names"></asp:Label>
                                            <asp:TextBox ID="txtNames" runat="server" Text="Derek Mugambi" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth"></asp:Label>
                                            <asp:TextBox ID="txtDate" runat="server" Text="12/08/2015" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <asp:Label ID="Label3" runat="server" Text="Names"></asp:Label>
                                            <asp:TextBox ID="TextBox1" runat="server" Text="Meru" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <asp:Label ID="Label4" runat="server" Text="Names"></asp:Label>
                                            <asp:TextBox ID="TextBox2" runat="server" Text="Meru" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:Label ID="Label5" runat="server" Text="Names"></asp:Label>
                                            <asp:TextBox ID="TextBox3" runat="server" Text="Meru" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label6" runat="server" Text="Names"></asp:Label>
                                            <asp:TextBox ID="TextBox4" runat="server" Text="Meru" CssClass="form-control" Width="100%"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group text-right">
                                            <asp:Button ID="Button1" runat="server" Text="Update" CssClass="templatemo-blue-button" />
                                            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="templatemo-blue-button" />
                                        </div>
                                    </div>

                                    <!--- End of Pop Up Content --->

                                </div>
                            </div>
                        </div>
                    </div>

                    <!--- Pop Up-->

                    <div class="row">
                        <div class="col-md-8">
                            <footer class="text-right">
                                <p>
                                    Copyright &copy; 2015 Taita Taveta University College Christian Union 
            | Designed by <a href="#" target="">Media Ministry</a>
                                </p>
                            </footer>
                        </div>
                    </div>
                </div>

            </div>

            <!--- End of Body Content --->
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
