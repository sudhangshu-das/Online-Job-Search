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
 String state=request.getParameter("textfield5");
  String contact=request.getParameter("textfield6");

 String email=request.getParameter("textfield7");
 String dob=request.getParameter("textfield8");
  String type=request.getParameter("textfield9");

 String qual=request.getParameter("select4");
 String cer=request.getParameter("select");
 String status=request.getParameter("textfield8");
 String exp=request.getParameter("select2");
 String sal=request.getParameter("select3");
 String det=request.getParameter("textarea");
  
  
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
String query="insert into company values('"+id+"','"+name+"','"+address+"','"+city+"','"+state+"','"+contact+"','"+email+"','"+dob+"','"+type+"','"+qual+"','"+cer+"','"+status+"','"+exp+"','"+sal+"','"+det+"')";

 statement.executeUpdate(query);
 
session.setAttribute("ins","Insert Sucessfully");

 %>
  <jsp:forward page="companydetail.jsp" />
  </p>
<p>&nbsp;</p>
</body>
</html>
