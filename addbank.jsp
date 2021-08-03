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
 String address=request.getParameter("textfield3");
 String city=request.getParameter("textfield4");
  String amount=request.getParameter("textfield8");

 String mode=request.getParameter("select");
 String che=request.getParameter("textfield9");
 String dat=request.getParameter("textfield10");
  
  
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
String query="insert into bank values('"+id+"','"+name+"','"+address+"','"+city+"','"+amount+"','"+mode+"','"+che+"','"+dat+"')";

 statement.executeUpdate(query);
 
 out.println("inserted");
 response.sendRedirect("bankdetail.jsp");
 %>
</p>
<p>&nbsp;</p>
</body>
</html>
