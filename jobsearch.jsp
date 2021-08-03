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
 <%
  String sw=request.getParameter("job");
  out.print(sw + "  Field</b>");
  
 
  
  %>
  <p><b>Welcome     </b></p>
  <form name="form1" method="post" action="repo_city.jsp">
  <p><strong>Search Company According to City</strong> 
     <input type="hidden" name="type" value='<%=sw%>'>

    <input type="text" name="textfield">
    <input type="submit" name="Submit" value="Search"></p></form>
  </p>  <form name="form2" method="post" action="repo_qual.jsp">
  <p><strong>Search Company According to your Qualification</strong> 
      <input type="hidden" name="type1" value='<%=sw%>'>

	<input type="text" name="textfield2">
    <input type="submit" name="Submit2" value="Search"></p></form>
  </p>  <form name="form3" method="post" action="repo_exp.jsp">
  <p><strong>Seach Company According to your Experience  </strong>
     <input type="hidden" name="type2" value='<%=sw%>'>

    <input type="text" name="textfield3">
    <input type="submit" name="Submit3" value="Search"></p></form>
  </p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p class="style10" __designer:dtid="1688858450198550">&nbsp;</p>
  <p align="justify" class="style10" __designer:dtid="1688858450198550">&nbsp;</p>
  <h1 align="justify" class="style8">&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table></form>
</body>
</html>