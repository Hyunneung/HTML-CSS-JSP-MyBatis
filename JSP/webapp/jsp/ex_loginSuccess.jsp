<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> 로그인 성공 페이지</title>
</head>
<body>
	<%=session.getAttribute("id") %>님 로그인에 성공하셨습니다.
	<a href="ex_logout.jsp">로그아웃</a>
</body>
</html>