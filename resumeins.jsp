<%@ page language="java" import="java.io.*,java.util.*,java.sql.*,org.apache.commons.fileupload.*,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.disk.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
  
 
        <center><h1>File has been Uploaded</h1></center>
   <%
      String p1="";
String p2="";
 String p3="";
  String p4="";

 %>
 <%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 } else {
   FileItemFactory factory = new DiskFileItemFactory();
   ServletFileUpload upload = new ServletFileUpload(factory);
   List items = null;
   try {
   items = upload.parseRequest(request);
   } catch (FileUploadException e) {
   e.printStackTrace();
   }
   Iterator itr = items.iterator();
   while (itr.hasNext()) 
	   {
   FileItem item = (FileItem) itr.next();
   if (item.isFormField())
	   {
	      String name = item.getFieldName();
		  String value = item.getString();
		  if(name.equals("textfield2"))
	           {
			   p1=value;
            		
			   }
			  if(name.equals("textfield3"))
	                  {  
				         p2=value;            		 
                         
					  }
					   if(name.equals("textfield4"))
	           {
			   p3=value;
            		
			   }
			 
   } else
	   {
    try {
	
   String saveFile = item.getName();
   	saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+1);
	
 File savedFile1 = new File("c:\\program files\\Apache software foundation\\tomcat 5.5\\webapps\\placement(data security)_new\\resumes\\"+saveFile);
  
 item.write(savedFile1);  
  out.print(saveFile);
     %><center>
   <% 
   
      	
		     
		     
		    // out.println("<br><b>Picture ID :<b>"+picid);
	
	String s="resumes/"+saveFile;
	
	
 Class.forName("com.mysql.jdbc.Driver");
		  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/jobs","root","1234");
		  Statement statement = connection.createStatement();


String query="insert into resumes values('"+p1+"','"+p2+"','"+p3+"','"+s+"')";

 statement.executeUpdate(query);
 

out.println("<br><br>Record inserted");
	
   } catch (Exception e) {
   out.print(e.getMessage());
   }
   }
   }
   }
   %>
   
	
   
  </body>
</html>
