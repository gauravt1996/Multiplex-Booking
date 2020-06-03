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
	Theater c=new Theater();
	c.setCityid(request.getParameter("cityid"));
	c.setThid(request.getParameter("thid"));
	c.setThicon(request.getParameter("thicon"));
	c.setThname(request.getParameter("thname"));
	c.setThadd(request.getParameter("thadd"));
	c.setThpin(request.getParameter("thpin"));
	c.setThphone(request.getParameter("thphone"));
	c.setThemail(request.getParameter("themail"));
	c.setThweb(request.getParameter("thweb"));
	c.setThdesc(request.getParameter("thdesc"));
	
	String q="insert into theaterreg(cityid,thicon,thname,thadd,thpin,thphone,themail,thweb,thdesc,thlid,thpass) values('"+c.getCityid()+"','"+c.getThicon()+"','"+c.getThname()+"','"+c.getThadd()+"',"+c.getThpin()+","+c.getThphone()+",'"+c.getThemail()+"','"+c.getThweb()+"','"+c.getThdesc()+"','"+c.getThname()+"-"+c.getCityid()+"','"+c.getCityid()+"-"+c.getThname()+"')";
	//out.println(q);
	String res= DAO.addNewRecord(q);
	if(res.equalsIgnoreCase("yes"))
		out.println("Inserted");
	else
		out.println(res);
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</body>
</html>