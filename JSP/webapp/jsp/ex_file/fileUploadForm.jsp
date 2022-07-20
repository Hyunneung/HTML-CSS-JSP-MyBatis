<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>파일 업로드</title>
<meta name="viewport" content="width=device-width, initial-scale=1">  <!-- 반응형 웹디자인 -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<form action="fileUpload.jsp" method="post" enctype="multipart/form-data"> <!-- 파일 업로드 -->
			<p class="h4 mb-4 text-center">파일 업로드 폼</p>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text mb-1">작성자</span>
				</div>
				<input type="text" class="form-control" name="name">
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">제목</span>
				</div>
				<input type="text" class="form-control" name="subject">
			</div>
			
			<div class="form-group">
				<input type="file" class="form-control-file border" name="fileName">
			</div>
			
			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
		</form>
	</div>
</body>
</html>