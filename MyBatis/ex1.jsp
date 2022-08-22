<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>조회기간</title>
</head>
<body>
		 
	<form action="${pageContext.request.contextPath}/term.emp" method="post">
		<label>조회기간</label><br>
		<input type="date" name="startday" min="1980-01-01" max="1987-12-31">
		~<input type="date" name="endday" min="1980-01-01" max="1987-12-31"><br>
		
		<label>부서번호</label><br>
		<select name="deptno">
			<option value="10">10</option>
			<option value="20">20</option>
			<option value="30">30</option>
			<option value="40">40</option>
		</select>
		<input type="submit" value="검색">
	</form>	 
		 
</body>
</html>