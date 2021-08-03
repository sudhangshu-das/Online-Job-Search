<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>Job Tracking System</title>
<style type="text/css">
<!--
.style12 {
	color: #0000FF;
	font-size: 24px;
}
.style14 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
}
.style15 {
	font-size: 14px;
	font-weight: bold;
}
.style16 {font-size: 12px}
-->
</style>
</head>

<script language="javascript">
function validate(form1)
{

if(form1.textfield.value=="")
{alert("should not be blank");
return false;
}



if(form1.textfield3.value=="")
{alert("should not be blank");
return false;
}

if (emailcheck(form1.textfield3.value)==false){

return false;
}
if(form1.textfield4.value=="")
{alert("should not be blank");
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
<form name="form1" method="post" action="naw.jsp" onSubmit="return validate(this)">
<table width="778" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="78" align="left" valign="top">&nbsp;</td>
<td width="696" align="left" valign="top" bgcolor="#FFFFFF">
  <table width="936" border="0">
    <tr>
      <td width="591" rowspan="5" align="left" valign="top">
	  <ul type="disc">
	  <marquee direction="down" onMouseOver="this.stop()" onMouseOut="this.start()">
        <li class="style14"><strong>To increase the business of Client</strong></li>
        <li class="style14"><strong>To make&nbsp; Global</strong></li>
        <li class="style14"><strong>To facilities job search</strong></li>
        <li class="style14"><strong>To facilitate company&nbsp; so that it can search for best       candidates available</strong></li>
        <li class="style14"><strong>To help candidates to fetch a       right job</strong></li>
        <li class="style14"><strong>To act as a middle men connecting       Job seeker and provider</strong></li>
        <li class="style14"><strong>User can search for different       options available</strong></li>
        <li class="style14"><strong>User can search for different       options available</strong></li>
        <li class="style14"><strong>User can do online resume posting       etc</strong></li>
        <li class="style14"><strong>User can search engine to look for       different vacancies ,facilities available etc</strong></li>
        <li class="style14"><strong>User can do&nbsp; apply for job on-line</strong></li>
        <li class="style14"><strong>To increase bank transactions</strong></li>
        <li class="style14"><strong>User can down load different forms etc</strong></li>
      <li><span class="style14"><strong>User can search for different options availabl</strong></span><span class="style15"></span><strong>e</strong></li>
        </marquee>
      <td height="58" colspan="2"><div align="center" class="style12">
        <p align="center">Login Form </p>
        </div></td>
      </tr>
    <tr>
      <td width="178" height="42"><strong>Username</strong></td>
      <td width="166"><label>
        <input type="text" name="textfield">
      </label></td>
    </tr>
    
    <tr>
      <td height="34"><strong>Email ID</strong></td>
      <td><input type="text" name="textfield3"></td>
    </tr>
    <tr>
      <td height="39"><strong>Password</strong></td>
      <td><input type="password" name="textfield4"></td>
    </tr>
    <tr>
      <td height="30" align="left" valign="top">&nbsp;</td>
      <td align="left" valign="top"><input type="submit" name="Submit" value="Submit">
        <a href="user details.jsp" class="style16">Sign Up </a></td>
    </tr>
  </table>

  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="938" align="center">
    <tr>
      <td width="949" bgcolor="#0000FF">&nbsp;</td>
      </tr>
  </table>
 </form>
</body>
</html>