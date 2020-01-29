<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>changeStyle.jsp</title>
<script>
	window.addEventListener("load",init);
	function init(){
		//btn.addEventListener("click", function(){
		//	//div태그를 숨기기: display속성을 none으로
		//	result.style.display="none";
		//})
		btn.addEventListener("mouseover", function(){
			//div태그를 숨기기: display속성을 none으로
			result.style.display="none";
		})
		btn.addEventListener("mouseout", function(){
			//div태그를 보이게: display속성을 ""으로
			result.style.display="";
		})
		img1.addEventListener("error", function(){
			//이미지의 src 속성을 바꾸기
			img1.src="../images/button.png";
		})
	}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img src="../images/logo1.jpg" id="img1" onerror="this.src='../images/button.png'">
</body>
</html>