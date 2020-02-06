<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<button type="button" id="btn">크기변경</button>
	<button type="button" id="btn2">크기변경2</button>
	
	<img src="../images/logo.jpg" id="imgSample">
<script>
	//bind함수 이용
/*	$("#btn").bind("click", function(){
		//$("#imgSample").css("width", "100px"); //방법1
		$("#imgSample").width("100px"); //방법2
	})
*/
	
	//click함수 이용
/* 	$("#btn").click(function(){
		//var w = $("#imgSample").width(); //이미지 불러오기 방법1
		var w = $("#imgSample").css("width"); //이미지 불러오기 방법2
		//$("#imgSample").width("100px"); //크기 100px로 변경하기
		$("#imgSample").width(parseInt(w) - 100);//px안적어도 됨
	})
 */
 
 	//on함수 이용
 	$(document).on("click", "#btn", function(){
 		$("#imgSample").width(500);
 	})
 	
 	$("#btn2").on("click", function(){
 		$("#btn").click();
 	})
</script>
</body>
</html>