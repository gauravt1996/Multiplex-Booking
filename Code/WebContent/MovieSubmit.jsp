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
	Movie c=new Movie();
	c.setThid(request.getParameter("thid"));
	c.setMname(request.getParameter("mname"));
	c.setMrel(request.getParameter("mrel"));
	c.setMactor(request.getParameter("mactor"));
	c.setMactress(request.getParameter("mactress"));
	c.setMdir(request.getParameter("mdir"));
	c.setMcom(request.getParameter("mcom"));
	c.setMmusic(request.getParameter("mmusic"));
	c.setMdesc(request.getParameter("mdesc"));
	
	
	String q="insert into moviereg(thid,mname,mrel,mactor,mactress,mdir,mcom,mmusic,mdesc) values('"+c.getThid()+"','"+c.getMname()+"','"+c.getMrel()+"','"+c.getMactor()+"','"+c.getMactress()+"','"+c.getMdir()+"','"+c.getMcom()+"','"+c.getMmusic()+"','"+c.getMdesc()+"')";
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