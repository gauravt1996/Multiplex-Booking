<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<form action="ChangePasswordSubmit.jsp" method="post">
<center>
<table border="2" cellpadding="5">
<caption><h3>Change Password</h3></caption>
<tr><td>Enter Old Password</td><td><input type="password" name="oldpass" required><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td>Enter New Password</td><td><input type="password" name="newpass" required><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td>Conform Password</td><td><input type="password" name="conpass" required><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>

</table>
</center>
</form>
</body>
</html>