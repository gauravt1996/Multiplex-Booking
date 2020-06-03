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
<caption><h3>Theater Display</h3></caption>

<tr><th>Theater ID</th><th>Theater Name</th><th>Theater Address</th><th>Theater Description</th><th>Movies</th></tr>
<% 
String cityid=request.getParameter("cityid");
String q="Select * from theaterreg where cityid='"+cityid+"'";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String thid=rs.getString(2);
		out.println("<tr><td>"+thid+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+", "+rs.getString(6)+"<br>"+rs.getString(7)+"<br>"+rs.getString(8)+"<br>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td><a href=DisplayMovie.jsp?thid="+thid+">Show</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>
</center>
</body>
</html>