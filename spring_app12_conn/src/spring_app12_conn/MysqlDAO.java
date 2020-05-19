package spring_app12_conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MysqlDAO implements DAO {
	
	final String driver = "com.mysql.jdbc.Driver";
	final String url = "jdbc:mysql://localhost:3306/goott7?useSSL=false";
	final String user = "scott";
	final String password = "tiger";
	
	Connection conn = null;
	StringBuffer sb = new StringBuffer();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void init() {
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("conn : "+ conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
	}	//init() end
	
	public void close() {
		try {
			conn.close();
			System.out.println("종료 메소드 호출");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	//cloas() end
	
	
	@Override
	public int selectCount() {
		
		sb.setLength(0);
		sb.append("select count(*) cnt ");
		sb.append("from dept ");
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			result = rs.getInt("cnt");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}	//selectCount() end
	
}
