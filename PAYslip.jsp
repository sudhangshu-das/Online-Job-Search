<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Employee Tracking System</title>
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
.style11 {
	color: #0000FF;
	font-size: 18px;
}
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
<td width="750" align="left" valign="top" bgcolor="#FFFFFF">
<h1 class="style8">&nbsp;</h1>
  <p>
  Employee ID :<%=session.getAttribute("jo")%>
  <% 
  String id=(String)session.getAttribute("jo");
  
%>
  
</body>
</html>