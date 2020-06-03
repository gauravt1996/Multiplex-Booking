<%@page import="gt.model.Show"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
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
String thlid=session.getValue("thaid").toString();
String thtime=session.getValue("thtime").toString();

Show sc=new Show();
sc.setShid(request.getParameter("shid"));
sc.setThid(thlid);
sc.setScid(request.getParameter("scid"));
sc.setMid(request.getParameter("mid"));
sc.setShtime(request.getParameter("shtime"));
sc.setShdate(request.getParameter("shdate"));
String shamt = request.getParameter("shamt");

String q="insert into showreg (thid,scid,mid,shtime,shdate,samt)values('"+sc.getThid()+"','"+sc.getScid()+"','"+sc.getMid()+"','"+sc.getShtime()+"','"+sc.getShdate()+"',"+shamt+")";

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