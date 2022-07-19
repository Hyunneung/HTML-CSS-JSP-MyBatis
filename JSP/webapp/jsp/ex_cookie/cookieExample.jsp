<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>쿠키</title>
<style>
	body {margin:100px auto; text-aliggn:center; width:500px}
	fieldset {width:100%}
	form {height:3em; line-height:3em}
</style>
<%	
	String language = "korea";
	
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null) {
		Cookie cookies[] = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("language")) {
				language = cookies[i].getValue();
			}
		} // for 끝
	}
%>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<script>
	(function() {
		var version = "#" + <%=language%>;
		$(version).prop("checked",true);
	})
</script>
</head>
<body>
	<%
		if (language.equals("korea")) {
			out.print("<h3>안녕하세요. 쿠키 예제입니다.</h3>");
		} else {
			out.print("<h3>Hello. This is Cookie example</h3>");
		}
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea">한국어 페이지 보기
			<input type="radio" name="language" value="english" id="english">영어 페이지 보기
			<input type="submit" value="설정">
		</fieldset>
	</form>
</body>
</html>