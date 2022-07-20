<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<!-- cos.jar -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  <!-- 파일 업로드 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>  <!-- 파일 이름 중복 처리 -->

<%
	String uploadPath = application.getRealPath("ex_imageupload");  // 파일이 업로드 되는 곳(폴더)
	out.print("upload 경로 : " + uploadPath);
	
	int size = 10*1024*1024;
	
	String name = "";
	String subject = "";
	String systemName = "";
	String origfileName = "";
	
	try {
		// 파일 업로드
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "euc-kr", new DefaultFileRenamePolicy());
		
		// <form enctype=”multipart/form-data”> 로 넘긴 파라미터는 MultipartRequest를 통해서 파라미터를 수신해야 한다
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		systemName = multi.getFilesystemName("fileName"); // 시스템상 파일명
		origfileName = multi.getOriginalFileName("fileName"); //  원본 파일명
	} catch (Exception e) {
		e.printStackTrace();
		out.print("파일 업로드에러입니다");
	}
%>
<html>
<head>
<title>파일 업로드</title>
</head>
<body>
	<form action="fileCheck.jsp" method="post">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="subject" value="<%=subject%>">
		<input type="hidden" name="systemName" value="<%=systemName%>">
		<input type="hidden" name="origfileName" value="<%=origfileName%>">
		<input type="hidden" name="uploadPath" value="<%=uploadPath%>">
		
		<input type="submit" value="업로드 확인 및 다운로드 페이지 이동">
	</form>
</body>
</html>