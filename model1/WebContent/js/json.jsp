<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
<script>
	//json객체 선언 {필드명:값}
	let boardDTO = {no:1, poster:"홍길동", subject:"첫번째글"}
	
	//스트링배열 [값]
	let strArr = ["키위","포도","바나나"];
	
	//객체배열[값 or {객체}]
	let boardArr = [{no:1, poster:"홍길동", subject:"첫번째글"},
					{no:2, poster:"김길동", subject:"두번째글"},
					{no:3, poster:"나기자", subject:"세번째글"}
					];
	
	//boardDTO의 작성자 출력
	document.write(boardDTO.poster + "<br>");
	//strArr의 두번째 과일 출력
	document.write(strArr[1] + "<br>");
	//boardArr의 세번째 게시글의 제목 출력
	document.write(boardArr[2].subject + "<br>");
</script>
</head>
<body>
	
</body>
</html>