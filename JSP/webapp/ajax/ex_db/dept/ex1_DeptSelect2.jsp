<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Dept 테이블 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>	
</head>
<body>
	<div class="container">
		<h3 class="mt-5">검색할 부서 번호를 입력하세요.</h3>
		<form class="mt-3">
			<div class="row">
				<input type="search" name="deptno" id="deptno" required class="form-control col-8 ml-3">
				<button class="btn btn-info">검색</button>
			</div>
		</form>
	</div>
	<script>
		function getData(go_url, senddata){	
			$.ajax({
				url : "${pageContext.request.contextPath}/" + go_url,
				type : "post",
				data : senddata,
				dataType : "json",
				success : function(rdata){
							var output = "<div id='result'>"
									   + "<table class='table'><thead>"
							  		   + "<tr><th>부서번호</th><th>부서명</th><th>지역</th></tr><thead><tbody>";
							
							$(rdata).each(function(){
								output += "<tr><td>" + this.deptno + "</td>"
								        + "    <td>" + this.dname + "</td>"
								        + "    <td>" + this.loc + "</td></tr>";
							})  		   
							output += "</tbody></table></div>";
							$(".container").append(output);
					
				},
				
				error : function(request, status, error){
					$(".container").append(request.status + "<br>" + error)
				}
			}) // ajax end
		} // getData() 끝
		
		getData("dept_select2");
		
		// 검색
		$("form").submit(function(e){
			e.preventDefault(); // form의 기본 이벤트 제거
			$('#result').remove(); // 결과 테이블 중복 생성 방지
			
			getData("dept_select3", {deptno:$("input").val()})
		})
</script>
</body>
</html>