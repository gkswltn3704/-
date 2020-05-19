package spring_app03;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class TestMain {
	public static void main(String[] args) {
		
		BeanFactory factory = 
				new XmlBeanFactory(new FileSystemResource("src/app.xml")); 
		
//		Object obj = factory.getBean("d");
//		Object obj2 = factory.getBean("l");
//		
//		Printer p = (Printer)obj;
//		Printer p2 = (Printer)obj2;
//		
//		p.print("출력되었습니다.");
//		p2.print("출력되었습니다.");
		
		// 형변환을 줄여서 사용하기
		
		Printer p = factory.getBean("d", Printer.class);
		p.print("wow 놀라운 프로그래밍 세계");
		
		
	}	
}
