<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbconnect.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");

	mySQL = "insert into board " + 
           " (no, poster, subject, contents, lastpost, views) " +
           " values ( ( select max(no)+1 from board ),?,?,?,sysdate,1)";
	
	PreparedStatement pstmt = myConn.prepareStatement(mySQL);	
	pstmt.setString(1,request.getParameter("s_poster"));//1번 자리에 이 값을 넣어라
	pstmt.setString(2,request.getParameter("s_subject"));
	pstmt.setString(3,request.getParameter("s_contents")); 
    pstmt.executeUpdate();//등록,수정,삭제

	pstmt.close();   
    myConn.close(); 
%>
<script>
	alert("저장되었습니다.");
	location.href="list.jsp";
</script>
