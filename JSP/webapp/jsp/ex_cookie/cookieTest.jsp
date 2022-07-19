<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> 쿠키테스트 </title>
</head>
<body>
<%
	// 쿠키 생성
	Cookie cookie = new Cookie ("name", "KimJava");
	
	// 쿠키 유지 시간
	cookie.setMaxAge(5);  // 쿠키 5초동안 유지
	
	// 쿠키를 클라이언트에 전송
	response.addCookie(cookie);
%>
<h2>쿠키 이름: <%=cookie.getName() %></h2>
<h2>쿠키 값: <%=cookie.getValue() %></h2>

<a href="cookieTest2.jsp">쿠키테스트</a>

</body>
</html>