<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.Properties" %>

<!-- 자바 메일 API 사용 -->
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<%
	request.setCharacterEncoding("euc-kr");  // post 방식 한글 처리
	String sender = request.getParameter("sender");
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// SMTP 서버 주소 지정
	String server = "smtp.naver.com";  // 네이버 메일 환결설정에 있는 SMTP 서버명
	int port = 587;
	
	try {
		// 서버 정보를 Properties 객체에 저장
		Properties properties = new Properties();
		
		// SMTP 서버 정보 설정
		properties.put("mail.smtp.host", server);  // smtp.naver.com
		properties.put("mail.smtp.port", port);  // 587
		
		// 암호화 프로토콜
		properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		Session s = Session.getInstance(properties);
		
		Address sender_address = new InternetAddress(sender);
		Address receiver_address = new InternetAddress(receiver);
		
		// 메일 보내기 위해 Message 객체 생성
		Message message = new MimeMessage(s);
		
		// 메일 한글 처리
		message.setHeader("content-type", "text/html;charset=euc-kr");
		
		message.setFrom(sender_address);  // 보내는 메일 주소 정보 설정
		message.addRecipient(Message.RecipientType.TO, receiver_address);  // 받는 메일 주소 정보 설정
		message.setSubject(subject); // 제목 정보 설정
		message.setContent(content, "text/html;charset=euc-kr"); // 내용 정보 설정
		message.setSentDate(new java.util.Date()); // 보내는 날짜 설정
		
		Transport transport = s.getTransport("smtp");
		
		transport.connect(server, ex_mail.MyMail.naverId, ex_mail.MyMail.naverPw);  // 메일 보낼 아이디, 비밀번호
		
		transport.sendMessage(message, message.getAllRecipients());
		
		transport.close();
		
		out.print("<h3>메일이 정상적으로 전송되었습니다.</h3>");
	} catch(Exception e) {
		out.print("<h3>SMTP 서버가 잘못 설정되었거나, 서비스에 문제가 있습니다.</h3>");
		e.printStackTrace();
	}
%>