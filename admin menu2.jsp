<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>Admin Menu</title>
<style type="text/css">
<!--
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 16px;
	font-weight: bold;
	color: #0000FF;
}
.style8 {
	font-size: 18px;
	color: #CC3300;
}
.style10 {font-size: 24px; color: #0000FF;}
.style11 {font-size: 18px}
.style12 {font-size: x-large}
-->
</style>
</head>
<body>
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form1" method="post" action="">
  <table width="671" height="314" border="0">
    <tr>
      <td height="75">&nbsp;</td>
    </tr>
    
    
    <tr>
      <td align="left" valign="top"><p align="center"><strong><a href="admin panel.jsp" class="style12">Admin Panel</a></strong></p>
        <p align="center">&nbsp;</p>
        <p align="center"><span class="style11"><a href="jobs2.jsp?job=IT">IT Jobs</a></span></p>
        <p align="center" class="style11"><a href="jobs2.jsp?job=HR">HR Jobs</a></p>
        <p align="center" class="style11"><a href="jobs2.jsp?job=Marketing">Marketing Jobs</a></p>
        <p align="center"><span class="style11"><a href="jobs2.jsp?job=Others">Other Jobs</a></span> </p></td>
      </tr>
  </table>
</form>

</body>
</html>