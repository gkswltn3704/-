package spring_app10_annoEx;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;

public class TestMain {
	public static void main(String[] args) {
		
//		Phone phone = new SmartPhone();
//		phone.call("01011112222");
//		phone.sendMsg("안녕");
		
		
//		BeanFactory factory = 
//				new XmlBeanFactory(new ClassPathResource("app.xml"));
//		
//		PhoneOS phone = factory.getBean("os", PhoneOS.class);
//		System.out.println(phone.name);

//		ApplicationContext context = 
//				new ClassPathXmlApplicationContext("app.xml");
		
		ApplicationContext context = 
				new AnnotationConfigApplicationContext(JavaConf.class);
		
		SmartPhone phone = context.getBean("p", SmartPhone.class);
		phone.call("01022223333");
		phone.showInfo();
		
		
		
		
	}
}
