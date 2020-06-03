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
<caption><h3>Movie Display</h3></caption>
<tr><th>Movie ID</th><th>Movie Name</th><th>Movie Releasing Date</th><th>Main Actor</th><th>Main Actress</th><th>Director</th><th>Making Company</th><th>Music By</th><th>Movie Description</th><th>Shows</th></tr>
<% 
String thid=request.getParameter("thid");
String q="Select * from moviereg";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String mid=rs.getString(2);
		out.println("<tr><td>"+mid+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td><a href=DisplayShow.jsp?mid="+mid+">Show</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>
</center>
</body>
</html>