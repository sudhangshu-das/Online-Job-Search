<%@ page language="java" import="java.sql.*" %>
<%@ page session="true" %>
<html>
<head>
<title>Uploading</title>
<style type="text/css">
<!--
.style2 {font-family: Arial, Helvetica, sans-serif}
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
	
	
}

	</script>

  <form  ENCTYPE="multipart/form-data" ACTION="resumeins.jsp" METHOD="POST" onSubmit="return validate(this)">

<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top"><%@ include file="menu.jsp"%></td>
<td width="750" align="center" valign="top"><p>&nbsp;</p>
<table width="380" border="0">
  <tr>
    <td height="32" colspan="2"><strong>Upload</strong></td>
    <td width="85">&nbsp;</td>
  </tr>
  
  <tr>
    <td width="137">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td><strong>Job Type</strong></td>
    <td><input name="textfield2" type="text" id="textfield2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Uploaded By</strong></td>
    <td><input type="text" name="textfield3"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Date</strong></td>
    <td><input type="text" name="textfield4"></td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td><strong>File</strong></td>
    <td><input type="file" name="file"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="Submit"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<p><BR __designer:dtid="2251804108652552" />
  <span class="style2"><BR __designer:dtid="2251804108652556" />
    </span></p>
  </td>
</tr>
</table>
</form></body>
</html>