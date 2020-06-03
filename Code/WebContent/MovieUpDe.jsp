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

<form action="MovieUpDe1.jsp">
<center>
<table border="1" cellpadding="5">
<caption><h3>Movie Update/Delete</h3></caption>
<%
try
{
String mid=request.getParameter("mid");
ResultSet rs= DAO.displayRecord("Select * from moviereg where mid='"+mid+"'");
if(rs.next())
{
	out.println("<tr><td>Movie ID</td><td><input type=text name=mid value=\""+rs.getString(2)+"\" readonly=true></td></tr>");
	out.println("<tr><td>Theater ID</td><td><input type=text name=thid value=\""+rs.getString(1)+"\" readonly=true></td></tr>");
	out.println("<tr><td>Movie Name</td><td><input type=text name=mname value=\""+rs.getString(3)+"\"></td></tr>");
	out.println("<tr><td>Movie Releasing Date</td><td><input type=date name=mrel value=\""+rs.getString(4)+"\"></td></tr>");
	out.println("<tr><td>Movie Actor</td><td><input type=text name=mactor value=\""+rs.getString(5)+"\"></td></tr>");
	out.println("<tr><td>Movie Actress</td><td><input type=text name=mactress value=\""+rs.getString(6)+"\"></td></tr>");
	out.println("<tr><td>Movie Director</td><td><input type=text name=mdir value=\""+rs.getString(7)+"\"></td></tr>");
	out.println("<tr><td>Movie Company</td><td><input type=text name=mcom value=\""+rs.getString(8)+"\"></td></tr>");
	out.println("<tr><td>Movie Music</td><td><input type=text name=mmusic value=\""+rs.getString(9)+"\"></td></tr>");
	out.println("<tr><td>Movie Description</td><td><textarea name=mdesc row=5 cols=25>"+rs.getString(10)+"</textarea></td></tr>");
	out.println("<tr><td><input type=submit name=btn value=Update></td><td><input type=submit name=btn value=Delete></td></tr>");
}
else
{	
}
rs.close();
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</table>
</center>
</form>

</body>
</html>