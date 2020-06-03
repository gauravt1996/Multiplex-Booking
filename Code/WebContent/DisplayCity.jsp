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
<caption><h3>City Display</h3></caption>

<tr><th>City ID</th><th>City Name</th><th>City Location</th><th>City Desc</th><th>Theaters</th></tr>
<% 
String q="Select * from cityreg";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String cityid=rs.getString(1);
		out.println("<tr><td>"+cityid+"</td><td>"+rs.getString(2)+"</td><td><img src=adminimg/"+rs.getString(3)+" height=100 width=100></td><td>"+rs.getString(4)+"</td><td><a href=DisplayTheater.jsp?cityid="+cityid+">Show</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>
</center>
</body>
</html>