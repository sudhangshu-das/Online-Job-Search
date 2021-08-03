<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.net.*,javax.mail.*,java.io.*,java.util.*,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Admin Panel</title>
</head>


<body><%@ include file="header.jsp" %>
<%! String ip;%>
<% 

InetAddress sysip =InetAddress.getLocalHost();

String ipadd=(sysip.getHostAddress()).toString();
out.print(ipadd);



Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

String str=request.getParameter("textfield");
String str1=request.getParameter("textfield2");


  String query1="select * from admin where user='"+str+"' and pass='"+str1+"'";
 
  ResultSet rs = statement.executeQuery(query1);
  

int i=0;

while(rs.next())
 {
 i++;
 ip=rs.getString(1);
}
String a="";

if(i>0 && ip.equals(ipadd))
{
String query="select * from admin where user='"+str+"' and pass='"+str1+"'";
 
  ResultSet x = statement.executeQuery(query);
    if(x.next())
	{
	a=x.getString(2);
	}
	
	if(!a.equals(""))
	{
	if(a.equals("user")) 
    {
	session.setAttribute("abc",str);
    
	 %>
	<jsp:forward page="admin menu2.jsp"></jsp:forward>
   <% }
	
	else
	{
	
	session.setAttribute("abc",str);
	%>
	 <jsp:forward page="admin menu1.jsp"></jsp:forward>
	
	<%}
	
}
    else
   {
     out.println("INVALID USERNAME OR PASSWORD");
     response.sendRedirect("home.jsp");
   }
}


%>


</body>
</html>
