<%@ page language="java"  import="java.sql.*,java.net.*"%>

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
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form1" method="post" action="">
  <table width="503" height="755" border="0">
    <tr>
      <td width="497" height="75"><div align="center" class="style10">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div></td>
      </tr>
    
    
    <tr>
      <td align="left" valign="top"><p>
	  <% 
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

 
String str=request.getParameter("job");

    java.util.Date dat = new java.util.Date();

  String query="select * from emp_auth where department='"+str+"'";
  ResultSet x = statement.executeQuery(query);

String s="";
String dep="";
int i=0;
   
	
	session.setAttribute("jo",str);
	%>
	<jsp:forward page="admin menu.jsp"/>
<%	

   
%>

	  &nbsp;</p>
        </td>
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