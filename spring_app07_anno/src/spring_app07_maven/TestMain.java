package spring_app07_maven;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.FileSystemResource;

public class TestMain {
	public static void main(String[] args) {
		// app.xml을 통해서 출력해보세요
		// 현재 시각 : ~~시 ~~분
		// msg    : 스프링 재밌다
		
//		NowTime nt = new NowTime();
//		System.out.println(nt.getTime());
		
//		BeanFactory factory = 
//				new XmlBeanFactory(new FileSystemResource("src/app.xml"));
		
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("app.xml");
		
		GreatingImple gr = context.getBean("gi", GreatingImple.class);
		
		gr.printMsg();
		
		/*
		 *  의존 자동 설정
		 *  @AutoWired : 스프링전용 - 연결 : 타입에 맞춰서 연결
		 *  @Injection : 자바에서 지원 - 연결 : 타입에 맞춰서 연결
		 *  @Resource  : 자바에서 지원 - 연결 : 이름으로 연결
		 * 
		 */
		
		
	}
}
