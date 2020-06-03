<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<meta charset="utf-8">

<!-- Viewport Metatag -->
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- Plugin Stylesheets first to ease overrides -->
<link rel="stylesheet" type="text/css" href="admintemp/plugins/colorpicker/colorpicker.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/custom-plugins/wizard/wizard.css" media="screen">

<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="admintemp/bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/fonts/ptsans/stylesheet.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/fonts/icomoon/style.css" media="screen">

<link rel="stylesheet" type="text/css" href="admintemp/css/mws-style.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/icons/icol16.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/icons/icol32.css" media="screen">

<!-- Demo Stylesheet -->
<link rel="stylesheet" type="text/css" href="admintemp/css/demo.css" media="screen">

<!-- jQuery-UI Stylesheet -->
<link rel="stylesheet" type="text/css" href="admintemp/jui/css/jquery.ui.all.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/jui/jquery-ui.custom.css" media="screen">

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="admintemp/css/mws-theme.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/themer.css" media="screen">

</head>
<body>
<%
try
{
session=request.getSession(false);
String slid=session.getValue("said").toString();
String stime=session.getValue("stime").toString();
%>
	<!-- Themer (Remove if not needed) -->  
	<div id="mws-themer">
        
        <div id="mws-themer-css-dialog">
        	<form class="mws-form">
            	<div class="mws-form-row">
		        	<div class="mws-form-item">
                    	<textarea cols="auto" rows="auto" readonly="readonly"></textarea>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Themer End -->

	<!-- Header -->
	<div id="mws-header" class="clearfix">
    
    	<!-- Logo Container -->
    	
        
        	<!-- Logo Wrapper, images put within this wrapper will always be vertically centered -->
        	
            	<center><img src="images/img/logo1.png" alt="mws admin"></center>
			
       
     </div>
    
    <!-- Start Main Wrapper -->
    <div id="mws-wrapper">
    
    	<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        
        <!-- Sidebar Wrapper -->
        <div id="mws-sidebar">
        
            <!-- Main Navigation -->
            <div id="mws-navigation">
                <ul>
                    <li class="active"><a href="CityInterfaces.jsp" target="aa"><i class="icon-home"></i> City Reg</a></li>
                    <li><a href="TheaterInterfaces.jsp" target="aa"><i class="icon-graph"></i> Theater Reg</a></li>
                    <li><a href="ScreenInterfaces.jsp" target="aa"><i class="icon-calendar"></i> Screen Reg</a></li>
                    <li><a href="MovieInterfaces.jsp" target="aa"><i class="icon-folder-closed"></i> Movie Reg</a></li>
                    <li><a href="AdminTotalBooking.jsp" target="aa"><i class="icon-folder-closed"></i> Booking</a></li>
                    <li><a href="MAdminLogout.jsp"><i class="icon-user"></i> Logout</a></li>
                    <!-- <li>
                        <a href="#"><i class="icon-list"></i> Forms</a>
                        <ul>
                            <li><a href="form_layouts.html">Layouts</a></li>
                            <li><a href="form_elements.html">Elements</a></li>
                            <li><a href="form_wizard.html">Wizard</a></li>
                        </ul>
                    </li>
                    <li><a href="widgets.html"><i class="icon-cogs"></i> Widgets</a></li>
                    <li><a href="typography.html"><i class="icon-font"></i> Typography</a></li>
                    <li><a href="grids.html"><i class="icon-th"></i> Grids &amp; Panels</a></li>
                    <li><a href="gallery.html"><i class="icon-pictures"></i> Gallery</a></li>
                    <li><a href="error.html"><i class="icon-warning-sign"></i> Error Page</a></li>
                    <li>
                        <a href="icons.html">
                            <i class="icon-pacman"></i> 
                            Icons <span class="mws-nav-tooltip">2000+</span>
                        </a>
                    </li>-->
                </ul>
            </div>         
        </div>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Inner Container Start -->
            <div class="container">
            
            	<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-user"></i> Welcome: <%= slid %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login Time: <%= stime%></span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <iframe name="aa" src="CityInterfaces.jsp" height="500" width="1100"></iframe>
                    </div>
                </div>
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Designed By: Gaurav Taluja
            </div>
            
        </div>
        <!-- Main Container End -->
        
    </div>

    <!-- JavaScript Plugins -->
    <script src="js/libs/jquery-1.8.3.min.js"></script>
    <script src="js/libs/jquery.mousewheel.min.js"></script>
    <script src="js/libs/jquery.placeholder.min.js"></script>
    <script src="custom-plugins/fileinput.js"></script>
    
    <!-- jQuery-UI Dependent Scripts -->
    <script src="jui/js/jquery-ui-1.9.2.min.js"></script>
    <script src="jui/jquery-ui.custom.min.js"></script>
    <script src="jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Plugin Scripts -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/libs/excanvas.min.js"></script>
    <![endif]-->
    <script src="plugins/flot/jquery.flot.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.tooltip.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.pie.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.stack.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.resize.min.js"></script>
    <script src="plugins/colorpicker/colorpicker-min.js"></script>
    <script src="plugins/validate/jquery.validate-min.js"></script>
    <script src="custom-plugins/wizard/wizard.min.js"></script>

    <!-- Core Script -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/core/mws.js"></script>

    <!-- Themer Script (Remove if not needed) -->
    <script src="js/core/themer.js"></script>

    <!-- Demo Scripts (remove if not needed) -->
    <script src="js/demo/demo.dashboard.js"></script>


<%
}
catch(Exception ex)
{
	response.sendRedirect("MAdminLogin.jsp");
}
%>
</body>
</html>