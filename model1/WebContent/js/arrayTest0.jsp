<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrayTest0.jsp</title>
<style>
	img{width: 200px;}
</style>
<script>
	window.onload = function(){
		//모든 이미지의 alt속성만 div에 출력, 배열로 넘어감
		var imgArr = document.getElementsByTagName("img");
		console.log(imgArr);
		//var i;
		var text = "";
		for(i=0; i<imgArr.length; i++){
			text += imgArr[i].alt + "<br>";
		}
		document.getElementById("result").innerHTML = text;
	}
</script>
</head>
<body>
<img src="../images/logo.jpg" alt="로고">
<img src="../images/nextbutton.png" alt="다음버튼">
<img src="../images/prevbutton.png" alt="이전버튼">
<div id="result"></div>
</body>
</html>