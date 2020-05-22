package kr.co.goott7.mybatis_to_db;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		ApplicationContext context = 
				new GenericXmlApplicationContext("app.xml");
		
		DAO d = context.getBean("dao", DAO.class);
		
		//전체
		
//		List<EmpDTO> list = (List<EmpDTO>) d.selectAll();
//		
//		for(EmpDTO dto : list) {
//			System.out.println(dto.getEmpno() + "\t" + dto.getEname()
//						+ "\t" + dto.getSal() + "\t" + dto.getDeptno());
//		}
		
		System.out.println("------------------------------------------");
		
		//개별
		
//		EmpDTO dto1 = d.selectOne(7566);
//		System.out.println(dto1.getEmpno() + "\t" + dto1.getEname()
//		+ "\t" + dto1.getSal() + "\t" + dto1.getDeptno());
		
		System.out.println("------------------------------------------");
		
		//삽입
		
//		EmpDTO dto2 = new EmpDTO(2345, "han", 700, 20);
//		d.insertOne(dto2);
		
		System.out.println("------------------------------------------");
		
		//수정
//		EmpDTO dto3 = new EmpDTO(1234, "han", 9000, 11);
		
		System.out.println("------------------------------------------");
		
		//삭제
//		d.deleteOne(2345);
	}
}
