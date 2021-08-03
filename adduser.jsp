<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%  
	  
 String uname=request.getParameter("textfield");
 String empid=request.getParameter("textfield2");
  
 String email=request.getParameter("textfield3");
 
String password=request.getParameter("textfield4");
try
{
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
String query="insert into user values('"+uname+"','"+empid+"','"+email+"','"+password+"')";

 statement.executeUpdate(query);

 session.setAttribute("abc",empid);
 response.sendRedirect("home1.jsp");
  }
 catch(Exception et)
 {
 response.sendRedirect("user details.jsp");
 }
 %>




</body>
</html>
