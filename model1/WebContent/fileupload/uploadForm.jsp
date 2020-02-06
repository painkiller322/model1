<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadForm.jsp</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="../FileUpload.do"><!-- 파일첨부는 form method을 post로만 해야 한다. -->
		<input type="file" name="uploadfile">
		<input type="text" name="desc">
		<button>등록</button>
	</form>
</body>
</html>