<%@ page language="java" %>
  <%@ page session="true" %>
    <html>

    <head>
      <title>Admin Panel</title>
      <style type="text/css">
        <!--
        .style10 {
          font-size: 16px;
          font-weight: bold;
        }

        .style13 {
          font-size: x-large;
          color: #FF0000;
        }

        .style16 {
          font-size: x-large
        }
        -->
      </style>
    </head>

    <body>

      <script language="javascript">

        function validate(form) {
          if (form.textfield.value == "") {
            alert("Username should not be blank. Please enter it.");
            form.textfield.focus(); return false;
          }

          if (form.textfield2.value == "") {
            alert("Password should not be blank. Please enter it.");
            form.textfield2.focus(); return false;
          }
        }
      </script>

      <table width="731" border="0" align="center" cellspacing="0">
        <tr>
          <td colspan="2" height="120">
            <%@ include file="header.jsp" %>
          </td>
        </tr>

        <tr>
          <td width="150" align="left" valign="top">
            <%@ include file="menu.jsp" %>
          </td>
          <td width="750" align="left" valign="top" bgcolor="#FFFFFF">
            <form name="form" onSubmit="return validate(this)" method="post" action="naw1.jsp">
              <table width="673" height="340" border="0">
                <tr>
                  <td height="210" colspan="3">
                    <div align="center">
                      <p class="style10 style13"><span class="style16"><img src="images/admin_icon.jpg" width="100"
                            height="100" align="middle"></span></p>
                      <p class="style10 style13"><span class="style16">Administrator Login Form</span></p>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td width="283" height="43">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User
                      Name </strong></td>
                  <td width="144"><label>
                      <input type="text" name="textfield">
                      <br>
                    </label></td>
                  <td width="206">&nbsp;</td>
                </tr>
                <tr>
                  <td height="38">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</strong>
                  </td>
                  <td><label>
                      <input type="password" name="textfield2">
                    </label></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="38">&nbsp;</td>
                  <td><input type="submit" name="Submit" value="Login"></td>
                  <td>&nbsp;</td>
                </tr>
              </table>
            </form>

    </body>

    </html>