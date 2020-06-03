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
Theater sc=new Theater();
sc.setCityid(request.getParameter("cityid"));
sc.setThid(request.getParameter("thid"));
sc.setThicon(request.getParameter("thicon"));
sc.setThname(request.getParameter("thname"));
sc.setThadd(request.getParameter("thadd"));
sc.setThpin(request.getParameter("thpin"));
sc.setThphone(request.getParameter("thphone"));
sc.setThemail(request.getParameter("themail"));
sc.setThweb(request.getParameter("thweb"));
sc.setThdesc(request.getParameter("thdesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(sc.getThicon().equals(""))
{
	if(sc.getCityid().equals(""))
	{
		res = DAO.addNewRecord("update theaterreg set thname='"+sc.getThname()+"',thadd='"+sc.getThadd()+"',thpin='"+sc.getThpin()+"',thphone='"+sc.getThphone()+"',themail='"+sc.getThemail()+"',thweb='"+sc.getThweb()+"',thdesc='"+sc.getThdesc()+"' where thid='"+sc.getThid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update theaterreg set cityid='"+sc.getCityid()+"',thname='"+sc.getThname()+"',thadd='"+sc.getThadd()+"',thpin='"+sc.getThpin()+"',thphone='"+sc.getThphone()+"',themail='"+sc.getThemail()+"',thweb='"+sc.getThweb()+"',thdesc='"+sc.getThdesc()+"' where thid='"+sc.getThid()+"'");
	}
}
else
{
	if(sc.getCityid().equals(""))
	{
		res = DAO.addNewRecord("update theaterreg set thicon='"+sc.getThicon()+"',thname='"+sc.getThname()+"',thadd='"+sc.getThadd()+"',thpin='"+sc.getThpin()+"',thphone='"+sc.getThphone()+"',themail='"+sc.getThemail()+"',thweb='"+sc.getThweb()+"',thdesc='"+sc.getThdesc()+"' where thid='"+sc.getThid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update theaterreg set cityid='"+sc.getCityid()+"',thicon='"+sc.getThicon()+"',thname='"+sc.getThname()+"',thadd='"+sc.getThadd()+"',thpin='"+sc.getThpin()+"',thphone='"+sc.getThphone()+"',themail='"+sc.getThemail()+"',thweb='"+sc.getThweb()+"',thdesc='"+sc.getThdesc()+"' where thid='"+sc.getThid()+"'");	
	}
}	
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);

}
else
{
	res = DAO.addNewRecord("delete from theaterreg where thid='"+sc.getThid()+"'");
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