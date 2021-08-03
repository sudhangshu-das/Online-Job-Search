<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.net.*,javax.mail.*,java.io.*,java.util.*,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" errorPage="" %>
<html>
<head>
<title>Admin Menu</title>
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
.style10 {font-size: 24px; color: #0000FF;}
-->
</style>
</head>
<body>
<table width="731" border="0" align="center" cellspacing="0"> 
<tr>
	<td colspan="2" height="120"><%@ include file="header.jsp" %></td>
</tr>

<tr>
<td width="150" align="left" valign="top">
<%@ include file="menu.jsp"%></td>
<td width="750" align="left" valign="top" bgcolor="#FFFFFF"><form name="form1" method="post" action="">
  <table width="671" height="489" border="0">
    <tr>
      <td height="75"><div align="center" class="style10">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div></td>
      </tr>
    
    
    <tr>
      <td height="408" align="left" valign="top"><p align="center">
	  <% 
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();

 InetAddress ip =InetAddress.getLocalHost();
//out.println("IP:"+ip.getHostAddress());
String ipadd=(ip.getHostAddress()).toString();
out.print(ipadd + "<br>");
String str=request.getParameter("job");

    java.util.Date dat = new java.util.Date();



 String query3="insert into hits values('"+str+"',1,'"+dat+"')";
  statement.executeUpdate(query3);


String query4="select * from hits where Id='"+str+"'";
  ResultSet x4 = statement.executeQuery(query4);
int j=0;
 while(x4.next()==true)
    {
     j=j+1;
    }

if(j<20)
{

  String query="select * from emp_auth where department='"+str+"'";
  ResultSet x = statement.executeQuery(query);

String s="";
String dep="";
int i=0;
    while(x.next()==true)
    {
     s=x.getString(4);
	 dep=x.getString(5);
	  i=i+1;
    }
	//out.print(str);
	//out.print(dep);
	//session.setAttribute("jo",dep);%>
 
<%    if(ipadd.equals(s))
	{
	
	session.setAttribute("jo",dep);
	%>
<jsp:forward page="admin menu.jsp"/>
<%	}

  
  
  /*
   else if("1".equals(s))
	{
	
	session.setAttribute("jo",dep);
	%>
	<jsp:forward page="admin menu.jsp"/>
<%	}
else if("127.0.0.1".equals(s))
	{
	
	session.setAttribute("jo",dep);
	%>
	<jsp:forward page="admin menu.jsp"/>
<%	}
else if("3".equals(s))
	{
	
	session.setAttribute("jo",dep);
	%>
	<jsp:forward page="admin menu.jsp"/>
<%	}

else if("4".equals(s))
	{
	
	session.setAttribute("jo",dep);
	%>
	<jsp:forward page="admin menu.jsp"/>
	<%	}
	 */






	else
   {
     out.println("<br>INVALID USERNAME OR PASSWORD");
	 
	 
	 	String host="smtp.gmail.com",user="sudhangshudas165@gmail.com", pass="123456";
		
		user="sudhangshudas165@gmail.com";
		pass="123456";
		//host = smtp_server; "smtp.gmail.com"; user = jsp_email; //"YourEmailId@gmail.com" // email id to send the emails
		//pass = jsp_email_pw; //Your gmail password
		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		String to = "sudhangshudas165@gmail.com"; // out going email id
		String from = "sudhangshudas165@gmail.com"; //Email id of the recipient  /* "smtp.gmail.com" */
		String subject = "INvalid is trying to Access";
		String messageText = "email_body";
		boolean sessionDebug = true;
		Properties props = System.getProperties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.transport.protocol.", "smtp");   /* props.put("mail.host", host) */
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.secure", "true");
		props.put("mail.smtp.", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(sessionDebug);
		try{
			
			Message msg= new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(to)};
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text
		
		Transport transport;
		 transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		//WasEmailSent = true; // assume it was sent
		transport.close();}
		catch (Exception err) {
		out.print(err);
		}

//response.sendRedirect("home.jsp");
   }
   
   
   }
   
   else
   {
    out.println("<br>NO MORE DATA ACCESS RIGHTS");
	
		String host="smtp.gmail.com",user="", pass="";
		
		user="sudhangshudas165@gmail.com";
		pass="123456";
		//host = smtp_server; //"smtp.gmail.com"; user = jsp_email; //"YourEmailId@gmail.com" // email id to send the emails
		//pass = jsp_email_pw; //Your gmail password
		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		String to = "sudhangshudas165@gmail.com"; /* Email id of the recipient*/
		String from = "sudhangshudas165@gmail.com"; /*out going email id */
		String subject = "email_subject";
		String messageText = "email_body";
		boolean sessionDebug = true;
		Properties props = System.getProperties();
		props.put("mail.smtp.host", "smtp.gmail.com");;
		props.put("mail.transport.protocol.", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.secure", "true");
		props.put("mail.smtp.", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(sessionDebug);
		try{
			
			Message msg= new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(to)};
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text
		
		Transport transport;
		 transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		//WasEmailSent = true; // assume it was sent
		transport.close();}
		catch (Exception err) {
		out.print(err);
		}

}
   
   
%>

	  
	  
	  
	  
	  
	  
	  
	 
        </td>
      </tr>
  </table>
</form>

</body>
</html>