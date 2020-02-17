<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.service.impl.BoardDAO"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*"  %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html> 
<head> <title>게시판</title> </head>

<body>
<my:page></my:page>
<my:boardType></my:boardType>

<table width="80%" border=0 > 
     <tr><td align="center" > JDBC 게시판 </td></tr>
</table><br>

<table width="80%" border=1 cellspacing=0 >
	<tr height=30 bgcolor="#FFFF99" >
	  <th>번호</th><th>제목</th><th>글쓴이</th><th>등록일</th><th>조회</th>
	</tr>
	
<c:forEach items="${list }" var="dto">
		<tr height=28 align=center>
			<td>${dto.getNo()}</td>
			<td><a href="view.jsp?c_no=${dto.getNo()}">${dto.getSubject()}</a></td>
			<td>${dto.getPoster()}</td>
			<td>${dto.getLastpost()}</td>
			<td>${dto.getViews()}</td>
		</tr>
</c:forEach>

<c:if test="${empty list }">
<tr><td colspan="5">no data</td></tr>
</c:if>

</table>



<table width="80%" border=0 >
	<tr><td align="right"><a href="/boardCreateForm"> 글쓰기</a> </td> </tr>
</table>

</body>
</html>