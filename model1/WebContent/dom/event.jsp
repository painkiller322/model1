<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script>
	window.addEventListener("load",init);
	function init(){
		//이벤트 지정
		divItem.addEventListener("click", function(){alert('div');})
		btn.addEventListener("click", function(e){alert('btn');
		e.stopPropagation();})//전파중지
	}
</script>

</head>
<body>
	<div id="divItem">
		<button type="button" id="btn">버튼</button>
	</div>
</body>
</html>