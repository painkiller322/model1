<%@ page import="java.sql.*"  %>
<%
	Connection myConn = null;     
	Statement stmt = null;	
	ResultSet myResultSet = null; 
	String mySQL = "";

	String dbdriver = "oracle.jdbc.OracleDriver";    
	String dburl = "jdbc:oracle:thin:@192.168.111.132:1521:ORCL";
	String user = "hr";
	String passwd = "hr";

	try {
			Class.forName(dbdriver);
			myConn =  DriverManager.getConnection (dburl, user, passwd);
			stmt = myConn.createStatement();	
			System.err.print(" Seccess Connect ");
	} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
	}
%>