package spring_app06_maven;

import java.sql.Connection;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class TestMain {
	public static void main(String[] args) {
//		OracleDAO dao1 = new OracleDAO();
//		
//		MysqlDAO dao2 = new MysqlDAO();
		
//		CommonDAO dao1 = new OracleDAO();
//		dao1.connect();
//		
//		CommonDAO dao2 = new MysqlDAO();
//		Connection conn = dao2.connect();			//db 접속 확인.
		
		BeanFactory factory = 
				new  XmlBeanFactory(new FileSystemResource("src/connection.xml"));
		
		CommonDAO connOracle = factory.getBean("oracle", CommonDAO.class);
		Connection conn1 = connOracle.connect();
		System.out.println("conn1 : "+ conn1);
		connOracle.seletAll();
		
		System.out.println("---------------------------------------------------");
		
		CommonDAO connMysql = factory.getBean("mysql", CommonDAO.class);
		Connection conn2 = connMysql.connect();
		System.out.println("conn2 : "+ conn2);
		connMysql.seletAll();
		
		
	}
}
