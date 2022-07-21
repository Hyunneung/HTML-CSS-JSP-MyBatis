<!-- 유효성 검사 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> Attribute Test Form </title>
<link rel="stylesheet" href="../css/applicationTest2.css" type="text/css">
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
	<h2>영역과 속성 테스트</h2>
	<form>
		<table>
			<tr><td colspan=2>Application 영역에 저장된 내용들</td></tr>
		
			<tr>
				<td>이름</td>
				<td><%=application.getAttribute("name")%></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%=application.getAttribute("id")%></td>
			</tr>
		</table>
	</form>
	
	<form>
		<table>
			<tr><td colspan=2>Session 영역에 저장할 내용들</td></tr>
		
			<tr>
				<td>address</td>
				<td><%=session.getAttribute("address")%></td>
			</tr>
			<tr>
				<td>tel</td>
				<td><%=session.getAttribute("tel")%></td>
			</tr>
			<tr>
				<td>email</td>
				<td><%=session.getAttribute("email")%></td>
			</tr>
		</table>
	</form>
</body>
</html>