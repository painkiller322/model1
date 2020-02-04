<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> <!-- jquery할때 꼭 링크 걸고 시작하기 -->
<script>
$(function(){	//ready 이벤트 == window.load
	$.ajax("./server/getName.jsp",
			{async : true	//$.ajax("페이지요청", {옵션})후 성공done 실패fail 옵션always 적기 async:false는 비동기안함(동기식:첫번째를 끝내야 다음실행)
			, beforeSend : function(){result.innerHTML = "로딩중";}
			, cache : false
			, data : $("#frm").serialize() //data파라미터 넘겨주기
			, dataType : "json"	//html이 기본
			})
	.done(function(data){result.innerHTML = data.name;})
	.fail(function(){})
	.always(function(){});
	console.log("ajax end");
})

		
</script>
</head>
<body>
	<div id="result"></div>
	<form id="frm" name="frm">
		<input name="no" value="">
		<input name="name" value="">
	</form>
</body>
</html>