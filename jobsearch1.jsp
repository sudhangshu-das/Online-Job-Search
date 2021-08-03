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
<td width="78" align="left" valign="top"><%@ include file="menu.jsp"%></td>
<td width="696" align="left" valign="top" bgcolor="#FFFFFF">
  <p>
    <% 
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
		   String query="select * from user";
  ResultSet rs = statement.executeQuery(query);
 
int i=1;
while(rs.next())
{
i=i+1;
}
if(i>0)
{
String id=request.getParameter("textfield");
session.setAttribute("id",id);
}
else
{
response.sendRedirect("searchjob.jsp");}
%> 
  <p><marquee direction="left"><img src="images/job.jpg" width="120" height="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/it_jobs.jpg" width="120" height="100">&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/newspaperjobs.gif" width="120" height="100">
  </marquee>
  <form name="form1" method="post" action="repo_city.jsp">
  <p align="right"><strong>Search Company According to City</strong> 
    <input type="text" name="textfield">
    <input type="submit" name="Submit" value="Search"></p>
  </form>
  </p>  <form name="form2" method="post" action="repo_qual.jsp">
  <p align="right"><strong>Search Company According to your Qualification</strong> 
    <input type="text" name="textfield2">
    <input type="submit" name="Submit2" value="Search"></p>
  </form>
  </p>
  <h1 align="justify" class="style8">&nbsp;</h1>  </td>
</tr>
</table>
</form>
</body>
</html>