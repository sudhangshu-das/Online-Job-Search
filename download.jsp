<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Download Notes</title>
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
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form action="" method="post" name="form1" class="style11">
  <div align="center">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>Feedback Details 
    </p>
  </div>
</form>
<h1 class="style8">
<p><a href="admin menu.jsp">Admin Menu</a> </p>
<p>
  <% 




String str=request.getParameter("job");
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from resumes where jobtype='"+str+"'";
  ResultSet rs = statement.executeQuery(query);
%>
</p>
<p><table width="422" border="1" cellspacing="0">
<tr>
<td width="93"><strong>Job Type </strong></td>
<td width="93"><b>Uploaded By </b></td>
<td width="222"><strong>Date of Uploading </strong></td>
<td width="222"><strong>File</strong></td>


</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><a href='<%=rs.getString(4)%>'>Download</a></td>
</tr>
<%}%>

</table>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>&nbsp;</h1>
  <p>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>
</body>
</html>