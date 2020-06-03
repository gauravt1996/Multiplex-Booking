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
response.sendRedirect("AdminLogin.jsp");	
}
%>
<form action="TheaterUpDe1.jsp">
<center>
<table border="2" cellpadding="5">
<caption><h3>Theater Update/Delete</h3></caption>
<%
try
{
String thid=request.getParameter("thid");
ResultSet rs= DAO.displayRecord("Select * from theaterreg where thid='"+thid+"'");
if(rs.next())
{
	out.println("<tr><td><b>Theater ID</b></td><td><input type=text name=thid value=\""+rs.getString(2)+"\" readonly=true></td></tr>");
	String cityid=rs.getString(1);
	out.println("<tr><td><b>City ID</b></td><td>");
	out.println("<select name=cityid>");
	out.println("<option value=\"\">-Select City-</option>");
	
	ResultSet rs1=DAO.displayRecord("select * from cityreg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(1)+">"+rs1.getString(2)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	out.println("<tr><td><b>Theater Icon</b></td><td><img src=adminimg/"+rs.getString(3)+"height=100 width=100><input type=file name=thicon></td></tr>");
	out.println("<tr><td><b>Theater Name</b></td><td><input type=text name=thname value=\""+rs.getString(4)+"\"></td></tr>");
	out.println("<tr><td><b>Theater Address</b></td><td><textarea name=thadd row=5 cols=25>"+rs.getString(5)+"</textarea></td></tr>");
	out.println("<tr><td><b>Theater Pin</b></td><td><input type=text name=thpin value=\""+rs.getString(6)+"\"></td></tr>");
	out.println("<tr><td><b>Theater Phone</b></td><td><input type=text name=thphone value=\""+rs.getString(7)+"\"></td></tr>");
	out.println("<tr><td><b>Theater Email</b></td><td><input type=text name=themail value=\""+rs.getString(8)+"\"></td></tr>");
	out.println("<tr><td><b>Theater Web Site</b></td><td><input type=text name=thweb value=\""+rs.getString(9)+"\"></td></tr>");
	out.println("<tr><td><b>Theater Desc</b></td><td><textarea name=thdesc row=5 cols=25>"+rs.getString(10)+"</textarea></td></tr>");
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