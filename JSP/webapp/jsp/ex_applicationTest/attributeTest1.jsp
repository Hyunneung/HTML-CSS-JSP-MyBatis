<!-- 유효성 검사 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> Attribute Test Form </title>
<link rel="stylesheet" href="../css/applicationTest.css" type="text/css">
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	application.setAttribute("id", request.getParameter("id"));
	application.setAttribute("name", request.getParameter("name"));
%>
	<h2>영역과 속성 테스트</h2>
	<h3><%=application.getAttribute("name")%>님 반갑습니다.</h3>
	<h3><%=application.getAttribute("name")%>의 아이디는 <%=application.getAttribute("id")%>입니다</h3>
	<form action="attributeTest2.jsp" method="post">
		<table>
			<tr><td colspan=2>Session 영역에 저장할 내용들</td></tr>
		
			<tr>
				<td>e-mail주소</td>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<td>집 주소</td>
				<td><input type="text" name="address" required></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" required></td>
			</tr>
			
			<tr><td colspan=2><input type="submit" value="전송"></td></tr>
		</table>
	</form>
</body>
</html>