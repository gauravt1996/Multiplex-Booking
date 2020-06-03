<%@page import="gt.model.Movie"%>
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
session =request.getSession(false);
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
Movie sc=new Movie();
sc.setThid(request.getParameter("thid"));
sc.setMid(request.getParameter("mid"));
sc.setMname(request.getParameter("mname"));
sc.setMrel(request.getParameter("mrel"));
sc.setMactor(request.getParameter("mactor"));
sc.setMactress(request.getParameter("mactress"));
sc.setMdir(request.getParameter("mdir"));
sc.setMcom(request.getParameter("mcom"));
sc.setMmusic(request.getParameter("mmusic"));
sc.setMdesc(request.getParameter("mdesc"));
String btn=request.getParameter("btn");
String res="";
String q="";
if(btn.equals("Update"))
{
		q="update moviereg set thid='"+sc.getThid()+"', mname='"+sc.getMname()+"',mrel='"+sc.getMrel()+"',mactor='"+sc.getMactor()+"',mactress='"+sc.getMactress()+"',mdir='"+sc.getMdir()+"',mmusic='"+sc.getMmusic()+"',mdesc='"+sc.getMdesc()+"' where mid='"+sc.getMid()+"'";
		out.println(q);
		res = DAO.addNewRecord(q);
	
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);

}
else if(btn.equals("Delete"))
{
	res = DAO.addNewRecord("delete from moviereg where mid='"+sc.getMid()+"'");
	if(res.equalsIgnoreCase("yes"))
		out.println("Record Deleted...");
	else
		out.println(res);
	
}
}
catch(Exception e)
{
	out.println("Error:"+e);
}
%>
</body>
</html>