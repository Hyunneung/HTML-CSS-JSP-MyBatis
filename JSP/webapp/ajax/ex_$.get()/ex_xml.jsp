<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> XML 파일을 GET 방식으로 로드 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="../../js/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("button").click(function(){
			$.get("item.xml", function(input_data){
				$('table').remove(); // 테이블 있으면 계속 추가되지 않게 제거

				var output = "";
				output += "<table class='table table-border'>"
				          + "		<thead><tr><th>번호</th><th>상품명</th><th>설명</th><th>가격</th></tr></thead>"
				          + "		<tbody>";
				
				$(input_data).find('item').each(function(){
					
					output += "<tr><td>" + $(this).attr("id") + "</td>" // item 태그에서 id 속성값 구하기
						    + "	   <td>" + $(this).attr("name") + "</td>" // item 태그에서 name 속성값 구하기
						    + "	   <td>" + $(this).find("price").text() + "</td>" // item 태그에서 price 태그 값 구하기
						    + "	   <td>" + $(this).find("description").text() + "</td>" // item 태그에서 description 태그 값 구하기 
						    + "</tr>";
				}) // each end
				
				output += "</tbody></table>";
				
				$("p").html(output);
			}); // get end
		}); // button.click end
	})
</script>
</head>
<body>
	<div class="container">
		<button class="btn btn-info">XML 형식으로 데이터 가져옵니다.</button>
		<p></p>
	</div>
</body>
</html>