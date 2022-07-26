<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> CSV 파일을 GET 방식으로 로드 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="../../js/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("button").click(function(){
			
			$.get("data.csv", function(input_data){
				var input_arr = input_data.split("\n");
				var output = "<table class='table table-border'>";
				output += "<tr><th>이름</th><th>나이</th><th>지역</th></tr>";
				
				for(var i = 0; i < input_arr.length; i++) {
					var result = input_arr[i].split(",");
					
					output += "<tr>"
					
					for(var j = 0; j < result.length; j++) {
						output += "<td>"
						output += result[j].trim() + "<br>";
						output += "</td>"
					} // for j end
					
					output += "</tr>"
				} // for i end
				
				output += "</table>";
				
				$("p").html(output);
			}); // $.get() end
		});  // click end 
	})
</script>
</head>
<body>
	<div class="container">
		<button class="btn btn-info">CSV 형식으로 데이터 가져옵니다.</button>
		<p></p>
	</div>
</body>
</html>