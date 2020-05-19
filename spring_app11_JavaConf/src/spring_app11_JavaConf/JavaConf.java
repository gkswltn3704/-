package spring_app11_JavaConf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// xml을 통한 스프링컨테이너 설정과 같이 자바 객체를 통해 스프링 bean관리를 할 수 있음
@Configuration
public class JavaConf {
	
	@Bean
	public Sender sender() {
//		Sender sender = new Sender();
//		return sender;
		
		return new Sender();
	}
	
	
//	<bean id="sm" class="string_app08_anno.SystemMonitor">
//		<property name="sender" ref="se"></property> 
//	</bean>
	
	@Bean(name = "sm")
	public SystemMonitor systemmoniotr() {
		SystemMonitor sm = new SystemMonitor();
		sm.setSender(sender());
		return sm;
		
	}
	
	
}
