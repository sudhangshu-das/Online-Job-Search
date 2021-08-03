<!-- else
{
out.print("ACCESS DENIED FROM THIS SYSTEM");


		
	 	String host="smtp.gmail.com",user="sudhangshudas165@gmail.com", pass="123456";
		
		user="sudhangshudas165@gmail.com";
		pass="123456";
		//host = smtp_server; "smtp.gmail.com"; user = jsp_email; 
		//pass = jsp_email_pw; //Your gmail password
		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		String to = "sudhangshudas165@gmail.com"; // out going email id
		String from = "sudhangshudas165@gmail.com"; //Email id of the recipient  <!-- "smtp.gmail.com"-->
		
		<!-- String subject = "INvalid is trying to Access";
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


} -->