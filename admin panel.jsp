<%@ page language="java" import="java.sql.*,java.net.*"%>
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
<form name="form1" method="post" >
  <table width="671" height="755" border="0">
    <tr>
      <td height="75">
	  <div align="center" class="style10">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div></td>
      </tr>
    
    
    <tr>
      <td align="left" valign="top"><p><strong>Admin Panel</strong></p>
        <p>
		
		<% 

InetAddress sysip =InetAddress.getLocalHost();
out.println("IP:"+sysip.getHostAddress());
String ipadd=(sysip.getHostAddress()).toString();
out.print(ipadd);



Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();



  String query1="select * from emp_auth where name='Admin'";
 
  ResultSet rs = statement.executeQuery(query1);
 String ip="";
 int count=0;
while(rs.next()==true)
 {
 ip=rs.getString(4);
count++;
}
if(!ip.equals(ipadd))
{
response.sendRedirect("admin menu1.jsp");
}		
%>		
		
		
		
		
		
		
		&nbsp;</p>
        <p><a href="authen detail.jsp">Add Employee Authentications</a></p>
        <p><a href="edit del.jsp">Edit/Delete  Employee Authentications</a></p>
        <p><a href="hits_repo.jsp">Generate Access Report </a></p></td>
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