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
String ulid=session.getValue("uaid").toString();
String utime=session.getValue("utime").toString();

String ns = request.getParameter("ns");
//String accno = request.getParameter("accno");
//String pwd = request.getParameter("pwd");
String thid = request.getParameter("thid");
String shid = request.getParameter("shid");
String shamt = request.getParameter("shamt");
int amt=Integer.parseInt(shamt.trim())*Integer.parseInt(ns.trim());
String res= DAO.addNewRecord("insert into moviebooking(userid,tid,sid,numseat,stamt,dttime) values('"+ulid.trim()+"','"+thid.trim()+"','"+shid.trim()+"','"+ns.trim()+"','"+amt+"','"+utime+"')");
if(res.equalsIgnoreCase("yes"))
	out.println("Booking Completed...");
else
	out.println(res);
}
catch(Exception ex)
{
	out.println("Error: "+ex);
//	response.sendRedirect("UserLogin.jsp");
}
%>
</body>
</html>