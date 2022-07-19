<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> 쿠키테스트 </title>
</head>
<body>
<%
	String name = "";
	String value = "";

	// 쿠키 있는지 확인
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null) {
		Cookie cookies[] = request.getCookies();  // 쿠키를 배열로 가져온다 
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("name")) { // 쿠키 이름이 "name" 인 것 찾음
				name = cookies[i].getName();  // 쿠키 이름
				value = cookies[i].getValue();  // 쿠키 값
			}
		} // for 끝
%>
		<h2>쿠키 이름: <%=name%></h2>
		<h2>쿠키 값: <%=value%></h2>
<%
	} else {
%>
		<h2>존재하는 쿠키가 없습니다.</h2>
<%	} %>
</body>
</html> 
