<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Dept 테이블 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>	
<script>
	$(function(){
		$("button").click(function(){
			$("table").remove(); // 테이블 중복 생성 방지
			
			$.ajax({
				url : "${pageContext.request.contextPath}/dept_select2",
				type : "post",
				dataType : "json",
				success : function(rdata){
							var output = "<table class='table'><thead>"
							  		   + "<tr><th>부서번호</th><th>부서명</th><th>지역</th></tr><thead><tbody>";
							
							$(rdata).each(function(){
								output += "<tr><td>" + this.deptno + "</td>"
								        + "    <td>" + this.dname + "</td>"
								        + "    <td>" + this.loc + "</td></tr>";
							})  		   
							output += "</tbody></table>";
							$(".container").append(output);
					
				},
				
				error : function(request, status, error){
					$(".container").append(request.status + "<br>" + error)
				},
				
				complete : function() {
					$(".container").append("<h4 style='color:blue'>ajax 완료</h4>");
				}
				
			}) // ajax end
		}) // click end
	})
</script>
</head>
<body>
	<div class="container">
		<button class="btn btn-info">JSON</button>
	</div>
</body>
</html>