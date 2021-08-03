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
 String email=request.getParameter("textfield6");
 String dob=request.getParameter("textfield7");
 String qual=request.getParameter("select");
 String cer=request.getParameter("textfield8");
 String status=request.getParameter("select2");
 String exp=request.getParameter("select3");
 String mstatus=request.getParameter("textfield10");
 String skill=request.getParameter("textfield11");
 String sal=request.getParameter("textfield12");

 String age=request.getParameter("age");
 String phone=request.getParameter("phone");
  
 String det=request.getParameter("textarea");
  
  
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
String query="update candidates set name='"+name+"',address='"+address+"',city='"+city+"',state='"+state+"',email='"+email+"',phone='"+phone+"',dob='"+dob+"',age='"+age+"',qual='"+qual+"',certi='"+cer+"',status='"+status+"',exp='"+exp+"',mstatus='"+mstatus+"',skills='"+skill+"',nagosal='"+sal+"',moredet='"+det+"'";

 statement.executeUpdate(query);
 
 out.println("Updated");
 response.sendRedirect("status1.jsp");
 %>
</p>
<p>&nbsp;</p>
</body>
</html>
