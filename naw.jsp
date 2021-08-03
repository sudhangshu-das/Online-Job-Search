<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Job Search Engine</title>
</head>


<body>
<% 

String str=request.getParameter("textfield");
String str1=request.getParameter("textfield4");
String email=request.getParameter("textfield3");



		Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();
  String query="select * from user where name='"+str+"' and email='"+email+"' and password='"+str1+"'";
  ResultSet x = statement.executeQuery(query);



if(x.next())
{
String s=x.getString(2);
//session.setAttribute("empid",s);
//out.println(session.getAttribute("empid"));
//response.sendRedirect("aboutus.jsp");
session.setAttribute("abc",s);
//response.sendRedirect("home1.jsp");
%><jsp:forward page = "home1.jsp"></jsp:forward>
<%}
else
{
//out.println("INM");
response.sendRedirect("home.jsp");
}

%>


</body>
</html>
