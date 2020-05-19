package spring_app11_JavaConf;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		
		// 자바 설정으로 읽어들이기
		BeanFactory factory = 
				new AnnotationConfigApplicationContext(JavaConf.class);
		
		ApplicationContext context = 										//인터페이스이긴 때문에 뭘로해도 상관 x
				new AnnotationConfigApplicationContext(JavaConf.class);		// 대신 이 부분이 중요!			
		
		Monitor mt = factory.getBean("sm", Monitor.class);				//sm으로 불러온다.
		mt.showMonitor();												//showMonitor를 실행.
	}
}
