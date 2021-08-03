<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <link rel="preconnect" href="https://fonts.googleapis.com"> 
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@200&display=swap" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Candidate Details</title>
    <style type="text/css">
  
      .style8 {
        color: red;
        
      }

      .style9 {
        color: red;
        font-weight: bold;
        font-family: 'Prompt', sans-serif;
      }

      .table-style{
        border-style: double;
        color: blue;
      }

      .table_detail_style{
        border-style: double;
        color: blue;
      }

      .heading{
        color: brown;
        font-family: 'Prompt', sans-serif;
        font-weight: bold;
      }

      .style11{   /* This is for the table contents */
        color: orange;
        font-family: 'Prompt', sans-serif;

      }
    </style>
  </head>
  <%@ include file="header.jsp" %>

    <body>
      <table class = "table_detail_style" width="200" border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="931" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="180" height="67" align="left" valign="top" scope="col">
            <%@ include file="menu.jsp" %>
          </th>
          <th width="106" scope="col">&nbsp;</th>
          <th width="645" align="left" valign="top" scope="col">
            <p>&nbsp;</p>
            <table width="618" cellspacing="0" cellpadding="0">
              <tr>
                <th width="618" height="203" align="left" valign="top" scope="col">
                  <h2 align="center" class = "heading">Candidates Details According to City </h2>
                  <p align="center" class="style8">&nbsp;</p>
                  <% String city=request.getParameter("textfield"); Class.forName("com.mysql.jdbc.Driver"); Connection
                    connection=DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234"); Statement
                    statement=connection.createStatement(); String query="select * from candidates where city='"
                    +city+"'"; ResultSet rs=statement.executeQuery(query); %>
                    <table class = "table_detail_style", align = "center" cellspacing="0">
                      <tr>
                        <td width="107" class="table-style">
                          <div align="center" class="style9">Name</div>
                        </td>
                        <td width="57" class="table-style">
                          <div align="center" class="style9">Address</div>
                        </td>
                        <td width="44" class="table-style">
                          <div align="center" class="style9">City</div>
                        </td>
                        <td width="68" class="table-style">
                          <div align="center" class="style9">State</div>
                        </td>
                        <td width="102" class="table-style">
                          <div align="center" class="style9">E-Mail ID</div>
                        </td>
                        <td width="87" class="table-style">
                          <div align="center" class="style9">Contact Person</div>
                        </td>
                        <td width="107" class="table-style">
                          <div align="center" class="style9">Date of Birth</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Age</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Qualifications</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Certifications</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Status</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Experience</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Marital Status</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Skills</div>
                        </td>
                        <td width="113" class="table-style">
                          <div align="center" class="style9">Expected Salary</div>
                        </td>
                      </tr>
                      <% while(rs.next()) { %>
                        <tr>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(2)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(3)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(4)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11"  align="center">
                              <%=rs.getString(5)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(6)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(7)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(8)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(9)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(10)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(11)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(12)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(13)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(14)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(15)%>
                            </div>
                          </td>
                          <td class = "table_detail_style">
                            <div class = "style11" align="center">
                              <%=rs.getString(16)%>
                            </div>
                          </td>
                        </tr>
                        <%}%>
                    </table>
                    <p align="center" class="style8">&nbsp;</p>
                </th>
              </tr>
            </table>
            <h2 align="center" class="style8">&nbsp;</h2>
          </th>
        </tr>
      </table>
      <p>&nbsp;</p>
    </body>

  </html>