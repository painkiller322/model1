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
	if(mbName.value.length < 5){
		alert(mbName.id + "가 5글자 미만입니다.");
		return;
	}else{
		result.innerHTML = mbName.value.toUpperCase();
	}
//2.이메일은 "@"와 "."을 포함하는지 정규표준식을 이용하여 체크하여 true/false 결과 출력
	result.innerHTML += "<br> 이메일 체크 : " + isEmail(mbEmail.value);
//3.등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력
	result.innerHTML += "<br> 날짜형식체크: " + isDatetime(mbDate.value);
	//if(mbDate.value.substr(2,2)<19 && mbDate.value.substr(2,2)>15){
	//	result.innerHTML = "<br> 15~19년 사이 ";
	//}
//4.홈페이지는 (앞글자가)http로 시작하는지 체크하여 결과 출력 T/F 결과 출력
	if(mbHomepage.value.substr(0,4) == "http") {
		result.innerHTML += "<br> 홈페이지가 http로 시작하는지: true";
	}
	else {
		result.innerHTML += "<br> 홈페이지가 http로 시작하는지: false";
	}
//5.성적은 소수점 2자리까지만 입력하였는지 정규표준식으로 체크하고 아니라면 둘째자리까지만 변경하여 div에 출력(넘버,메소드,스트링 활용)
//6.비고란의  \n(엔터키) 를 <br>태그로 변환하여 출력 (replace함수 활용), 브라우저-F12-콘솔에서 'result.innerHTML = mbBigo.value'입력하여 확인하기
	mbBigo.value.replace("\n", "<br>");
}
//2.의 이메일 체크 정규식
function isEmail(asValue) {
var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
return regExp.test(asValue);//형식에 맞는 경우 true 리턴
}
//3.날짜 형식 체크 정규식
function isDatetime(d)
{
    var re = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
    return re.test(d);
}
</script>
</head>
<body>
<form>
	이름 <input type="text" id="mbName" value="testa"/><br>
	이메일 <input type="text" id="mbEmail" value="t@t.com"/><br>
	등록일자 <input type="text" id="mbDate" value="2014-12-12"/><br>
	홈페이지 <input type="text" id="mbHomepage" value="http://yedam.ac"/><br>
	성적 <input type="text" id="mbScore" value="67.123"/><br>
	비고 <textarea id="mbBigo"></textarea>
	<button type="button" id="btnCheck">입력확인</button>
</form>
<div id="result">
</div>
</body>
</html>