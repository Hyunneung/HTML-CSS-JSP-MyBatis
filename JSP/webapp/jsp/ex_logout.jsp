<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>로그아웃 페이지</title>
</head>
<body>
	<%=session.getAttribute("id") %>님 로그아웃 되셨습니다.
	<%session.invalidate();%>  <!-- 세션 모든 속성 삭제 -->
	<a href="ex_login.jsp">로그인</a>
</body>
</html>