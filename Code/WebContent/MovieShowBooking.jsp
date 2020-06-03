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

<center>


<table border="2" cellpadding="5">
<caption><h3>Screen Display</h3></caption>

<tr><th>Theater ID</th><th>Screen ID</th><th>Screen Capacity</th><th>Show Time</th><th>Show Date</th><th>Show Amount(Per Seat)</th></tr>
<%
String ScCap="";
String shid=request.getParameter("shid");
/*
ResultSet rs1=DAO.displayRecord("select count(numseat) from moviebooking where sid='"+shid+"'");
String numseat="";
out.println(numseat);
if(rs1.next())
{
numseat=rs1.getString(1);
}
*/
ResultSet rs=DAO.displayRecord("select sc.thid,sc.scid,sccap,sh.shtime,sh.shdate,sh.samt from showreg sh,screenreg sc where shid='"+shid+"' and sh.scid=sc.scid");
if(rs.next())
{
	ScCap=rs.getString(3);
	//int as=Integer.parseInt(ScCap.toString())-Integer.parseInt(numseat);
	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+ScCap+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");
//	out.println("<tr><td colspan=3>Total Booked Seats: "+numseat+"</td><td colspan=3>Available Seats: "+as+"</td></tr>");
%>
</table><br>
<form action="MovieShowBookingSubmit.jsp">
<table border="1" cellpadding="5">
<caption><h3>Show Booking</h3></caption>
<tr><td>Number Of Seat(s)</td><td><input type="number" name="ns" required><font color="red" size="4"><b>*</b></font></td></tr>
<input type="hidden" name="thid" value="<%out.println(rs.getString(1));%>">
<input type="hidden" name="shid" value="<%out.println(rs.getString(2));%>">
<input type="hidden" name="shamt" value="<%out.println(rs.getString(6));%>">
<!-- 
<tr><td>Account Number</td><td><input type="number" name="accno"></td></tr>
<tr><td>Password</td><td><input type="text" name="pwd"></td></tr>
 -->
 <tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table></form>
<%
}
rs.close();
%>
</table>
</center>
</body>
</html>