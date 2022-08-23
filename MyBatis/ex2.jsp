<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/check.emp" method="post">
		<label>부서번호</label><br>
		<input type="checkbox" name="deptno" value="10">10
		<input type="checkbox" name="deptno" value="20">20
		<input type="checkbox" name="deptno" value="30">30
		<input type="checkbox" name="deptno" value="40">40
		<input type="submit" value="검색">
	</form>
</body>
</html>