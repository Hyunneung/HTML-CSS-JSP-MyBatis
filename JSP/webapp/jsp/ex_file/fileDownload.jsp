<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%@ page import="java.io.*" %>
<%@ page trimDirectiveWhitespaces = "true"%> <!-- 불필요한 공백 자동 제거 -->

<%
	String fileName = request.getParameter("file_name"); // file_name은 fileCheck.jsp의 a태그에서 쿼리스트링 될 부분
	System.out.println("fileName = " + fileName);
	
	String savePath = "ex_imageupload";  // 파일이 다운로드 될 곳 (폴더)
	
	ServletContext context = pageContext.getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
		
	String sFilePath = sDownloadPath + "//" + fileName;
	System.out.println("sFilePath = " + sFilePath);
	
	byte b[] = new byte[4096];
	
	String sMimeType = context.getMimeType(sFilePath);
	System.out.println("sMimeType >>>" + sMimeType);
	
	if (sMimeType == null) {
		sMimeType = "application/octet-stream";  // 지정하지 않은 파일 형식
	}
	
	response.setContentType(sMimeType);
	
	// 파일명 한글 처리
	String sEncoding = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
	
	response.setHeader("Content-Disposition", "attachment; filename = " + sEncoding);
	
	try (
			BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());  // 출력스트림
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(sFilePath));  // 입력스트림
		)
		{
			int numRead;
			
			while((numRead = in.read(b, 0, b.length)) != -1) {  // 읽을 데이터가 존재하는 경우
				out2.write(b, 0, numRead);  // 바이트 배열 b의 0번부터 numRead만큼 출력
			}
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
