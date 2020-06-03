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
            alert("Please Enter Only Numbers.");
            return false;
        }

        return true;
    }

    function ValidateNo() {
        var phoneNo = document.getElementById('txtPhoneNo');

    if (phoneNo.value == "" || phoneNo.value == null) {
            //alert("Enter Your Fill Name!\nEnter Your Password!\nEnter Your Confirm Password!\nEnter Your Mobile No.!\nEnter Your Date of Birth!\nEnter Your E-Mail-ID!\nEnter Your Answer!")
		        return false;
        }
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
          //  alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
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
    if ((document.example2.thname.value=="")){
	        alert("Enter Theater Name!")
	        return false
    }
    if ((document.example2.thpin.value=="")){
	        alert("Enter Theater Pin!")
	        return false
    }
    if ((document.example2.thphone.value=="")){
		        alert("Enter Theater Phone!")
		        return false
    }
    if ((document.example2.themail.value=="")){
		        alert("Enter Theater E-Mail!")
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
if (!example2.thname.value.match(/^[a-z A-Z]+$/) && example2.thname.value !="")
{
	example2.thname.value="";
	example2.thname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
</head>
<body>
<form action="TheaterSubmit.jsp" name="example2" onsubmit="return validate()">
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

<center>
<table border="2" cellpadding="5">
<caption><h3>Theater Interface</h3></caption>

<tr><td><b>Select City</td><td><select name="cityid">
<option>-Select city-</option>
<%
String q="select * from cityreg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");	
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td><b>Enter Theater Icon</td><td></b><input type="file" name="thicon"></td></tr>

<tr><td><b>Enter Theater Name</td><td></b><input type="text" name="thname" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Theater Add</td><td></b><textarea name="thadd">Enter Address</textarea></td></tr>

<tr><td><b>Enter Theater Pin</td><td></b><input type="number" name="thpin" id="txtPhoneNo" onkeypress="return isNumber(event)"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Theater Phone</td><td></b><input type="number" name="thphone" id="txtPhoneNo" onkeypress="return isNumber(event)"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Theater E-mail</td><td></b><input type="email" name="themail"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Theater Web Site URL</b></td><td><input type="url" name="thweb"></td></tr>

<tr><td><b>Enter Theater Description</b></td><td><textarea name="thdesc"></textarea></td></tr>

<tr><td><input type="submit" id="sign_user" onclick="ValidateNo();"></td><td><input type="reset"></td></tr>
</table>
<br>
<table border="2" width="80">
<caption><h3>Theater Display</h3></caption>

<tr><th>City ID</th><th>Theater ID</th><th>Theater Icon</th><th>Theater Name</th><th>Theater Address</th><th>Theater Description</th><th>Action</th></tr>
<% 
q="Select * from theaterreg";
rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String thid=rs.getString(2);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+thid+"</td><td><img src=adminimg/"+rs.getString(3)+" height=100 width=100></td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"<br>Pin: "+rs.getString(6)+"<br>Mobile: "+rs.getString(7)+"<br>Email: "+rs.getString(8)+"<br>Web: "+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td><a href=TheaterUpDe.jsp?thid="+thid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>

</center>
</form>
</body>
</html>