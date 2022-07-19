<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%	
	// cookieExample.jsp에서 체크된 language를 쿠키에 저장
	Cookie cookie = new Cookie("language", request.getParameter("language"));
	
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
%>
<script>
	location.href = "cookieExample.jsp"
</script>