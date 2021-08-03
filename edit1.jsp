<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<p>
  <%  
	    String id=request.getParameter("textfield");
 String name=request.getParameter("textfield2");
 String pass=request.getParameter("textfield3");
 String ip=request.getParameter("textfield4");
 String dep=request.getParameter("textfield5");

  
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
String query="update emp_auth set name='"+name+"',password='"+pass+"',ip='"+ip+"',department='"+dep+"' where id='"+id+"'";

 statement.executeUpdate(query);
 
 out.println("Updated");
 response.sendRedirect("edit del.jsp");
 %>
</p>
<p>&nbsp;</p>
</body>
</html>
