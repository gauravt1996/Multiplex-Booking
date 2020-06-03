<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
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
session=request.getSession(false);
String thlid=session.getValue("thaid").toString();
String thtime=session.getValue("thtime").toString();
}
catch(Exception e)
{
response.sendRedirect("TheaterLogin.jsp");	
}
%>
<form action="ShowSubmit.jsp">
<center>
<table border="2" cellpadding="5">
<caption><h3>Show Interfaces</h3></caption>

<tr><td><b>Select Screen</b></td><td>
<select name="scid" required>
<option>-Select Screen-</option>
<%
ResultSet rs=DAO.displayRecord("select * from screenreg");
if(rs.next())
{
do
{
	out.println("<option value="+rs.getString(2)+">"+rs.getString(2)+"</option>");
}while(rs.next());
}
%>
</select>
</td></tr>


<tr><td><b>Select Movie</b></td><td>
<select name="mid" required>
<option>-Select Movie-</option>
<%
rs=DAO.displayRecord("select * from moviereg");
if(rs.next())
{
do
{
	out.println("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td><b>Select Show Time</b></td><td><select name="shtime" required>
<option>-Select Movie-</option>
<option>8:00AM</option>
<option>11:00AM</option>
<option>2:00PM</option>
<option>5:00PM</option>
<option>8:00PM</option>
<option>11:00PM</option>

</select>
</td></tr>

<tr><td><b>Select Show Date</td><td><input type="date" name="shdate" required><font color="red" size="4"><b>*</b></font></td></tr>
<tr><td><b>Show Amount</td><td><input type="number" name="shamt" required><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>

</table>

<table border="2" cellpadding="5">
<caption><h3>Screen Display</h3></caption>

<tr><th>Theater ID</th><th>Screen ID</th><th>Movie ID</th><th>Show ID</th><th>Show Time</th><th>Show Date</th><th>Show Amount</th><th>Action</th></tr>

<%
rs=DAO.displayRecord("select * from showreg");
if(rs.next())
{
do	
{
String shid=rs.getString(4);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+shid+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href=ShowUpDe.jsp?shid="+shid+">Update / Delete</a></td></tr>");
}while(rs.next());
}
rs.close();
%>
</table>
</center>
</form>
</body>
</html>