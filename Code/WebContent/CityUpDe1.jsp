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
response.sendRedirect("MAdminLogin.jsp");	
}
%>
<%
try
{
City c=new City();
c.setCityid(request.getParameter("cityid"));
c.setCityname(request.getParameter("cityname"));
c.setCitylocation(request.getParameter("citylocation"));
c.setCitydesc(request.getParameter("citydesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(c.getCitylocation().equals(""))
{
res = DAO.addNewRecord("update cityreg set cityname='"+c.getCityname()+"',citydesc='"+c.getCitydesc()+"' where cityid='"+c.getCityid()+"'");
}
else
{
	res = DAO.addNewRecord("update cityreg set cityname='"+c.getCityname()+"', citylocation='"+c.getCitylocation()+"',citydesc='"+c.getCitydesc()+"' where cityid='"+c.getCityid()+"'");
	}
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from cityreg where cityid='"+c.getCityid()+"'");
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