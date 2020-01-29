<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework2_array.jsp</title>
<script>
	let txtArr = [];
	window.onload = function(){
		btnAdd.addEventListener("click",funcAdd)
		btnDelete.addEventListener("click",funcDelete)
		btnSearch.addEventListener("click",funcSearch)
	}
	function funcAdd(){
		//배열에 추가하고 배열을 div에 출력
		let inputArr = document.getElementsByTagName("input");
		for (i=0; i<inputArr.length; i++){
			txtArr.push(inputArr[i].value);
		}
		document.getElementById("result").innerHTML = txtArr.join(", "); 
	}
	function funcDelete(){
		//배열에서 삭제하고 배열을 div에 출력(js-array method의 delete 활용)
		delete txtArr.value;
		document.getElementById("result").innerHTML = txtArr.join(", "); 
	}	
	function funcSearch(){
		//배열에서 검색해서 검색위치를 div출력
		
	}		
</script>
</head>
<body>
<input type="text" id="txtFruit">
<button type="button" id="btnAdd">추가</button>
<button type="button" id="btnDelete">삭제</button>
<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
</body>
</html>