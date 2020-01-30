<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>table.jsp</title>
<style>
table {
	border-collapse: collapse;
	border-spacing: 0px;
}
td {
	border: 1px solid black;
	width: 200px;
}
</style>
<script>
	window.addEventListener("load", function() {
/*		//tr 태그에 더블클릭 이벤트 지정 . 선택한 행을 오른쪽으로 이동. 더블클릭으로 추가된 후에 이동한 거에 이벤트를 걸어야 한다.
		var trs = document.querySelectorAll("#tbl1 tr");
		var tblBody = document.querySelectorAll("#tbl2 tbody");//tbody는 꼭 적어야됨(안써도 자동구성됨)
		for(i=0; i<trs.length; i++) {
			trs[i].addEventListener("dblclick",function(){				
				tblBody[0].appendChild(this);
				//이벤트 지정(두번째 테이블에서 1번테이블로 이동할수 있도록 이벤트를 수정). 이벤트제거하고 더블클릭 이벤트 다시 지정
				tblBody[0].removeEventListener
			})
		}
*/
	//왼쪽 테이블 클릭 이벤트
	tbl1.addEventListener("dblclick", function(e){
		var src = e.target.parentNode;
		console.log(e.target.parentNode)
		if(src.tagName =="TR"){
			console.log(src)
			var trs = document.querySelectorAll("#tbl1 tr");
			var tblBody = document.querySelectorAll("#tbl2 tbody");
			tblBody.appendChild(tbl);
			tblBody.removeEventListener
		}
	})

	})
</script>
</head>
<body>
	<table id="tbl1">
		<caption>수강과목</caption>
		<tr>
			<td>1</td>
			<td>자바</td>
		</tr>
		<tr>
			<td>2</td>
			<td>JSP</td>
		</tr>
		<tr>
			<td>3</td>
			<td>SPRING</td>
		</tr>
	</table>
	<table id="tbl2">
		<caption>선택과목</caption>
		<tbody>
		
		</tbody>
	</table>
</body>
</html>