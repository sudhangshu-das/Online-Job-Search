<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome..</title>
<style type="text/css">
<!--
.style8 {color: #0000FF}
.style9 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<table width="200" border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="931" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="180" height="67" align="left" valign="top" scope="col"><%@ include file="menu.jsp"%>&nbsp;</th>
    <th width="23" scope="col">&nbsp;</th>
    <th width="728" align="left" valign="top" scope="col"><p>&nbsp;</p>
      <table width="723" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="618" height="156" align="left" valign="top" scope="col"><h2 align="center" class="style8">Job  Search According to City</h2>
            <%
		
		 String city=request.getParameter("textfield");
		  Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from company where city='"+city+"'";
  ResultSet rs = statement.executeQuery(query);
%>

              <table align="center" cellspacing="0" >
<tr>
<td width="107" bgcolor="#0000FF"><div align="center" class="style9">Company Name</div></td>
<td width="57" bgcolor="#0000FF"><div align="center" class="style9">Address</div></td>
<td width="44" bgcolor="#0000FF"><div align="center" class="style9">City</div></td>
<td width="68" bgcolor="#0000FF"><div align="center" class="style9">State</div></td>
<td width="102" bgcolor="#0000FF"><div align="center" class="style9">Contact Person</div></td>
<td width="87" bgcolor="#0000FF"><div align="center" class="style9">Email</div></td>
<td width="107" bgcolor="#0000FF"><div align="center" class="style9">Interview Date</div></td>
<td width="113" bgcolor="#0000FF"><div align="center" class="style9">Type of Vaccan</div></td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><div align="center"><%=rs.getString(2)%></div></td>
<td><div align="center"><%=rs.getString(3)%></div></td>
<td><div align="center"><%=rs.getString(4)%></div></td>
<td><div align="center"><%=rs.getString(5)%></div></td>
<td><div align="center"><%=rs.getString(6)%></div></td>
<td><div align="center"><%=rs.getString(7)%></div></td>
<td><div align="center"><%=rs.getString(8)%></div></td>
<td><div align="center"><%=rs.getString(9)%></div></td>
</tr>
<%}%>
</table>

			  
		  
          
        </tr>
      </table>      
      <h2 align="center" class="style8">&nbsp;</h2>
    </th>
  </tr>
</table>

 </body>
 </form>      
</html>
