package spring_app05_maven;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class TestMain {
	
	public static void main(String[] args) {
		/*
		 * StunGun sg = new StunGun();
		 * 
		 * Police pl = new Police(sg, 150);
		 * 
		 * pl.attack("도둑님"); System.out.println(pl.hp);
		 */
		
		//runtime 시에 xml에 있는 정보를 불어와서 사용 => 의존성 주입
		BeanFactory factory = 
				new XmlBeanFactory(new FileSystemResource("src/app.xml"));
		
		Police chl = factory.getBean("p", Police.class);
		chl.attack("도둑님");
		System.out.println(chl.hp);
		
		System.out.println("-----------------------------------------------");
		
		// 경찰 스나이퍼가 인질범을 총으로 공격하도록 해보세요
		// 출력 : 인질범을 숨을 멈추고 탕 쏜다
		// 		: 스나이퍼 hp - 98
		
		Sniper sniper = factory.getBean("sniper", Sniper.class);
		sniper.attack("인질범");
		System.out.println("스나이퍼의 hp - " + sniper.hp);
		
		
		
	}
	
}
