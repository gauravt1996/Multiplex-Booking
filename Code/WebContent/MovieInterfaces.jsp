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
    if ((document.example2.mname.value=="")){
	        alert("Enter Movie Name!")
	        return false
    }
    if ((document.example2.mrel.value=="")){
	        alert("Enter Movie Releasing Date!")
	        return false
    }
    if ((document.example2.mactor.value=="")){
		        alert("Enter Movie Main Actor!")
		        return false
    }
    if ((document.example2.mactress.value=="")){
		        alert("Enter Movie Main Actress!")
		        return false
    }
    if ((document.example2.mdir.value=="")){
		        alert("Enter Movie Director!")
		        return false
    }
    if ((document.example2.mcon.value=="")){
		        alert("Enter Movie Company!")
		        return false
    }
    if ((document.example2.mmusic.value=="")){
		        alert("Enter Movie Music!")
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
if (!example2.mactor.value.match(/^[a-z A-Z]+$/) && example2.mactor.value !="")
{
	example2.mactor.value="";
	example2.mactor.focus();

}
if (!example2.mactress.value.match(/^[a-z A-Z]+$/) && example2.mactress.value !="")
{
	example2.mactress.value="";
	example2.mactress.focus();

}
if (!example2.mdir.value.match(/^[a-z A-Z]+$/) && example2.mdir.value !="")
{
	example2.mdir.value="";
	example2.mdir.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
</head>
<body>
<form action="MovieSubmit.jsp" name="example2" onsubmit="return validate()">
<center>
<table border="2" cellpadding="5">
<caption><h3>Movie Interface</h3></caption>
<tr><td><b>Select City</b></td><td>
<select name="cityid">
<option>-Select City-</option>
<%
ResultSet rs=DAO.displayRecord("select * from cityreg");
if(rs.next())
{
do
{
	String cityid=rs.getString(1);
	out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td><b>Select Theater</b></td><td>
<select name="thid">
<option>-Select Theater-</option>
<%
String cityid=request.getParameter("cityid");
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

<tr><td><b>Enter Movie Name</b></td><td><input type="text" name="mname" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Releasing Date</b></td><td><input type="date" name="mrel" placeholder="YYYY.MM.DD"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Main Actor</b></td><td><input type="text" name="mactor" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Main Actress</b></td><td><input type="text" name="mactress" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Director</b></td><td><input type="text" name="mdir" onkeyup="AllowAlphabet()"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Company</b></td><td><input type="text" name="mcom"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Music</b></td><td><input type="text" name="mmusic"><font color="red" size="4"><b>*</b></font></td></tr>

<tr><td><b>Enter Movie Description</b></td><td><input type="text" name="mdesc"></td></tr>

<tr><td><input type="submit" id="sign_user" onclick="ValidateNo();"></td><td><input type="reset"></td></tr>
</table>
<br>
<table border="2" cellpadding="5">
<caption><h3>Movie Display</h3></caption>

<tr><th>Theater ID</th><th>Movie ID</th><th>Movie Name</th><th>Movie Releasing Date</th><th>Main Actor</th><th>Main Actress</th><th>Director</th><th>Making Company</th><th>Music By</th><th>Movie Description</th><th>Action</th></tr>
<% 
String q="Select * from moviereg";
rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String mid=rs.getString(2);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+mid+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td><a href=MovieUpDe.jsp?mid="+mid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>

</center>
</form>
</body>
</html>