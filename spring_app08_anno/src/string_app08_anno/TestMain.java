package string_app08_anno;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("app.xml");			//app.xml 파일을 불러온다.		
		
		Monitor mt = context.getBean("sm", Monitor.class);				//sm으로 불러온다.
		mt.showMonitor();												//showMonitor를 실행.
	}
}
