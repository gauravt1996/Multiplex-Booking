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
session=request.getSession(false);
String thlid=session.getValue("thaid").toString();
String thtime=session.getValue("thtime").toString();
}
catch(Exception e)
{
response.sendRedirect("TheaterLogin.jsp");	
}
%>

<form action="ScreenUpDe1.jsp">
<center>
<table border="1" cellpadding="5">
<caption><h3>Screen Update/Delete</h3></caption>
<%
try
{
String shid=request.getParameter("shid");
String q="select * from showreg where shid='"+shid+"'";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<tr><td>Show ID</td><td><input type=text name=shid value=\""+rs.getString(4)+"\" readonly=true></td></tr>");
	String thid=rs.getString(1);
	out.println("<tr><td>Select Theater</td><td>");
	out.println("<select name=thid>");
	out.println("<option value=\"\">-Select Theater-</option>");
	
	ResultSet rs1=DAO.displayRecord("select * from theaterreg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(2)+">"+rs1.getString(4)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	
	String scid=rs.getString(2);
	out.println("<tr><td>Select Screen</td><td>");
	out.println("<select name=scid>");
	out.println("<option value=\"\">-Select Screen-</option>");
	
	rs1=DAO.displayRecord("select * from screenreg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(2)+">"+rs1.getString(2)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	
	String mid=rs.getString(3);
	out.println("<tr><td>Select Movie</td><td>");
	out.println("<select name=mid>");
	out.println("<option value=\"\">-Select Movie-</option>");
	
	rs1=DAO.displayRecord("select * from moviereg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(2)+">"+rs1.getString(3)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	
	String shtime=rs.getString(5);
	out.println("<tr><td>Select Show Time</td><td><select name='"+shtime+"'>");
	out.println("<option>-Select Show Time-</option>");
	out.println("<option>8:00AM</option>");
	out.println("<option>11:00AM</option>");
	out.println("<option>2:00PM</option>");
	out.println("<option>5:00PM</option>");
	out.println("<option>8:00PM</option>");
	out.println("<option>11:00PM</option>");

	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	
	out.println("<tr><td>Show Date</td><td><input type=date name=shdate value=\""+rs.getString(6)+"\"></td></tr>");
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