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
<script type="text/javascript">

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please Enter Only 10 Numbers.");
            return false;
        }

        return true;
    }

    function ValidateNo() {
        var phoneNo = document.getElementById('txtPhoneNo');

    if (phoneNo.value == "" || phoneNo.value == null) {
            alert("Enter Your Fill Name!\nEnter Your Password!\nEnter Your Confirm Password!\nEnter Your Mobile No.!\nEnter Your Date of Birth!\nEnter Your E-Mail-ID!\nEnter Your Answer!")
		        return false;
        }
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

        alert("Success ");
        return true;
        }
</script>
<script type="text/javascript" src="Acceptonlynumber/jquery.min.js"></script>

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        $(function () {
            $(".numeric").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                $(".error").css("display", ret ? "none" : "inline");
                return ret;
            });
            $(".numeric").bind("paste", function (e) {
                return false;
            });
            $(".numeric").bind("drop", function (e) {
                return false;
            });
        });
    </script>
<script type="text/javascript">

function validate(){
     if ((document.example2.cityname.value=="")){
	        alert("Enter City Name!")
	        return false
    }
    if ((document.example2.pwd.value=="")){
	        alert("Enter Your Password!")
	        return false
    }
    if ((document.example2.cpwd.value=="")){
		        alert("Enter Your Confirm Password!")
		        return false
    }
    if ((document.example2.mob.value=="")){
		        alert("Enter Your Mobile!")
		        return false
    }
    if ((document.example2.dob.value=="")){
		        alert("Enter Your Date of Birth!")
		        return false
    }
    if ((document.example2.eid.value=="")){
		        alert("Enter Your E-Mail-ID!")
		        return false
    }
    if ((document.example2.qid.value=="")){
		        alert("Select Your Question!")
		        return false
    }
    if ((document.example2.sa.value=="")){
		        alert("Enter Your Answer!")
		        return false
    }
    else
        return true
}

</script>
<script type="text/javascript">
function AllowAlphabet(){
if (!example2.cityname.value.match(/^[a-z A-Z]+$/) && example2.cityname.value !="")
{
	example2.cityname.value="";
	example2.cityname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
</head>
<body>
<form action="CitySubmit.jsp" name="example2" onsubmit="return validate()">
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
}%>
<center>
<table border="2" cellpadding="5">
<caption><h3>City Interface</h3></caption>

<tr><td><b>Enter City Name</b></td><td><input type="text" name="cityname" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter City Location</b></td><td><input type="file" name="citylocation"></td></tr>

<tr><td><b>Enter City Desc</b></td><td><textarea name="citydesc"></textarea></td></tr>

<tr><td><input type="submit" id="sign_user" onclick="ValidateNo();"></td><td><input type="reset"></td></tr>
</table>
<br>
<table border="2" cellpadding="5">
<caption><h3>City Display</h3></caption>

<tr><th>City ID</th><th>City Name</th><th>City Location</th><th>City Desc</th><th>Action</th></tr>
<% 
String q="Select * from cityreg";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String cityid=rs.getString(1);
		out.println("<tr><td>"+cityid+"</td><td>"+rs.getString(2)+"</td><td><img src=adminimg/"+rs.getString(3)+" height=100 width=100></td><td>"+rs.getString(4)+"</td><td><a href=CityUpDe.jsp?cityid="+cityid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>


</center>
</form>
</body>
</html>