<!-- 유효성 검사 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> Attribute Test Form </title>
<link rel="stylesheet" href="applicationTest.css" type="text/css">
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	session.setAttribute("email", request.getParameter("email"));
	session.setAttribute("address", request.getParameter("address"));
	session.setAttribute("tel", request.getParameter("tel"));

%>
	<h2>영역과 속성 테스트</h2>
	<h3><%=application.getAttribute("name")%>님 정보가 모두 저장되었습니다.</h3>
	<a href="attributeTest3.jsp" >확인하러 가기</a>
</body>
</html>