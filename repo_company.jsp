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
	font-size: 24px;
	font-weight: bold;
}
.style14 {font-size: 14px; color: #000000; }
-->
</style>
</head>

<body>
<table width="894" border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td width="890"><%@ include file="header.jsp" %>&nbsp;</td>
  </tr>
</table>
<table width="845" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="10" height="67" align="left" valign="top" scope="col">&nbsp;</th>
    <th width="10" scope="col">&nbsp;</th>
    <th width="911" align="left" valign="top" scope="col"><table width="885" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th width="885" height="375" align="left" valign="top" scope="col"><h2 align="center" class="style8">Company  Details</h2>
            <%
		 String type=request.getParameter("job");
		 
		  Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from company where typevacc='"+type+"'";
  ResultSet rs = statement.executeQuery(query);
%>
            <table width="789" height="113" border="1" align="center" cellspacing="0" >
              <tr>
                <td width="104" class="style8"><span class="style9">Company Name</span></td>
                <td width="83" class="style8"><span class="style9">Address</span></td>
                <td width="44" class="style8"><span class="style9">City</span></td>
                <td width="52" class="style8"><span class="style9">State</span></td>
                <td width="87" class="style8"><span class="style9">Contact Person</span></td>
                <td width="61" class="style8"><span class="style9">Email</span></td>
                <td width="104" class="style8"><span class="style9">Interview Date</span></td>
                <td width="114" class="style8"><span class="style9">Type of Vaccancies</span></td>
                <td width="123" class="style8"><span class="style9">More Details</span></td>
              </tr>
              <%
while(rs.next())
{
%>
              <tr class="style8">
                <td><span class="style14">&nbsp;<%=rs.getString(2)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(3)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(4)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(5)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(6)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(7)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(8)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(9)%></span></td>
                <td><span class="style14">&nbsp;<%=rs.getString(15)%></span></td>
              </tr>
              <%}%>
            </table>
          <p align="center" class="style8">&nbsp;</p></th>
      </tr>
    </table>
      <p>&nbsp;</p>
      <h2 align="center" class="style8">&nbsp;</h2>    </th>
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
