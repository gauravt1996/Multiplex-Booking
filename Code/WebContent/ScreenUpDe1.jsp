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
session=request.getSession(false);
String slid=session.getValue("said").toString();
String stime=session.getValue("stime").toString();
}
catch(Exception e)
{
response.sendRedirect("AdminLogin.jsp");	
}
%>
<%
try
{
Screen sc=new Screen();
sc.setThid(request.getParameter("thid"));
sc.setScid(request.getParameter("scid"));
sc.setSccap(request.getParameter("sccap"));
sc.setScimg(request.getParameter("scimg"));
sc.setScdesc(request.getParameter("scdesc"));
String btn=request.getParameter("btn");
String res="";
 if(btn.equals("Update"))
{
if(sc.getScimg().equals(""))
{	if(sc.getThid().equals(""))
	{
		res = DAO.addNewRecord("update screenreg set sccap='"+sc.getSccap()+"',scdesc='"+sc.getScdesc()+"' where scid='"+sc.getScid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update screenreg set thid='"+sc.getThid()+"',sccap='"+sc.getSccap()+"',scdesc='"+sc.getScdesc()+"' where scid='"+sc.getScid()+"'");
	}
}
else
{
	if(sc.getThid().equals(""))
	{
	res = DAO.addNewRecord("update screenreg set sccap='"+sc.getSccap()+"',scimg='"+sc.getScimg()+"',scdesc='"+sc.getScdesc()+"' where scid='"+sc.getScid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update screenreg set thid='"+sc.getThid()+"',sccap='"+sc.getSccap()+"',scdesc='"+sc.getScdesc()+"', scimg='"+sc.getScimg()+"' where scid='"+sc.getScid()+"'");	
	}
}	
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);

}
/* else
{
	res = DAO.addNewRecord("delete from screenreg where scid='"+sc.getScid()+"'");
	if(res.equalsIgnoreCase("yes"))
		out.println("Record Deleted...");
	else
		out.println(res);
	
}*/
}
catch(Exception e)
{
	out.println("Error:"+e);
}
%>
</body>
</html>