<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<meta charset="utf-8">

<!-- Viewport Metatag -->
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="admintemp/bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/fonts/ptsans/stylesheet.css" media="screen">
<link rel="stylesheet" type="text/css" href="admintemp/css/fonts/icomoon/style.css" media="screen">

<link rel="stylesheet" type="text/css" href="admintemp/css/login.css" media="screen">

<link rel="stylesheet" type="text/css" href="admintemp/css/mws-theme.css" media="screen">
</head>
<body>
    <div id="mws-login-wrapper">
        <div id="mws-login">
            <h1>Admin Login</h1>
            <div class="mws-login-lock" ><i class="icon-lock"></i></div>
            <div id="mws-login-form">
                <form class="mws-form" action="MAdminChkLogin.jsp">
                    <div class="mws-form-row">
                        <div class="mws-form-item">
                            <input type="text" name="alid" class="mws-login-username required" placeholder="Enter Login ID">
                        </div>
                    </div>
                    <div class="mws-form-row">
                        <div class="mws-form-item">
                            <input type="password" name="pass" class="mws-login-password required" placeholder="Password">
                        </div>
                    </div>
                    <!-- <div id="mws-login-remember" class="mws-form-row mws-inset">
                        <ul class="mws-form-list inline">
                            <li>
                                <input id="remember" type="checkbox"> 
                                <label for="remember">Remember me</label>
                            </li>
                        </ul>
                    </div>-->
                    <div class="mws-form-row">
                        <input type="submit" value="Login" class="btn btn-success mws-login-button">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- JavaScript Plugins -->
    <script src="js/libs/jquery-1.8.3.min.js"></script>
    <script src="js/libs/jquery.placeholder.min.js"></script>
    <script src="custom-plugins/fileinput.js"></script>
    
    <!-- jQuery-UI Dependent Scripts -->
    <script src="jui/js/jquery-ui-effects.min.js"></script>

    <!-- Plugin Scripts -->
    <script src="plugins/validate/jquery.validate-min.js"></script>

    <!-- Login Script -->
    <script src="js/core/login.js"></script>


</body>
</html>