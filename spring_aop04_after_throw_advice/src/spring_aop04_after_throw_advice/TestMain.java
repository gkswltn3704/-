package spring_aop04_after_throw_advice;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		
		ApplicationContext ctx = 
				new GenericXmlApplicationContext("app.xml");
		
		Message msg = ctx.getBean("proxyBean", Message.class);
		
		msg.prtMsg();
		
		try {
			msg.printThrowMessage();						//try~catch문으로 던진 오류를 잡아준다.
		} catch (IllegalArgumentException e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			System.out.println("catch");
		}
		
		
	}
}
