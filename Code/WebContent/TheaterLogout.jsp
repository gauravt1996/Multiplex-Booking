<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
session=request.getSession(false);
String thlid = session.getValue("thlid").toString();
String thpass = session.getValue("thpass").toString();
session.invalidate();
response.sendRedirect("TheaterLogin.jsp");
}
catch(Exception ex)
{
	response.sendRedirect("TheaterLogin.jsp");
}
%>
</body>
</html>