<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> JSON 파일을 GET 방식으로 로드 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="../../js/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("button").click(function(){
			$("table").remove(); // 테이블 중복으로 생기는 것 방지
			
			$.ajax({
				url: "item.json", // 요청 전송 url
				dataType : "json", // 받을 자료형
				cache : false, // 캐시 사용 안 함
				
				success : function(data){ // 요청 성공 시 수행 - data에 item.json 들어있다
					if(data.length > 0) {
						var output="<table class='table table-border'><thead>";
						output += "<tr><th>번호</th><th>상품명</th><th>가격</th><th>설명</th><tr></thead><tbody>";
						
						$(data).each(function(){
							output += "<tr><td>" + this.id + "</td>"
									+ "    <td>" + this.name+ "</td>"
									+ "    <td>" + this.price+ "</td>"
									+ "    <td>" + this.description+ "</td></tr>";
						}) // each end
						output += "</tbody></table>";
						$("p").html(output);
					} else {
						$("p").html("데이터가 존재하지 않습니다.");
					}
				}, // success end
				
				error : function(){ // 요청 실패 시 수행
					$("p").html("<div>로드 실패</div>");
				}, // error end
				
				complete : function(){ // 요청 성공 유뮤 관계 없이 항상 수행
					$("body").append("<div style='color:blue'>ajax 완료</div>");
				} // complete end
				
			}) // ajax end
		}); // click end
	})
</script>
</head>
<body>
	<div class="container">
		<button class="btn btn-info">JSON 형식으로 데이터 가져옵니다.</button>
		<p></p>
	</div>
</body>
</html>