<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>interval.jsp</title>
<script>
	//타이머 연습
	
	//반복실행할 함수 만들기
	function printTime(){
		result.innerHTML = (new Date()).getSeconds();
	}
	window.addEventListener("load",function(){
		window.setInterval(printTime, 1000);
		window.setInterval(showImage, 2000);
		//이미지 변경 타이머 지정(2초마다)
		//이미지 배열
		var imgs = ["../images/logo.jpg", "../images/prevbutton.png", "../images/nextbutton.png"];
		//과제: 2초마다 이미지가 변경되도록 작성(랜덤, 인덱스 증가)
		function showImage(){
			var imgNum = Math.round(Math.random()*2);
			console.log(imgNum)
			var objImg = document.getElementById("img");
			objImg.src = imgs[imgNum];
			}
	})
</script>
</head>
<body>
	<div id="result"></div>
	<img id="img" src="../images/logo.jpg">
</body>
</html>