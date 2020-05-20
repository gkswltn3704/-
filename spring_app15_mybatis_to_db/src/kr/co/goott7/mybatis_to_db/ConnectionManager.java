package kr.co.goott7.mybatis_to_db;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ConnectionManager {
	// sqlSession <===> Connection
	
	static SqlSessionFactory factory;
	
	// static{} : ConnectionManager가 메모리에 로딩될 때 같이 실행되는 부분
	//			:  new 하기 전에 실행되는 블록
	
	static {
		try {
			Reader r = 
					Resources.getResourceAsReader("resource/SqlMapConfig.xml");
			
			SqlSessionFactoryBuilder bulider = new SqlSessionFactoryBuilder();
			
			factory = bulider.build(r);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}	//static() end
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
	
	
}
