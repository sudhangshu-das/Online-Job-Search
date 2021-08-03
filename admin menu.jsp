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
.style14 {color: #0000FF}
.style17 {color: #990000; font-weight: bold; }
.style21 {
	color: #FF0000;
	font-weight: bold;
	font-size: x-large;
}
.style22 {font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold; color: #FF0000; }
.style24 {font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold; color: #33FFCC; }
-->
</style>
</head>
<body>
<table width="776" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
  <td align="left" valign="top"><img src="images/newspaperjobs.gif" width="241" height="186"></td>
  <td align="left" valign="top" bgcolor="#FFFFFF">
  <marquee behavior="scroll">
  </marquee>
  <p class="style21">&nbsp;</p>
  <p align="center" class="style21">Administrator Menu </p>
  <p align="center" class="style22">&nbsp;</p></td>
</tr>
<tr>
<td width="97" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="675" align="left" valign="top" bgcolor="#FFFFFF"><form name="form1" method="post" action="">
  <table width="478" height="128" border="0">
    <tr>
      <td height="21" bgcolor="#0000FF"><div align="center"><span class="style24">
        <%
		  String sw=(String)session.getAttribute("jo");
  out.print(sw);
  %>
        Field&nbsp;</span></div></td>
    </tr>
    <tr>
      <td height="21"><div align="center"></div></td>
          </tr>
    
    
    <tr>
      <td width="408" height="24"><div align="center"><span class="style17 style14"><a href="repo_company.jsp?job=<%=sw%>">Company Details </a></span></div></td>
          </tr>
    <tr>
      <td height="49"><div align="center"><span class="style17 style14"><a href="repo_candidate.jsp?job=<%=sw%>">Candidate Details </a></span></div></td>
          </tr>
    <tr>
      <td><div align="center"><span class="style17 style14"><a href="download.jsp?job=<%=sw%>">Download Resumes </a></span></div></td>
          </tr>
    </table>
  
  </form>
  <h1 class="style8">&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
</body>
</html>