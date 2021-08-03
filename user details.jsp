<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Job Search</title>
<style type="text/css">
<!--
.style11 {font-size: 24px; color: #0000FF;}
.style17 {
	color: #0000FF;
	font-size: 18px;
}
-->
</style>
</head>

<script language="javascript">
function validate(form1)
{
 if(form1.textfield.value =="")
 {
  alert("fields should not be blank");
   
   return false;
 
 }
 
 
 if ((form1.textfield3.value==null)||(form1.textfield3.value=="")){
alert("Please Enter your Email Address")
form1.textfield3.focus()
return false
}
if (emailcheck(form1.textfield3.value)==false){

return false;
}

if(form1.textfield4.value =="")
 {
  alert("should not be blank");
   
   return false;
 
 }
 
 }
 
 function emailcheck(str) {

var at="@"
var dot="."
var lat=str.indexOf(at)
var lstr=str.length
var ldot=str.indexOf(dot)
if (str.indexOf(at)==-1){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(at,(lat+1))!=-1){
alert("Invalid E-mail ID")
return false
}

if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(dot,(lat+2))==-1){
alert("Invalid E-mail ID")
return false
}

if (str.indexOf(" ")!=-1){
alert("Invalid E-mail ID")
return false
}

}



</script>
<body>

<table width="773" height="511" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<img src="images/1.png">
</td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><table width="640" height="284" border="0">

<%

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from user";
  ResultSet rs = statement.executeQuery(query);
 
int i=1;
while(rs.next())
{i=i+1;
}
String ids="U00"+i;
%>




  <tr>
    <td width="100">&nbsp;</td>
    <td colspan="2"><div class="style17">User Details </div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="183"><strong>User Name</strong></td>
    <td width="234">
	
	<form name="form1" method="post" action="adduser.jsp" onSubmit="return validate(this)">
      <label>
        <input type="text" name="textfield">
      </label>
       </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>ID</strong> </td>
    <td><input type="text" name="textfield2" value='<%=ids%>'></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>Email Id </strong></td>
    <td><input type="text" name="textfield3"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>Password</strong></td>
    <td><input type="password" name="textfield4"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><div align="center">
      
          <input type="submit" name="Submit" value="Submit">
        
      </form>
      </div></td>
    </tr>
</table>
  <div align="center" class="style11">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  </div></td>
</tr>
</table>
</body>
</html>