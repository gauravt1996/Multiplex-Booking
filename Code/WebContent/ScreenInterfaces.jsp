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
    if ((document.example2.sccap.value=="")){
	        alert("Enter Screen Capacity!")
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
<form action="ScreenSubmit.jsp" name="example2" onsubmit="return validate()">
<center>
<table border="2" cellpadding="5">
<caption><h3>Screen Interfaces</b></h3></caption>

<tr><td><b>Select City</td><td>
<select name="cityid">
<option>-Select City-</option>
<%
ResultSet rs=DAO.displayRecord("select * from cityreg");
if(rs.next())
{
do
{
	out.println("<option value="+rs.getString(2)+">"+rs.getString(4)+"</option>");
}while(rs.next());
}
%>
</select>
</td></tr>


<tr><td><b>Select Theater</b></td><td>
<select name="thid">
<option>-Select Theater-</option>
<%
rs=DAO.displayRecord("select * from theaterreg");
if(rs.next())
{
do
{
	out.println("<option value="+rs.getString(2)+">"+rs.getString(4)+"</option>");
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td><b>Enter Screen Capacity</b></td><td><input type="text" name="sccap" id="txtPhoneNo" onkeypress="return isNumber(event)"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Screen Image</b></td><td><input type="file" name="scimg"></td></tr>

<tr><td><b>Enter Screen Description</b></td><td><textarea name="scdesc"></textarea></td></tr>

<tr><td><b>Show Timings</b></td><td>1.&nbsp; 8:00AM &nbsp;&nbsp;&nbsp; 2.&nbsp; 11:00AM<br>3.&nbsp; 2:00PM &nbsp;&nbsp;&nbsp; 4.&nbsp; 5:00PM<br>5.&nbsp; 8:00PM &nbsp;&nbsp;&nbsp; 6.&nbsp; 11:00PM</td></tr>

<tr><td><input type="submit" id="sign_user" onclick="ValidateNo();"></td><td><input type="reset"></td></tr>

</table>

<table border="2" cellpadding="5">
<caption><h3>Screen Display</h3></caption>

<tr><th>Theater ID</th><th>Screen ID</th><th>Screen Capacity</th><th>Screen Image</th><th>Screen Description</th><th>Action</th></tr>

<%
rs=DAO.displayRecord("select * from screenreg");
if(rs.next())
{
do	
{
String scid=rs.getString(2);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+scid+"</td><td>"+rs.getString(3)+"</td><td><img src=adminimg/"+rs.getString(4)+" height=100 width=100></td><td>"+rs.getString(5)+"</td><td><a href=ScreenUpDe.jsp?scid="+scid+">Update / Delete</a></td></tr>");
}while(rs.next());
}
rs.close();
%>




</table>
</center>
</form>
</body>
</html>