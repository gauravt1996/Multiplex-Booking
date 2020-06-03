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

<center>
<table border="2" cellpadding="5">
<caption><h3>Display My Booking</h3></caption>

<tr><th>Movie Booking ID</th><th>User ID</th><th>Theater ID</th><th>Show ID</th><th>Number of Seats</th><th>Total Amt</th><th>Booking Date</th></tr>
<% 
try
{
session=request.getSession(false);
String ulid=session.getValue("uaid").toString();
String utime=session.getValue("utime").toString();

String q="Select * from moviebooking where userid='"+ulid+"'";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String cityid=rs.getString(1);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");	
	}while(rs.next());
	}
else
{
out.println("Not Found...");	
}
rs.close();
}
catch(Exception ex)
{
	response.sendRedirect("UserLogin.jsp");
}
%>
</table>
</center>
</body>
</html>