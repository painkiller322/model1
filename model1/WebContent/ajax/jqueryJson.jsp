<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jqueryJson.jsp</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	window.addEventListener("load", function() {
		//전체조회 이벤트
		btnList.addEventListener("click", function() {
			var url = "../ajaxBoardList.do"
			var data = null;
			var callback = function(boardList) {
				for (i = 0; i < boardList.length; i++) {
					result.innerHTML += boardList[i].poster + "<br>"
				}
			}
			$.getJSON(url, data, callback);
		})

		//번호로 조회 이벤트
		btnOne.addEventListener("click", function() {
			var url = "../ajaxBoardOne.do"
			var data = {no : no.value}
			var callback = function(board, status, xhr) {
				console.log(board);
				console.log(status);
				console.log(xhr);
				result.innerHTML += board.poster +","+ board.subject + "<br>"
			}
			$.getJSON(url, data, callback);
		})
	})
</script>
</head>
<body>
	<input type="text" id="no" />
	<button type="button" id="btnOne">번호로 조회</button>
	<button type="button" id="btnList">전체 조회</button>
	<div id="result"></div>
</body>
</html>