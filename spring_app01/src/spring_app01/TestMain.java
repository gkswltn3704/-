package spring_app01;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class TestMain {
	//홍길동 님 안녕하세요 - 출력해보세요
	
	public static void main(String[] args) {
		
//		HelloKr hk = new HelloKr();
//		hk.sayHello("홍길동");
//		
//		HelloUS hu = new HelloUS();
//		hu.sayHello("JOHN");
		
//		Hello h = new HelloKr();
//		Hello h = new HelloUS();
//		h.sayHello("홍길동");
		
		
		
		// 위처럼 구동하도록 xml 파일 읽어들이기
		// : 스프링 컨테이너를 이용하여 읽어들이기
		
		BeanFactory factory = 
				new XmlBeanFactory(new FileSystemResource("src/app.xml"));
		
		Object obj = factory.getBean("h");		// xml에 있는 bean의 id로 찾아오기
		
		
		Hello hk = (Hello)obj;				// 캐스팅하고잇다.
		
		hk.sayHello("홍길동");
		
	}
	
}
