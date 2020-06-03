<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<%
try
{
session =request.getSession(false);
String slid=session.getValue("said").toString();
String stime=session.getValue("stime").toString();
}
catch(Exception e)
{
response.sendRedirect("MAdminLogin.jsp");	
}
%>
<form action="CityUpDe1.jsp">
<center>
<table border="2" cellpadding="5">
<caption><h3>City Update/Delete</h3></caption>
<%
try
{
String cityid=request.getParameter("cityid");
ResultSet rs= DAO.displayRecord("Select * from cityreg where cityid='"+cityid+"'");
if(rs.next())
{
	out.println("<tr><td><b>City ID</b></td><td><input type=text name=cityid value=\""+rs.getString(1)+"\" readonly=true></td></tr>");	
	out.println("<tr><td><b>City Name</b></td><td><input type=text name=cityname value=\""+rs.getString(2)+"\"></td></tr>");
	out.println("<tr><td><b>City Location</b></td><td><img src=adminimg/"+rs.getString(3)+"height=200 width=200><input type=file name=citylocation></td></tr>");
	out.println("<tr><td><b>City Desc</b></td><td><textarea name=citydesc row=5 cols=25>"+rs.getString(4)+"</textarea></td></tr>");
	out.println("<tr><td><input type=submit name=btn value=Update></td><td><input type=submit name=btn value=Delete></td></tr>");
}
else
{	
}
rs.close();
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</table>
</center>
</form>
</body>
</html>