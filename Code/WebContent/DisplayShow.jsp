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
<caption><h3>Screen Display</h3></caption>

<tr><th>Audi</th><th>Show ID</th><th>Show Time</th><th>Show Date</th><th>Booking</th></tr>

<%
String mid=request.getParameter("mid");
ResultSet rs=DAO.displayRecord("select * from showreg where mid='"+mid+"'");
if(rs.next())
{
do	
{
String shid=rs.getString(4);
out.println("<tr><td>"+rs.getString(2)+"</td><td>"+shid+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href=MovieShowBooking.jsp?shid="+shid+">Booking</a></td></tr>");
}while(rs.next());
}
rs.close();
%>
</table>
</center>
</body>
</html>