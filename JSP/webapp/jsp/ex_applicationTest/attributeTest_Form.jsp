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
	<h2>영역과 속성 테스트</h2>
	<form action="attributeTest1.jsp" method="post">
		<table>
			<tr><td colspan=2>Application 영역에 저장할 내용들</td></tr>
		
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" required></td>
			</tr>
		
			<tr><td colspan=2><input type="submit" value="전송"></td></tr>
		</table>
	</form>
</body>
</html>