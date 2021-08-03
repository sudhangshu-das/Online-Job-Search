<%@ page language="java" import ="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Job Search Engine</title>
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
.style10 {font-size: 16px}
-->
</style>
</head>
<body>
<table width="778" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="78" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="696" align="left" valign="top" bgcolor="#FFFFFF">
  <p><b></p>
  <p>&nbsp;</p>
  <form name="form1" method="post" action="repo_city1.jsp">
  <p align="right"><strong>Search Candidates According to City</strong>
    <input type="text" name="textfield">
    <input type="submit" name="Submit" value="Search"></p>
  </form>
  </p>  <form name="form2" method="post" action="repo_qual1.jsp">
  <p align="right"><strong>Search Candidates According to your Qualification</strong>
    <input type="text" name="textfield2">
    <input type="submit" name="Submit2" value="Search"></p>
  </form>
  </p>
  </p></td>
</tr>
</table>
<p>&nbsp;</p>
<table width="897" align="center" bordercolor="#0000FF">
  <tr>
    <td height="23" bgcolor="#0000FF">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>