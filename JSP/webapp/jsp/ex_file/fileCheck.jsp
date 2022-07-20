<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");  // post 방식 한글 처리	

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String systemName = request.getParameter("systemName");
	String origfileName = request.getParameter("origfileName");
	String uploadPath = request.getParameter("uploadPath");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일 업로드 확인 및 다운로드</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="text-align:center">
		<h4>파일 다운로드 폼</h4>
		<table class="table table-bordered table-striped">
			<tr>
				<td>작성자</td><td><%=name%></td>
			</tr>
			<tr>
				<td>제목</td><td><%=subject%></td>
			</tr>
			<tr>
				<td>파일명</td><td><a href="fileDownload.jsp?file_name=<%=systemName%>"><%=origfileName%></a></td>
			</tr>
			<tr>
				<td>uploadPath</td><td><%=uploadPath%></td>
			</tr>
		</table>
	</div>
</body>
</html>