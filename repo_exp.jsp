<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome..</title>
<style type="text/css">
<!--
.style8 {color: #0000FF}
-->
</style>
</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="931" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="180" height="67" align="left" valign="top" scope="col">&nbsp;</th>
    <th width="106" scope="col">&nbsp;</th>
    <th width="645" align="left" valign="top" scope="col"><p>&nbsp;</p>
      <table width="618" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="618" height="375" align="left" valign="top" scope="col"><h2 align="center" class="style8">Job  Details According to Experiences </h2>
            <p align="center" class="style8">&nbsp;</p>
            <%
		String type=request.getParameter("type2");
		out.print(type+"Fields");
			
			
		 String exp1=request.getParameter("textfield3");
		  Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from company where exp='"+exp1+"' and typevacc='"+type+"'";
  ResultSet rs = statement.executeQuery(query);
%>

              <table border="1" align="center" cellspacing="0" >
<tr>
<td><strong>Company Name</strong></td>
<td><strong>Address</strong></td>
<td><strong>City</strong></td>
<td><strong>State</strong></td>
<td><strong>Contact Person</strong></td>
<td><strong>Email</strong></td>
<td><strong>Interview Date</strong></td>
<td><strong>Type of Vaccancies</strong></td>
<td><strong>More Details</strong></td>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(15)%></td>
</tr>
<%}%>
</table>

			  
		  
            <p align="center" class="style8">&nbsp;</p></th>
        </tr>
      </table>      
      <h2 align="center" class="style8">&nbsp;</h2>
    </th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>&nbsp;</p>
			
            <p>
              <label></label>
            </p>
            <p>&nbsp;</p>
            <p align="center">
              <label></label>
            </p>
          </form>          <p align="center" class="style8">&nbsp;</p></th>
      </tr>
    </table></th>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</body>
</html>
