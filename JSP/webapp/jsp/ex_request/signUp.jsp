<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> requestTest form </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
	.container{width:70%; margin-top:30px; vertical-align: middle}
	h3{text-align:center}
</style>
</head>
<body>
	<div class="container">
		<h3> Request 예제입니다. </h3>
		<form action="requestTest1.jsp" method="get">
			<table class="table">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label>
							<input type="radio" name="gender" value="male">남자
						</label>
						<label>
							<input type="radio" name="gender" value="female">여자
						</label>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<label>
							<input type="checkbox" name="hobby" value="독서">독서
						</label>
						<label>
							<input type="checkbox" name="hobby" value="게임">게임
						</label>
						<label>
							<input type="checkbox" name="hobby" value="TV시청">TV시청
						</label>
						<label>
							<input type="checkbox" name="hobby" value="축구">축구
						</label>
						<label>
							<input type="checkbox" name="hobby" value="기타">기타
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">전송</button></td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>