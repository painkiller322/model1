<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbconnect.jsp" %>
<%
	stmt = myConn.createStatement();

	request.setCharacterEncoding("euc-kr");
	int c_no = Integer.parseInt(request.getParameter("c_no"));

	mySQL = "delete board " +
            " where no =" + c_no ;

    stmt.executeQuery(mySQL);

	stmt.close();   
	myConn.close(); 
%>

<script>
	alert("�����Ǿ����ϴ�.");
	location.href="list.jsp";
</script>

