<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework4_array.jsp</title></head>
<body>
<input type="text">
<input type="text">
<input type="text">
<input type="text">
<div id="result">1,홍길동,hong,2019/12/01</div>
<script>
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력 (split써서 구분하여 for문으로 배열값에 넣기)
	var inputArr = document.getElementsByTagName("input")
	//div의 내용을 배열로 변환(split함수 사용)
	var ss = result.innerHTML;
	console.log(ss)
	
	for(i=0; i<ss.length; i++){
		var dd = ss.split(",");
		document.getElementsByTagName("input")[i].value = dd[i];

	}
</script>
</body>
</html>