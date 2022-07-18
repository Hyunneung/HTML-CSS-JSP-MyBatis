<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> 결과 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
	.container{width:70%; margin-top:30px; vertical-align: middle}
	h3{text-align:center}
</style>
</head>
<body>
	<div class="container">
		<h3> Request 예제입니다. </h3>
		<form action="requestTest1.jsp" method="get">
			<table class="table">
				<tr>
					<td>이름</td>
					<td><%=request.getParameter("name")%></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<%
						if(request.getParameter("gender").equals("male")) {
							out.println("남자");
						} else {
							out.println("여자");
						}
					%>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
					<%
						String hobby = "";
						for (String h : request.getParameterValues("hobby")) {
							out.println(h + " ");
						}
					%>
					</td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>