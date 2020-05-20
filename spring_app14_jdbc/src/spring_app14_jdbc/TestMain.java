package spring_app14_jdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		
		ApplicationContext context =
				new GenericXmlApplicationContext("app.xml");
		
		DAO d = context.getBean("dao", DAO.class);
		
		//전체 조회
//		List<EmpDTO> list = d.selectAll();
//		for(EmpDTO dto : list) {
//			System.out.println("사원번호 : "+dto.getEmpno() + "\t" +
//								"사원이름 : "+ dto.getEname()+ "\t" +
//								"월급 : "+dto.getSal()+ "\t" +
//								"부서번호 : "+dto.getDeptno()
//								);
//		}
		
		System.out.println("=============================");
		
		//개별 조회
		
//		EmpDTO dto = d.selectOne(7521);
//		System.out.println(dto.getEname());
		
		
		System.out.println("=============================");
		
		EmpDTO dto2 = new EmpDTO(1111, "jisu", 2222, 90);
		d.insertOne(dto2);
		
	}
}
