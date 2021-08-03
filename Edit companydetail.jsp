<%@ page language="java" import="java.sql.*" %>
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

if (form.textfield6.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield6.focus(); return false;
	}
if (form.textfield7.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield7.focus(); return false;
	}
if (form.textfield8.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield8.focus(); return false;
	}


if (form.textfield9.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield9.focus(); return false;
	}
if (form.textfield10.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield10.focus(); return false;
	}
if (form.textfield11.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield11.focus(); return false;
	}
	
	if (form.textfield12.value=="")
	{	alert("Field should not be blank. Please enter it.");
		form.textfield12.focus(); return false;
	}







if(isNaN(form.age.value)) 
            { 
              alert("Age Should be a number ");
form.age.focus(); 
              return false; 
            }
			
			if(isNaN(form.textfield12.value)) 
            { 
              alert("Salary Should be a number ");
form.textfield12.focus(); 
              return false; 
            }

if(isNaN(form.phone.value)) 
            { 
              alert("Phone No. Should be a number ");
form.phone.focus(); 
              return false; 
            }

	}	
</script>
<%
String id=request.getParameter("cod");
out.print(id);
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select * from company where id='"+id+"'";
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
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form" method="post" onSubmit="return validate(this)" action="editcomp.jsp">
  <table width="673" height="483" border="0">
    <tr>
      <td width="184">&nbsp;</td>
      <td width="230"><div align="center" class="style10">
        <p>Company Details</p>
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
        <input type="text" name="textfield2">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Address</strong></td>
      <td><input name="textfield3" type="text" id="textfield3" value='<%=rs.getString(2)%>'></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>City</strong></td>
      <td><input name="textfield4" type="text" id="textfield4"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>State</strong></td>
      <td><label>
        <input name="textfield5" type="text" id="textfield5">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Contact Person</strong> </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Email</strong></td>
      <td><label>
        <input name="textfield6" type="text" id="textfield6">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Phone No. </strong></td>
      <td><label>
        <input type="text" name="phone">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Interview Date( if any) </strong></td>
      <td><label>
        <input name="textfield7" type="text" id="textfield7">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Type of Vaccancy </strong></td>
      <td><label>
        <input name="age" type="text" id="age">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Qualification Required </strong></td>
      <td><label>
        <select name="select">
          <option>B.Sc.</option>
          <option>BBA</option>
          <option>MBA</option>
          <option>BCA</option>
          <option>B.Tech.</option>
          <option>MCA</option>
          <option>M.Tech</option>
          <option>P.H.D</option>
          <option>M.A.</option>
          <option>B.A.</option>
          <option>B.Com.</option>
          <option>M.Sc</option>
          <option>M.Com.</option>
          <option>PGDCA</option>
          <option>Post Graduate Diploma</option>
          <option>X11</option>
          <option>X</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Cerification Required </strong></td>
      <td><input name="textfield8" type="text" id="textfield8"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Status</strong></td>
      <td><select name="select2">
        <option>Fresher</option>
        <option>Not Fresher</option>
      </select>      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Total Experience in years </strong></td>
      <td><select name="select3">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
        <option>11</option>
        <option>12</option>
        <option>13</option>
        <option>14</option>
        <option>15</option>
        <option>16</option>
        <option>17</option>
        <option>18</option>
        <option>19</option>
        <option>20</option>
        <option>21</option>
        <option>22</option>
        <option>23</option>
        <option>24</option>
        <option>Above 25</option>
        <option>Nil</option>
        <option>Below 1 year</option>
      </select>      </td>
    </tr>
    
    
    <tr>
      <td>&nbsp;</td>
      <td><strong>More Details</strong> </td>
      <td><label>
        <textarea name="textarea"></textarea>
      </label></td>
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
<%}%>
</body>
</html>