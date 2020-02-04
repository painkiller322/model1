<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reqJson.jsp</title>
<script>
	window.addEventListener("load", function() {
		btn.addEventListener("click", loadDoc)
	})

	function loadDoc() {
		//1.XHR객체 생성
		var xhttp = new XMLHttpRequest();
		//2.readyState이벤트 생성, 콜백함수 만들기
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var res = xhttp.responseText; //받아온건 String값이다
				var obj = JSON.parse(res); //JSON으로 바꿈
				//텍스트 필드에 출력
				txtNo.value = obj.no;
				txtName.value = obj.name;
			}
		};
		xhttp.open("GET", "../GetJSON.do?", true);//(방식, url, async)
		xhttp.send();
	}
</script>
</head>
<body>
	<h3>AJAX JSON 연습</h3>
	이름검색(번호입력하면 이름나오게)
	<input id="txtNo">
	<input id="txtName">
	<button type="button" id="btn">요청</button>
</body>
</html>