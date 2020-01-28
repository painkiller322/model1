<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>builtinObject.jsp</title>
<script>
	window.onload = init;//페이지를 읽고나면 실행해라
	
	function init(){
		let btn = document.getElementById("btnCheck");
		
		//btn.onclick = function(){};
		btn.addEventListener("click", function(){
			//document.getElementById("result").innerHTML = "이벤트 발생";
			
			//입력값 길이 출력
			//해당 태그찾아 입력값 길이 출력하기
			var txtBigo = document.getElementById("bigo");
			var divResult = document.getElementById("result");
			divResult.innerHTML = txtBigo.value.length;
			//bigo란에 'http://yedam/model1'의 경로찾기
			divResult.innerHTML += "<br> 마지막경로 / 위치 : " + txtBigo.value.lastIndexOf("/");
			divResult.innerHTML += "<br> 마지막경로명 : " + txtBigo.value.substr(txtBigo.value.lastIndexOf("/")+1);
			//split 사용. 키워드가 '모델,객체,스트링'일때 문자열을 특정구분기호로 잘라서 배열
			var arr = txtBigo.value.split(",");
			divResult.innerHTML += "<br> 키워드 개수 : " + arr.length;
			//search, pattern 정규표현식 사용(특정 문자 포함시켜야 하는 식)
			divResult.innerHTML += "<br> 이메일 체크 : " + isEmail(txtBigo.value);
			//replace(찾는값,바꿀값)로 공백제거
			txtBigo.value = txtBigo.value.replace(/\s/g,"-");
		})	
	}
	
	//이메일 체크 정규식
	function isEmail(asValue) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return regExp.test(asValue);//형식에 맞는 경우 true 리턴
	}
</script>
</head>
<body>
<form>
	<input name="bigo" id="bigo">
	<button type="button" id="btnCheck">입력값 확인</button>
	<div id="result">결과 확인</div>
</form>

</body>
</html>