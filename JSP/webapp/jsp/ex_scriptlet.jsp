<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>

<!DOCTYPE html>
<html>
<head>
<title> 현재 시간 </title>
<script src="../js/jquery-3.6.0.js"></script>
<script>
	$(function() {
		var color = "yellow";
		if( <%=hour%> <= 12 ) {
			color = "skyblue";
		}
		$("body").css("background",color)
	})
</script>
</head>
<body>
	<h1>현재 시간은
	<%=hour%>시 <%=minute%>분 <%=second%>초 입니다.</h1>
	
	오전은 하늘색, 오후는 노란색의 배경색이 지정됩니다.
</body>
</html>