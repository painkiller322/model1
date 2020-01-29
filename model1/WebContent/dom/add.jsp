<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
<style>
	.back{background-color: cyan;}
	.back:hover{background-color: red;}
</style>
<script>
	//태그추가
	window.addEventListener("load",function(){
		btn.addEventListener("click", function(){
			//div에 input태그 추가
			var newInput = document.createElement("input");
			//태그의 속성지정
			//1.value를 "홍길동"
			newInput.value="홍길동";
			//클래스 지정
			newInput.classList.add('back');//<input class="back">와 같다. 각각 스타일지정보다 클래스 추가가 낫다.
			//2.backgroundColor를 yellow로
/*			newInput.style.backgroundColor="yellow"
			//3.event(mouseover시 배경색을 blue로)
			newInput.addEventListener("mouseover", function(){
				newInput.style.backgroundColor="blue";
			})
*/			
			//화면 출력
			result.appendChild(newInput);
		})
	});
	
</script>
</head>
<body>
	<button type="button" id="btn">추가</button>
	<div id="result"></div>
</body>
</html>