<%@ page language="java" import="java.sql.*"%>
<%@ page session="true" %>
<html>
<head>
<title>Placement System</title>
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
.style10 {
	color: #0000FF;
	font-size: 24px;
}
-->
</style>
</head>
<body>

<script language="javascript">

function validate(form) 
{	
if (form.textfield.value=="")
	{	alert("ID should not be blank. Please enter it.");
		form.textfield.focus(); return false;
	}



if (form.textfield2.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield2.focus(); return false;
	}
if (form.textfield3.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield3.focus(); return false;
	}
if (form.textfield4.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield4.focus(); return false;
	}
if (form.textfield5.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield5.focus(); return false;
	}

	}	
</script>
<%
 String id=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from emp_auth where id='"+id+"'";
  ResultSet rs = statement.executeQuery(query);
 

while(rs.next())
{
%>




<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form" method="post" onSubmit="return validate(this)" action="edit1.jsp">
  <table width="673" height="483" border="0">
    <tr>
      <td width="184">&nbsp;</td>
      <td width="230"><div align="center" class="style10">
        <p>Employee DETAIL</p>
        </div></td>
      <td width="245"><label>
      <div align="right"></div>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Id.</strong> </td>
      <td><input type="text" name="textfield" value='<%=rs.getString(1)%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Name </strong></td>
      <td><label>
        <input type="text" name="textfield2" value='<%=rs.getString(2)%>'>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Password</strong></td>
      <td><input name="textfield3" type="password" id="textfield3" value='<%=rs.getString(3)%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>IP</strong></td>
      <td><input name="textfield4" type="text" id="textfield4" value='<%=rs.getString(4)%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Department</strong></td>
      <td><input type="text" name="textfield5" value='<%=rs.getString(5)%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        
          <div align="right">
            <input type="submit" name="Submit" value="Submit">
          </div>
      </label></td>
      <td>&nbsp;</td>
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