package spring_app09_anno;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMain {
	
	public static void main(String[] args) {
		
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("app.xml");
		
		Police chl = context.getBean("p1", Police.class);
		chl.attack("도둑님");
		
		System.out.println("-----------------------------------------------");
		
		
		
	}
	
}
