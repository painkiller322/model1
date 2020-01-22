package co.yedam.app.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class DAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	DataSource ds; //컨넥션 POOL 사용을 위한 데이터연결 생성 객체
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.111.132:1521:ORCL";
	private String user = "hr";
	private String password = "hr";//context.xml에서 작성함

	
	   public DAO() {
	      try {
	         Class.forName(driver);
	         conn = DriverManager.getConnection(url, user, password);
	      }catch(ClassNotFoundException | SQLException e) {
	         e.printStackTrace();
	      }
//	      try {
//	    	 Context initContext = new InitialContext();
//	         Context envContext  = (Context)initContext.lookup("java:/comp/env");
//	         ds = (DataSource)envContext.lookup("jdbc/myoracle");
//	         conn = ds.getConnection();
//	      } catch (NamingException | SQLException e) {
//	         e.printStackTrace();
//	      }
	      
	   }
		
		
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
