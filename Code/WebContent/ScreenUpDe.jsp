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
<form action="ScreenUpDe1.jsp">
<center>
<table border="1" cellpadding="5">
<caption><h3>Screen Update/Delete</h3></caption>
<%
try
{
String scid=request.getParameter("scid");
String q="select * from screenreg where scid='"+scid+"'";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	out.println("<tr><td>Screen ID</td><td><input type=text name=scid value=\""+rs.getString(2)+"\" readonly=true></td></tr>");
	String thid=rs.getString(1);
	out.println("<tr><td>Theater ID</td><td>");
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
	out.println("<tr><td>Screen Capacity</td><td><input type=text name=sccap value=\""+rs.getString(3)+"\"></td></tr>");
	out.println("<tr><td>Screen Image</td><td><img src=adminimg/"+rs.getString(4)+"height=100 width=100><input type=file name=scimg></td></tr>");
	out.println("<tr><td>Screen Desc</td><td><textarea name=scdesc row=5 cols=25>"+rs.getString(5)+"</textarea></td></tr>");
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