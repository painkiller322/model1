<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
window.onload = function(){
	var btn = document.getElementById("btnCheck");
	btn.addEventListener("click", inputCheck);
}

function inputCheck(){
//모든 항목 필수입력 체크
var txtArr = document.querySelectorAll("textarea,[type=text]"); 
for(i=0;i<txtArr.length;i++){
	if(txtArr[i].value == "") {
		alert(txtArr[i].id +"가 입력되지 않았습니다.");
		return;
	}
}
//1.이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력
//2.이메일은 "@"와 "."을 포함하는지 정규표준식을 이용하여 체크하여 true/false 결과 출력
//3.등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력
//4.홈페이지는 (앞글자가)http로 시작하는지 체크하여 결과 출력 T/F 결과 출력
//5.성적은 소수점 2자리까지만 입력하였는지 정규표준식으로 체크하고 아니라면 둘째자리까지만 변경하여 div에 출력(넘버,메소드,스트링 활용)
//비고란의  \n(엔터키) 를 <br>태그로 변환하여 출력 (replace함수 활용), 브라우저-F12-콘솔에서 'result.innerHTML = mbBigo.value'입력하여 확인하기
}
</script>
</head>
<body>
<form>
	이름 <input type="text" id="mbName" value="test123"/><br>
	이메일 <input type="text" id="mbEmail" value="t@t"/><br>
	등록일자 <input type="text" id="mbDate" value="2014/12/12"/><br>
	홈페이지 <input type="text" id="mbHomepage" value="yedam.ac"/><br>
	성적 <input type="text" id="mbScore" value="67.123"/><br>
	비고 <textarea id="mbBigo"></textarea>
	<button type="button" id="btnCheck">입력확인</button>
</form>
<div id="result">
</div>
</body>
</html>