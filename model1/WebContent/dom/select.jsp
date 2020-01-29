<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select.jsp</title>
<script type="text/javascript">
	window.addEventListener("load", function() {

		//버튼에 이벤트 추가(단건)
		btnR.addEventListener("click", function() {
			if (subject.selectedIndex > -1) {
				//선택항목 오른쪽에 추가
				var opt = document.createElement("option");
				opt.text = subject.options[subject.selectedIndex].text;
				choose.add(opt);
				//선택항목 삭제
				subject.remove(subject.selectedIndex);
			}
		})
		//선택항목을 왼쪽으로
		btnL.addEventListener("click", function() {
			if (choose.selectedIndex > -1) {
				var opt = document.createElement("option");
				opt.text = choose.options[choose.selectedIndex].text;
				subject.add(opt);
				choose.remove(choose.selectedIndex);
			}
		})

		//btnAll 전체이동
		btnAll.addEventListener("click", function() {
			var len = subject.length;
			for (i = len - 1; i >= 0; i--) {
				//선택항목 오른쪽에 추가
				var opt = document.createElement("option");
				opt.text = subject.options[i].text;
				choose.add(opt);
				//선택항목 삭제
				subject.remove(i);
			}
		})
		btnAl.addEventListener("click", function() {
			var len = choose.length;
			for (i = len - 1; i >= 0; i--) {
				//선택항목 오른쪽에 추가
				var opt = document.createElement("option");
				opt.text = choose.options[i].text;
				subject.add(opt);
				//선택항목 삭제
				choose.remove(i);
			}
		})

		//다건 처리
		//오른쪽으로
		btnR.addEventListener("click", function() {
			if (subject.selectedIndex > -1) {
				for (i = 0; i < subject.length; i++) {
					if (subject.options[i].selected) {
						//선택항목 오른쪽에 추가
						var opt = document.createElement("option");
						opt.text = subject.options[i].text;
						choose.add(opt);
						//선택항목 삭제
						subject.remove(subject.selectedIndex);
					}
				}
			}
		})
		//왼쪽으로
		btnL.addEventListener("click", function() {
			if (choose.selectedIndex > -1) {
				for (i = 0; i < choose.length; i++) {
					if (choose.options[i].selected) {
						//선택항목 오른쪽에 추가
						var opt = document.createElement("option");
						opt.text = choose.options[i].text;
						subject.add(opt);
						//선택항목 삭제
						choose.remove(choose.selectedIndex);
					}
				}
			}
		})

	})
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">SPRING
	</select>

	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnL">◀</button>
	<button type="button" id="btnAll">전체▶</button>
	<button type="button" id="btnAl">전체◀</button>
	<select id="choose" multiple="multiple" size="5"></select>
</body>
</html>