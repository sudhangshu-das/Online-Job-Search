<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@500&display=swap" rel="stylesheet">
<title>Feedbacks</title>
<style type="text/css">

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
	color: #ff009d;
	font-size: 40px;
  font-family: 'Comfortaa', cursive;
}

.main-table{
  border-style: inset;
  border-color: red;
  padding: 2px;

}

.table_content{
  font-family: 'Comfortaa', cursive;
}



</style>
</head>
<body>
<table width="600" border="0" align="center" cellspacing="0"> 
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
    <p><b>Feedback Details </b></p>
  </div>
</form>
<h1 class="style8">
<p><a href="admin menu.jsp"></a> </p>
<p>
  <% 
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from feedback";
  ResultSet rs = statement.executeQuery(query);
%>
</p>
<table width="800" align="center" border="2" cellspacing="0" class = "main-table">
<tr class = "main-table">
<td width="90" class = "table_content"><strong>Name </strong></td>
<td width="90" class = "table_content"><b>Email </b></td>
<td width="100" class = "table_content"><b>Contact No. </b></td>
<td width="100" class = "table_content"><b>State </b></td>
<td width="300" class = "table_content"><b>Comment </b></td>


</tr>
<%
while(rs.next())
{
%>
<tr>
<td class = "table_content"><%=rs.getString(1)%></td>
<td class = "table_content"><%=rs.getString(2)%></td>
<td class = "table_content"><%=rs.getString(3)%></td>
<td class = "table_content"><%=rs.getString(4)%></td>
<td class = "table_content"><%=rs.getString(5)%></td>
</tr>
<%}%>

</table>&nbsp;</p>
  <h1>&nbsp;</h1>  <p class="style7" __designer:dtid="281479271677962">&nbsp;</p>  </td>
</tr>
</table>&nbsp;
  <p>&nbsp;</p>
</body>
</html>