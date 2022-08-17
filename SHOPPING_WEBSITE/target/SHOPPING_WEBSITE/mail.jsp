<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <%@ page language="java" import="javax.naming.*,java.io.*,javax.mail.*,
    javax.mail.internet.*,com.sun.mail.smtp.*"%>
    <html>
    <head>
    <title>sending mail using contactus form</title>
    </head>
    <body>
    <%
    try{
    Session mailSession = Session.getInstance(System.getProperties());
    Transport transport = new SMTPTransport(mailSession,new URLName("smtp.mail.yahoo.com"));
    transport = mailSession.getTransport("smtps");
    transport.connect("smtp.mail.yahoo.com",465,"myyahooid@yahoo.com","myyahoopassword");
   MimeMessage m = new MimeMessage(mailSession);
   m.setFrom(new InternetAddress(%><%request.getParameter("from")%><%));
   Address[] toAddr = new InternetAddress[] {
   new InternetAddress(%><%request.getParameter("to")%><%)
   };
   m.setRecipients(javax.mail.Message.RecipientType.TO, toAddr );
   m.setSubject(%><%request.getParameter("subject")%><%);
   m.setSentDate(new java.util.Date());
   m.setContent(%><%request.getParameter("description")%><%, "text/plain");

   transport.sendMessage(m,m.getAllRecipients());
   transport.close();
   out.println("Thanks for sending mail!");
   }
   catch(Exception e){
   out.println(e.getMessage());
   e.printStackTrace();
   }
   %>
   </body>