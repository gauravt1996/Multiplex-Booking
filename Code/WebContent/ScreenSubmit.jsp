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
</head>
<body>

<%
try
{
Screen sc=new Screen();
sc.setThid(request.getParameter("thid"));
sc.setScid(request.getParameter("scid"));
sc.setSccap(request.getParameter("sccap"));
sc.setScimg(request.getParameter("scimg"));
sc.setScdesc(request.getParameter("scdesc"));

String q="insert into screenreg (thid,sccap,scimg,scdesc)values('"+sc.getThid()+"','"+sc.getSccap()+"','"+sc.getScimg()+"','"+sc.getScdesc()+"')";

//out.println(q);

String rs=DAO.addNewRecord(q);

if(rs.equals("yes"))
	out.println("Record Inserted......");
else
	out.println(rs);
}
catch(Exception e)
{
	out.println("Error:"+e);	
}
%>
</body>
</html>