<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmChooseCustomer.aspx.cs" Inherits="HF.frmChooseCustomer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HF - TAT</title>

    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/navScript.js"></script>




    <!-- Bootstrap Core CSS -->
    <link href="css/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- MetisMenu CSS -->
    <link href="css/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>

    <!-- Timeline CSS -->
    <link href="dist/css/timeline.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet"/>

    <!-- Morris Charts CSS -->
    <link href="css/bower_components/morrisjs/morris.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="css/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>



</head>
<body>
    <form id="form1" runat="server">
        <%--<div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search..."/>
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="http://localhost:38004/frmIndex.aspx"><i class="fa fa-home fa-fw"></i>Home </a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Applications <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">New Loan Application </a>
                                    </li>
                                    <li>
                                        <a href="http://localhost:38004/frmApplications.aspx">All Applications </a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-table fa-fw"></i>Reports </a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="flot.html">Customer Reports </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>--%>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Housing Finance</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-files-o fa-fw"></i>
                            Choose Customer 
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <asp:DropDownList ID="chooseCustomerList" runat="server"></asp:DropDownList>
                                
                            </div>
                            
                            <asp:Button ID="BtnGo" runat="server" Text="Go" OnClick="BtnGo_Click" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
      
    </form>
</body>
</html>
