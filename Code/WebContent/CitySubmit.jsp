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
response.sendRedirect("MAdminLogin.jsp");	
}
%>
<%
try
{
	City c=new City();
	c.setCityname(request.getParameter("cityname"));
	c.setCitylocation(request.getParameter("citylocation"));
	c.setCitydesc(request.getParameter("citydesc"));
	
/*	String res= DAO.addNewRecord("insert into categoryreg (cname,cicon,cdesc) values('"+c.getCategoryname()+"','"+c.getCategoryicon()+"','"+c.getCategorydesc()+"')");
*/
	
	String res= DAO.addNewRecord("insert into cityreg(cityname,citylocation,citydesc) values('"+c.getCityname()+"','"+c.getCitylocation()+"','"+c.getCitydesc()+"')");
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