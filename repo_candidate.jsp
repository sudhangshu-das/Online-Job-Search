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
-->
</style>
</head>

<body>
<table width="891" border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td width="887"><%@ include file="header.jsp" %>&nbsp;</td>
  </tr>
</table>
<table width="892" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="892" height="67" align="left" valign="top" scope="col"><table width="872" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <th width="872" align="left" valign="top" scope="col"><h2 align="center" class="style8">Candidates Details</h2>
            <%
		 String type=request.getParameter("job");
		 
		  Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from candidates where type='"+type+"'";
  ResultSet rs = statement.executeQuery(query);
%>
            <table width="696" height="66" border="1" align="center" cellspacing="0" >
              <tr class="style8">
                <td width="53"><div align="center" class="style9"> Name</div></td>
                <td width="58"><div align="center" class="style9">Address</div></td>
                <td width="32"><div align="center" class="style9">City</div></td>
                <td width="42"><div align="center" class="style9">State</div></td>
                <td width="44"><div align="center" class="style9">Email</div></td>
                <td width="49"><div align="center" class="style9">Phone</div></td>
                <td width="89"><div align="center" class="style9">Qualification</div></td>
                <td width="106"><div align="center" class="style9">Experience</div></td>
                <td width="185"><div align="center" class="style9">Expected Salary</div></td>
              </tr>
              <%
while(rs.next())
{
%>
              <tr>
                <td>&nbsp;<%=rs.getString(2)%></td>
                <td>&nbsp;<%=rs.getString(3)%></td>
                <td>&nbsp;<%=rs.getString(4)%></td>
                <td>&nbsp;<%=rs.getString(5)%></td>
                <td>&nbsp;<%=rs.getString(6)%></td>
                <td>&nbsp;<%=rs.getString(7)%></td>
                <td>&nbsp;<%=rs.getString(10)%></td>
                <td>&nbsp;<%=rs.getString(13)%></td>
                <td>&nbsp;<%=rs.getString(16)%></td>
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
