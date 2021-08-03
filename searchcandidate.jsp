<%@ page language="java" %>
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
<body><form name="form1" method="post" action="candidatesearch.jsp">
<table width="778" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="78" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="696" align="left" valign="top" bgcolor="#FFFFFF"><p align="right" class="style10" __designer:dtid="1688858450198550">&nbsp;</p>
  <p align="right" class="style10" __designer:dtid="1688858450198550"><strong>Enter the candidate ID</strong> 
    <input type="text" name="textfield">
  </p>
  <p align="right" class="style10" __designer:dtid="1688858450198550">
  <input type="submit" name="Submit" value="Submit">
</p>
<p align="justify" class="style10" __designer:dtid="1688858450198550">&nbsp;</p>
  <h1 align="justify" class="style8">&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
<table width="959" align="center">
  <tr>
    <td bgcolor="#0000FF">&nbsp;</td>
  </tr>
</table>

</form>
</body>
</html>